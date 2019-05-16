require.config({
    baseUrl: "js"
});

require(["common-js/p","common-js/c","common-js/areacode","common-js/country","common-js/tourcard","common-js/plugins/meDialog","common-js/tools/meValidator","common-js/plugins/mePage","common-js/p0","common-js/c0","common-js/province","common-js/meHeadTailCtl"], function(_p,_c,_areacode,_country,_tourcard,meDialog,meValidator,mePage,_p0,_c0,newprovince,meHeadTailCtl) {
    //加载样式
    //所有提示语的配置
    var _warningStatementList = {
        usernameIllegal:{
            en:'Please enter the correct username within 4-20 bytes',
            cn:'请输入正确的用户名'
        },
        basicInformation_usernameIllegal:{
            en:'Please enter the correct username within 4-20 bytes',
            cn:'请输入正确的用户名'
        },
        confirm:{
            en:'confirm',
            cn:'确认'
        },
        cancel:{
            en:'cancel',
            cn:'取消'
        },
        mobileIllegal:{
            en:"Please enter the correct phone number",
            cn:"请输入正确的手机号码"
        },
        postcodeIllegal:{
            en:"",
            cn:""
        },
        certRepeat:{
            en:"Please choose a new ID type.",
            cn:"证件类型不能重复，请重新选择"
        },
        emptyIDNo:{
            en:"Please enter the ID No.",
            cn:"证件号码不能为空"
        },
        idCardIllegal:{
            en:"You've entered an invalid ID No., please enter again",
            cn:"证件号码输入不正确，请重新输入"
        },
        addingSuccess:{
            en:"Add success",
            cn:"新增成功"
        },
        addingFailed:{
            en:"Add Failed, please try again later",
            cn:"新增失败，请再试一次~"
        },
        updateSuccess:{
            en:"Update success",
            cn:"更新成功"
        },
        updateFailed:{
            en:"Update Failed, please try again later",
            cn:"更新失败，请再试一次~"
        },
        addGuest:{
            en:"Add Guest",
            cn:"添加新旅客"
        },
        editGuest:{
            en:"Edit Guest",
            cn:"编辑旅客"
        },
        emptyDetailedAddress:{
            en:"Please enter the detailed address",
            cn:"请提供详细地址"
        },
        specialChar:{
            en:"Sorry, please do not enter special characters.",
            cn:"抱歉，请不要输入特殊字符"
        },
        emailIllegal:{
            en:"You’ve entered an invalid email, please enter again.",
            cn:"Email格式错误，请重新输入"
        },
        sureToSetDefaultTraveller:{
            en:"Sure to set as the default traveller?",
            cn:"确定设为首选旅客吗？"
        },
        sureToDeleteTraveller:{
            en:"Sure to delete this traveller?",
            cn:"确定删除该旅客吗？"
        },
        requestFailed:{
            en:"Request failed",
            cn:"请求失败"
        },
        operationFailed:{
            en:"Operation failed",
            cn:"操作失败"
        }


    };
    var warningStatementTools = {
        getWarningStatement:function(key){
            if(!key||!(key in _warningStatementList)){
                return '';
            }
            var info = _warningStatementList[key];
            if(_LANGUAGE=='en'){
                return info.en;
            }
            return info.cn;
        }
    }
    var jsonHelper = {
        toJson:function(obj){
            var result = "{";
            for(var objAtt in obj){
                result +="'" + objAtt +"':'"+String(obj[objAtt])+"',";
            }
            if( result.length>1){
                result = result.substr(0,result.length-1);
            }
            result += "}";
            return result;
        }
    };
    var _certificateCardTypeList = [{value:0,typeName:'身份证',typeNameEn:"Chinese ID"},
        {value:4,typeName:'护照',typeNameEn:"Passport"},
        {value:1,typeName:'军人证',typeNameEn:"Military ID"},
        {value:3,typeName:'港澳通行证',typeNameEn:"HKG/Macau Permit"},
        {value:2,typeName:'回乡证',typeNameEn:"Returing Chinese ID"},
        {value:5,typeName:'居留证',typeNameEn:"Returing Chinese ID"},
        {value:7,typeName:'台胞证',typeNameEn:"Taiwan Compatriot ID"},
        {value:6,typeName:'其他',typeNameEn:"Others"}];

    var tempCountry = new Array();

    for(var tc = 0; tc < _country.length; tc++){
        tempCountry[tc] = new CountryInfo(_country[tc]);
    }
    _country = tempCountry;

    var nowYear = new Date().getFullYear();
    var _yearList = new Array();
    for(var yl = nowYear; yl >= 1900; _yearList[nowYear-(yl)]=(''+yl--));
    var _monthList = ['01','02','03','04','05','06','07','08','09','10','11','12'];
    var _month28 = new Array(), _month29 = new Array(), _month30 = new Array(), _month31 = new Array();
    for(var m = 0; m < 28; m++){
        _month28[m] = _month29[m] = _month30[m] = _month31[m] = m+1+'';
    }
    _month29[28] = _month30[28] = _month31[28] = 29 + '';
    _month30[29] = _month31[29] = 30 + '';
    _month31[30] = 31 + '';

    var _tripPriceList = [{text: '150以下',value: 4,attach: 'tripPrice'},
        {text: '150-300元',value: 5,attach: 'tripPrice'},
        {text: '300-600元',value: 6,attach: 'tripPrice'},
        {text: '600元以上',value: 7,attach: 'tripPrice'}];

    var	_tripFrequencyList = [{text: '1年1-2次',value: 4,attach: 'tripFrequency'},
        {text: '1季度1次',value: 3,attach: 'tripFrequency'},
        {text: '1月至少1次',value: 2,attach: 'tripFrequency'}];

    var getStarMobileGlobal = function(mobile){
        if(!mobile||mobile.length==0)
            return "";
        if(mobile.length>6) {
            mobile=mobile.replace(mobile[3]+mobile[4]+mobile[5]+mobile[6],"****");
        }
        else{
            mobile = mobile.replace(mobile[mobile.length-1],"*");
        }
        return mobile;
    }
    var getStarCertGlobal = function(cert){
        if(!cert||cert.length==0)
            return "";
        if(cert.length>=4){
            return cert.substr(0,cert.length-3)+"****";
        }
        return "";
    }
    var getStarMailGlobal = function(mail){
        var result = "";
        var innerMail = String(mail);
        if(!mail||innerMail.length==0)
            return result;
        var i;
        for(i = 0; i<innerMail.length&&innerMail[i]!='@';i++);
        if(i>0&&i<=innerMail.length){
            for(var j = 0; j < i; j ++){
                if(j<= i/2){
                    result += "*";
                }else{
                    result += innerMail[j];
                }
            }
        }
        else{
            i = 1;
            result += "*";
        }
        result += innerMail.substring(i,innerMail.length);
        return result;
    };
    function AddressInfoBase(object){
        var self_aib = this;
        this.id = ko.observable(object&&object.id||'');
        this.addTime = ko.observable(object&&object.addTime||new Date('1970-01-01 00:00:00'));
        this.editorTitle = object && object.editorTitle || '编辑地址';
        this.username = ko.observable(object && object.username || '');
        this.isAdding = ko.observable(object && object.isAdding || false);
        this.isProvinceShow = ko.observable(object&&object.isProvinceShow ||false);
        this.isCityShow = ko.observable(object&&object.isCityShow ||false);
        this.province = ko.observable(object&&object.province ||{"ProID":0,"name":"选择省份","ProSort":0,"ProRemark":"直辖市"});
        this.city = ko.observable(object&&object.city ||{"CityID":0,"name":"选择城市","ProID":0,"CitySort":1});
        this.isPcWarning = ko.observable(false);
        this.pcWarning = ko.observable(object&&object.pcWarning||"请选择省市区");
        this.provinceList = _p;
        //新增的省市 Neisun
        //是否展示Area
        this.showArea = ko.observable(false);
        this.area = newprovince;
        this.isProvinceShowNew = ko.observable(object&&object.isProvinceShowNew ||true);
        this.isCityShowNew = ko.observable(object&&object.isCityShowNew ||false);
        this.isCountryShowNew = ko.observable(object&&object.isCountryShowNew ||false);
        //新版城市列表
        this.cities = ko.observable([]);
        //新版区县列表
        this.countries = ko.observable([]);
        //新版选中的省
        this.selectedProvince = ko.observable(object&&object.selectedProvince || "");
        //新版选中的市
        this.selectedCity = ko.observable(object&&object.selectedCity || "");
        //新版选中的区县
        this.selectedCountry = ko.observable(object&&object.selectedCountry || "");
        this.isUsernameWarning = ko.observable(false);
        this.usernameWarning = ko.observable(object&&object.usernameWarning||warningStatementTools.getWarningStatement("usernameIllegal"));
        this.province.subscribe(function(newValue){
            var cList = [];
            if(newValue.ProID!=0){
                for(var i = 0; i < _c.length; i++){
                    if(_c[i].ProID == newValue.ProID){
                        cList.push(_c[i]);
                    }
                }
            }
            if(cList.length>=1){
                self_aib.city(cList[0]);
            }
            self_aib.cityList(cList);
        });
        this.cityList = ko.observable([]);
        this.detailedAddress = ko.observable(object&&object.detailedAddress || '');
        this.isDetailedAddressWarning = ko.observable(false);
        this.detailedAddressWarning = ko.observable(object&&object.detailedAddressWarning||warningStatementTools.getWarningStatement("emptyDetailedAddress"));
        this.areaCode = ko.observable(object&&object.areaCode||{"acCode":"","acDsc":"中国大陆(+86)","acDscEn":"CN(+86)","language":1,"length":11,"regRule":"^1[0-9]{10}$|^86[0-9]{11}$"});
        this.areaCodeList = _areacode;
        this.isAreaCodeShow = ko.observable(object&&object.isAreaCodeShow ||false);
        this.mobile = ko.observable(object&&object.mobile || '');
        this.isMobileWarning = ko.observable(false);
        this.mobileWarning = ko.observable(object&&object.mobileWarning||"请输入正确的手机号码");
        this.postcode = ko.observable(object&&object.postcode || '');
        this.isPostcodeWarning = ko.observable(false);
        this.postCardWarning = ko.observable(object&&object.mobileWarning||"请输入正确的邮编");
        this.isPreferredChoice = ko.observable(object&&object.isPreferredChoice || false);
        this.getStarMobile = ko.computed(function(){
            return getStarMobileGlobal(self_aib.mobile());
        });

        //选中省
        this.selectProvince = function (data,event) {
            //传递当前省下的城市列表
            self_aib.cities(data.cities);
            //存储当前省字段
            self_aib.selectedProvince(data.name);
            self_aib.selectedCity("");
            self_aib.selectedCountry("");
            //同时给当前省添加高亮
            $(event.target).addClass("on").siblings().removeClass("on");
            //选择省之后只有城市列表显示，其他隐藏
            self_aib.isProvinceShowNew(false);
            self_aib.isCityShowNew(true);
            self_aib.isCountryShowNew(false);
        };
        //选中城市
        this.selectCity = function (data,event) {
            //传递当前城市下的地区列表
            self_aib.countries(data.areas);
            // console.log(data)
            //存储当前城市字段
            self_aib.selectedCity(data.name);
            self_aib.selectedCountry("");
            //同时给当前市添加高亮
            $(event.target).addClass("on").siblings().removeClass("on");
            //选择市区之后只有区县显示，其他隐藏
            self_aib.isProvinceShowNew(false);
            self_aib.isCityShowNew(false);
            self_aib.isCountryShowNew(true);
        };
        //选中区县
        this.selectCountry = function (data,event) {
            //存当前区县
            self_aib.selectedCountry(data);
            //同时给当前区县添加高亮
            console.log(event);
            console.log(data)
            $(event.target).addClass("on").siblings().removeClass("on");
            self_aib.isProvinceShowNew(false);
            self_aib.isCityShowNew(false);
            self_aib.isCountryShowNew(true);
            self_aib.showArea(false);
        };
        //切换控件显示与隐藏
        this.toggleArea = function () {
            self_aib.showArea(!self_aib.showArea());
        };
        //关闭控件
        this.closeArea = function () {
            self_aib.showArea(false);
        };
        //tab添加高亮与选择，省市区tab标签的动态切换
        this.tabSwitch = function () {
            // console.log(event.target.id);
            switch (event.target.id) {
                case "provinceTab":
                        self_aib.isProvinceShowNew(true);
                        self_aib.isCityShowNew(false);
                        self_aib.isCountryShowNew(false);
                    break;
                case "cityTab":
                        self_aib.isProvinceShowNew(false);
                        self_aib.isCityShowNew(true);
                        self_aib.isCountryShowNew(false);
                    break;
                case "countryTab":
                        self_aib.isProvinceShowNew(false);
                        self_aib.isCityShowNew(false);
                        self_aib.isCountryShowNew(true);
                    break;

            }
        };
        this.validate = function(){
            var obj = self_aib;
            //所有提示清空
            obj.isUsernameWarning(false);
            obj.isPcWarning(false);
            obj.isDetailedAddressWarning(false);
            obj.isMobileWarning(false);
            obj.isPostcodeWarning(false);
            //用户名合法性
            var name = obj.username();
            var usernameRegExp = new RegExp("^[a-zA-Z0-9\u4e00-\u9fa5_\/]+$");
            var nameInByte = name.replace(/[\u4e00-\u9fa5]/g,'cc');
            if(!name||!usernameRegExp.test(name)||nameInByte.length<2||nameInByte.length>20){
                obj.isUsernameWarning(true);
                console.log('名字')
                return false;
            }
            // 省市是否选择
            if(obj.province().ProID==0||obj.city().CityID==0){
                obj.isPcWarning(true);
                console.log('旧版省市')
                return false;
            }
            //详细地址是否填写
            if(obj.detailedAddress().length==0){
                obj.detailedAddressWarning(warningStatementTools.getWarningStatement("emptyDetailedAddress"));
                obj.isDetailedAddressWarning(true);
                return false;
            }
            if(!/^[\u4e00-\u9fa5\da-zA-Z——（），。#\s]+$/.test(obj.detailedAddress())){
                obj.detailedAddressWarning(warningStatementTools.getWarningStatement("specialChar"));
                obj.isDetailedAddressWarning(true);
                console.log('详细地址')
                return false;
            }
            //手机号验证
            if(!meValidator.customValidate(new RegExp(obj.areaCode().regRule),obj.areaCode().acCode + obj.mobile())){
                obj.mobileWarning(warningStatementTools.getWarningStatement("mobileIllegal"));
                obj.isMobileWarning(true);
                console.log('手机号验证')
                return false;
            }
            //邮编验证
            if(obj.postcode().length>0&&!/^\d{6}$/.test(obj.postcode())){
                obj.isPostcodeWarning(true);
                console.log('邮箱验证')
                return false;
            }
            return true;
        };
        //新版验证，基本逻辑不变
        this.validateNew = function () {
            var obj = self_aib;
            //所有提示清空
            obj.isUsernameWarning(false);
            obj.isPcWarning(false);
            obj.isDetailedAddressWarning(false);
            obj.isMobileWarning(false);
            obj.isPostcodeWarning(false);
            //用户名合法性
            var name = obj.username();
            var usernameRegExp = new RegExp("^[a-zA-Z0-9\u4e00-\u9fa5_\/]+$");
            var nameInByte = name.replace(/[\u4e00-\u9fa5]/g,'cc');
            if(!name||!usernameRegExp.test(name)||nameInByte.length<2||nameInByte.length>20){
                obj.isUsernameWarning(true);
                console.log('名字')
                return false;
            }
            // 省市是否选择
            // if(obj.province().ProID==0||obj.city().CityID==0){
            //     obj.isPcWarning(true);
            //     console.log('旧版省市')
            //     return false;
            // }
            //新版省市是否选择验证
            if(obj.selectedProvince() == "" || obj.selectedCity() == "" ||  obj.selectedCountry() == ""){
                obj.isPcWarning(true);
                console.log('新版省市')
                return false;
            }
            //详细地址是否填写
            if(obj.detailedAddress().length==0){
                obj.detailedAddressWarning(warningStatementTools.getWarningStatement("emptyDetailedAddress"));
                obj.isDetailedAddressWarning(true);
                return false;
            }
            if(!/^[\u4e00-\u9fa5\da-zA-Z——（），。#\s]+$/.test(obj.detailedAddress())){
                obj.detailedAddressWarning(warningStatementTools.getWarningStatement("specialChar"));
                obj.isDetailedAddressWarning(true);
                console.log('详细地址')
                return false;
            }
            //手机号验证
            if(!meValidator.customValidate(new RegExp(obj.areaCode().regRule),obj.areaCode().acCode + obj.mobile())){
                obj.mobileWarning(warningStatementTools.getWarningStatement("mobileIllegal"));
                obj.isMobileWarning(true);
                console.log('手机号验证')
                return false;
            }
            //邮编验证
            if(obj.postcode().length>0&&!/^\d{6}$/.test(obj.postcode())){
                obj.isPostcodeWarning(true);
                console.log('邮箱验证')
                return false;
            }
            return true;
        }
        this.provinceSelectorClicked = function(data,event){
            if($(event.target).next().css("display")=="none"){
                self_aib.isProvinceShow(true);
                $(event.target).next().css("display","block");
            }
            else{
                self_aib.isProvinceShow(false);
            }
        };
        this.provinceOptionsClicked = function(data,event){
            self_aib.isProvinceShow(false);
            self_aib.isCityShow(true);
            self_aib.province(data);
            var ele = $($(event.target).parent().parent().next().children()[0]).next();
            ele.css("display","block");
        };
        this.citySelectorClicked = function(data,event){
            if($(event.target).next().css("display")=="none"){
                self_aib.isCityShow(true);
                $(event.target).next().css("display","block");
            }
            else{
                self_aib.isCityShow(false);
            }
        }
        this.cityOptionsClicked = function(data){
            self_aib.isCityShow(false);
            self_aib.isProvinceShow(false);
            self_aib.city(data);
        };
        this.areaCodeSelectorClicked = function(data,event){
            if($(event.target).next().css("display")=="none"){
                self_aib.isAreaCodeShow(true);
                $(event.target).next().css("display","block");
            }
            else{
                self_aib.isAreaCodeShow(false);
            }
        };
        this.areaCodeClicked = function(data){
            self_aib.isAreaCodeShow(false);
            self_aib.areaCode(data);
        }
        this.getObject = function(){
            var obj = new Object();
            obj.id = self_aib.id();
            obj.username = self_aib.username();
            obj.province = self_aib.province().name;
            obj.city = self_aib.city().name;
            obj.detailedAddress = self_aib.detailedAddress();
            obj.areaCode = self_aib.areaCode().acCode;
            obj.mobile = self_aib.mobile();
            obj.postcode = self_aib.postcode();
            obj.isPreferredChoice = self_aib.isPreferredChoice();
            return obj;
        };
        //新版获取参数
        this.getObjectNew = function(){
            var obj = new Object();
            obj.id = self_aib.id();
            obj.username = self_aib.username();
            obj.province = self_aib.selectedProvince();
            obj.city = self_aib.selectedCity();
            obj.area = self_aib.selectedCountry();
            obj.detailedAddress = self_aib.detailedAddress();
            obj.areaCode = self_aib.areaCode().acCode;
            obj.mobile = self_aib.mobile();
            obj.postcode = self_aib.postcode();
            obj.isPreferredChoice = self_aib.isPreferredChoice();
            return obj;
        };
    };
    function Address(object){
        var self_a = this;
        this.isAdding = ko.observable(false);
        this.editing = ko.observable(object&&object.editing||false);
        this.addressForDisplay = ko.observable(new AddressInfoBase(object));
        this.addressForEdit = ko.observable(new AddressInfoBase(object));
        this.editClick = function(){
            self_a.editing(true);
        };
        this.addressForEdit().cancelClick = function(){
            self_a.editing(false);
        };
    }
    function CertificateCardInfo(object){
        var self_cci = this;
        this.isShowOptions = ko.observable(object&&object.isShowOptions||false);
        this.cardType = ko.observable(object&&object.cardType||{value:0,typeName:'身份证',typeNameEn:"Chinese ID"});
        this.cardNum = ko.observable(object&&object.cardNum||'');
        this.warning = ko.observable(object&&object.warning||warningStatementTools.getWarningStatement("certRepeat"));
        this.isWarning = ko.observable(object&&object.isWarning||false);
        this.certificateCardTypeList = ko.observableArray(_certificateCardTypeList);
        this.selectorClick = function(data,event){
            //if(event.target.nextElementSibling.style.display=="none"){
            if($(event.target).next().css("display")=="none"){
                self_cci.isShowOptions(true);
                //event.target.nextElementSibling.style.display="block";
                $(event.target).next().css("display","block");
            }
            else{
                self_cci.isShowOptions(false);
            }
        }
        this.isHiddenInputFocus = ko.observable(false);
        this.show = ko.computed(function(){
            return self_cci.isShowOptions()&&self_cci.isHiddenInputFocus();
        });
        this.optionsClick = function(data){
            self_cci.cardType(data);
            self_cci.isShowOptions(false);
        };
        this.getObject = function(){
            var obj = new Object();
            obj.cardType = self_cci.cardType();
            obj.cardNum = self_cci.cardNum();
            return obj;
        }
        this.getStarCert = ko.computed(function(){
            if(self_cci.cardType().value!=4)
                return self_cci.cardNum();
            return getStarCertGlobal(self_cci.cardNum());
        });
    }
    function CountryInfo(object){
        var self_ci = this;
        this.citythreesign = ko.observable(object&&object.Country_ThreeSign||'nocountry');
        this.citynameen = ko.observable(object&&(object.Country_Name_En||object.citynameen)||'Choose Nationality');
        this.code = ko.observable(object&&(object.Country_Code||object.code)||'nocountry');
        this.countryName = ko.observable(object&&(object.Country_Name||object.countryName)||'\u9009\u62e9\u56fd\u7c4d');
        this.showText = ko.computed(function(){
            var result = "";
            switch(_LANGUAGE){
                case "cn":
                    result = self_ci.countryName();
                    break;
                case "en":
                    result = self_ci.citynameen();
                    break;
                default:
                    result = self_ci.countryName();
            }
            return result;
        });
    };
    function TourCardInfo(object){
        var self_tci = this;
        this.cardType = ko.observable(object&&object.cardType||{"value":"3K","tourCardNameEn":"Jetstar Asia Airways","tourCardName":"捷星亚洲航空"});
        this.tourCardTypeList = _tourcard;
        this.isShowOptions = ko.observable(object&&object.isShowOptions||false);
        this.cardNum = ko.observable(object&&object.cardNum||'');
        this.selectorClick = function(data,event){
            if($(event.target).next().css("display")=="none"){
                self_tci.isShowOptions(true);
                $(event.target).next().css("display","block");
            }
            else{
                self_tci.isShowOptions(false);
            }
        };
        this.optionsClick = function(data){
            self_tci.cardType(data);
            self_tci.isShowOptions(false);
        }
        this.getObject = function(){
            var obj = {};
            obj.cardType = self_tci.cardType();
            obj.cardNum = self_tci.cardNum();
            return obj;
        }
    }
    function TouristInfoBase(object){
        var self_tib = this;
        this.id = ko.observable(object&&object.id||'');
        this.addTime = ko.observable(object&&object.addTime||new Date('1970-01-01 00:00:00'));
        this.isAdding = ko.observable(object&&object.isAdding||false);
        this.editorTitle = object && object.editorTitle || warningStatementTools.getWarningStatement("editGuest");
        this.username = ko.observable(object&&object.username||'');
        this.usernameWarning = ko.observable(object&&object.usernameWarning||warningStatementTools.getWarningStatement("usernameIllegal"));
        this.isUsernameWarning = ko.observable(object&&object.isUsernameWarning||false);
        this.certificateList = ko.observableArray(object&&object.certificateList||[new CertificateCardInfo()]);
        this.certificateListNum = ko.computed(function(){
            return self_tib.certificateList().length;
        });
        this.areaCode = ko.observable(object&&object.areaCode||{"acCode":"","acDsc":"中国大陆(+86)","acDscEn":"CN(+86)","language":1,"length":11,"regRule":"^1[0-9]{10}$|^86[0-9]{11}$"});
        this.mobile = ko.observable(object&&object.mobile||'');
        this.isMobileWarning = ko.observable(object&&object.isMobileWarning||false);
        this.mobileWarning = ko.observable(object&&object.mobileWarning||false);
        this.mail = ko.observable(object&&object.mail||'');
        this.isMailWarning = ko.observable(false);
        this.mailWarning = ko.observable(object&&object.mailWarning||warningStatementTools.getWarningStatement("emailIllegal"));
        this.country = ko.observable(object&&object.country||new CountryInfo());
        this.gender = ko.observable(object&&object.gender||'');
        this.birthYear = ko.observable(object&&object.birthYear||'');
        this.birthMonth = ko.observable(object&&object.birthMonth||'');
        this.birthDay = ko.observable(object&&object.birthDay||'');
        this.tourCardList = ko.observableArray(object&&object.tourCardList||[new TourCardInfo()]);
        this.areaCodeList = _areacode;
        this.isAreaCodeOptionsShow = ko.observable(false);
        this.countryList = _country;
        this.isCountryOptionsShow = ko.observable(object&&object.isCountryOptionsShow||false);
        this.yearList = ko.observableArray(_yearList);
        this.isYearOptionsShow = ko.observable(false);
        this.monthList = _monthList;
        this.isMonthOptionsShow = ko.observable(false);
        this.dayList = ko.observableArray(new Array);
        this.isDayOptionsShow = ko.observable(false);
        this.isPreferredChoice = ko.observable(object&&object.isPreferredChoice || false);
        this.more = ko.observable(object&&object.more||false);
        this.tourCardListNum = ko.computed(function(){
            return self_tib.tourCardList().length;
        });
        this.getStarMobile = ko.computed(function(){
            return getStarMobileGlobal(self_tib.mobile());
        });
        this.getStarMail = ko.computed(
            function(){
                return getStarMailGlobal(self_tib.mail());
            }
        );
        this.usernameToShow = ko.computed(function(){
            if(self_tib.username().length==0)
                return "";
            var nameShow = self_tib.username().substring(0,self_tib.username().length);
            for(var ui = 4; ui < self_tib.username().length; ui++ ){
                nameShow = self_tib.username().substring(0,ui);
                if(nameShow.replace(/[\u4e00-\u9fa5]/g,'cc').length>8){
                    nameShow += "...";
                    break;
                }
            }
            return nameShow;
        });
        this.validate = function(){
            //var result = 1;
            var obj = self_tib;
            var ci,cii;
            var certList = obj.certificateList();
            //所有提示清空
            obj.isUsernameWarning(false);
            for(ci = 0; ci < certList.length; ci++ ){
                certList[ci].isWarning(false);
            }
            obj.isMobileWarning(false);
            obj.isMailWarning(false);
            //用户名合法性
            var name = obj.username();
            var usernameRegExp = new RegExp("^[a-zA-Z0-9\u4e00-\u9fa5_\/]+$");
            var nameInByte = name.replace(/[\u4e00-\u9fa5]/g,'cc');
            if(!name||!usernameRegExp.test(name)||nameInByte.length<4||nameInByte.length>20){
                obj.isUsernameWarning(true);
                return false;
            }
            //证件类型判断重复
            for(ci = 0; ci < certList.length; ci++ ){
                if(certList[ci].cardNum().length==0){
                    certList[ci].warning(warningStatementTools.getWarningStatement("emptyIDNo"));
                    certList[ci].isWarning(true);
                    return false;
                }else if(certList[ci].cardType().value == 0 && !meValidator.validateIDCard(certList[ci].cardNum())){
                    certList[ci].warning(warningStatementTools.getWarningStatement("idCardIllegal"));
                    certList[ci].isWarning(true);
                    return false;
                }
                for(cii = ci + 1; cii < certList.length; cii++ ){
                    if(certList[ci].cardType().value == certList[cii].cardType().value){
                        certList[cii].warning(warningStatementTools.getWarningStatement("certRepeat"));
                        certList[cii].isWarning(true);
                        return false;
                    }
                }
            }
            //手机号验证
            if(!meValidator.customValidate(new RegExp(obj.areaCode().regRule),obj.areaCode().acCode + obj.mobile())){
                obj.mobileWarning(warningStatementTools.getWarningStatement("mobileIllegal"));
                obj.isMobileWarning(true);
                return false;
            }
            //邮箱验证
            if(obj.mail().length>0&&!meValidator.validate(obj.mail(),"email")){
                obj.mailWarning(warningStatementTools.getWarningStatement("emailIllegal"));
                obj.isMailWarning(true);
                return false;
            }
            return true;
            //warningStatementTools.getWarningStatement("");
        }
        this.openMore = function(){
            self_tib.more(true);
        };
        this.closeMore = function(){
            self_tib.more(false);
        };
        this.calFebruary = function(){
            if(self_tib.birthYear()!=''&&self_tib.birthMonth()!=''){
                var monthTemp = +self_tib.birthMonth();
                if(monthTemp==1||monthTemp==3||monthTemp==5||monthTemp==7||monthTemp==8||monthTemp==10||monthTemp==12){
                    self_tib.dayList(_month31)
                }
                else if(monthTemp==4||monthTemp==6||monthTemp==9||monthTemp==11){
                    self_tib.dayList(_month30);
                }
                else if(monthTemp==2){
                    var yearTemp = +self_tib.birthYear();
                    if(yearTemp%400==0){
                        self_tib.dayList(_month29);
                    }
                    else if(yearTemp%100==0){
                        self_tib.dayList(_month28);
                    }
                    else if(yearTemp%4==0){
                        self_tib.dayList(_month29);
                    }
                    else{
                        self_tib.dayList(_month28);
                    }
                }
                else{
                    self_tib.dayList(new Array());
                }
            }
        };
        this.birthMonth.subscribe(self_tib.calFebruary);
        this.birthYear.subscribe(self_tib.calFebruary);
        this.areaCodeSelectorClick = function(data,event){
            //if(event.target.nextElementSibling.style.display=="none"){
            if($(event.target).next().css("display")=="none"){
                self_tib.isAreaCodeOptionsShow(true);
                // event.target.nextElementSibling.style.display="block";
                $(event.target).next().css("display","block");
            }
            else{
                self_tib.isAreaCodeOptionsShow(false);
            }
        };
        this.areaCodeOptionsClick = function(data){
            self_tib.isAreaCodeOptionsShow(false);
            self_tib.areaCode(data);
        };
        this.countrySelectorClick = function(data,event){
            //if(event.target.nextElementSibling.style.display=="none"){
            if($(event.target).next().css("display")=="none"){
                self_tib.isCountryOptionsShow(true);
                //event.target.nextElementSibling.style.display="block";
                $(event.target).next().css("display","block");
            }
            else{
                self_tib.isCountryOptionsShow(false);
            }
        };
        this.countryOptionsClick = function(data){
            self_tib.isCountryOptionsShow(false);
            self_tib.country(data);
        }
        this.yearSelectorClick = function(data,event){
            //if(event.target.nextElementSibling.style.display=="none"){
            if($(event.target).next().css("display")=="none"){
                self_tib.isYearOptionsShow(true);
                //event.target.nextElementSibling.style.display="block";
                $(event.target).next().css("display","block");
            }
            else{
                self_tib.isYearOptionsShow(false);
            }
        };
        this.yearOptionsClick = function(data,event){
            self_tib.isMonthOptionsShow(true);
            self_tib.isYearOptionsShow(false);
            self_tib.birthYear(data);
            //var ele = event.target.parentNode.parentNode.nextElementSibling.childNodes[1].nextElementSibling;
            var ele = $($(event.target).parent().parent().next().children()[0]).next();
            setTimeout(function(){
                //ele.style.display="block";
                ele.css("display","block");
            },50);
        };
        this.monthSelectorClick = function(data,event){
            //if(event.target.nextElementSibling.style.display=="none"){
            if($(event.target).next().css("display")=="none"){
                self_tib.isMonthOptionsShow(true);
                //event.target.nextElementSibling.style.display="block";
                $(event.target).next().css("display","block");

            }
            else{
                self_tib.isMonthOptionsShow(false);
            }
        };
        this.monthOptinsClick = function(data){
            self_tib.isMonthOptionsShow(false);
            self_tib.birthMonth(data);
            self_tib.isDayOptionsShow(true);
            //var ele = event.target.parentNode.parentNode.nextElementSibling.childNodes[1].nextElementSibling;
            var ele = $($(event.target).parent().parent().next().children()[0]).next();
            if(self_tib.birthYear()!='年'){
                setTimeout(function(){
                    //ele.style.display="block";
                    ele.css("display","block");
                },50);
            }
        };
        this.daySelectorClick = function(data,event){
            //if(event.target.nextElementSibling.style.display=="none"){
            if($(event.target).next().css("display")=="none"){
                self_tib.isDayOptionsShow(true);
                //event.target.nextElementSibling.style.display="block";
                $(event.target).next().css("display","block");
            }
            else{
                self_tib.isDayOptionsShow(false);
            }
        };
        this.dayOptionsClick = function(data){
            self_tib.isDayOptionsShow(false);
            self_tib.birthDay(data);
        };
        this.getObject = function(){
            var obj = new Object();
            obj.username = self_tib.username();
            obj.id = self_tib.id();
            obj.mobileAc = self_tib.areaCode().acCode;
            obj.mobile = self_tib.mobile();
            obj.mail = self_tib.mail();
            obj.country = self_tib.country();
            obj.gender = self_tib.gender();
            obj.birthYear = self_tib.birthYear();
            obj.birthMonth = self_tib.birthMonth();
            obj.birthDay = self_tib.birthDay();
            //obj.certificateList = self_tib.certificateList();
            var certificateArr = [];
            for(var ci = 0; ci < self_tib.certificateList().length; ci++){
                certificateArr[ci] = self_tib.certificateList()[ci].getObject();
            }
            obj.certificateList = certificateArr;
            //obj.tourCardList = self_tib.tourCardList();
            var tourCardArr = [];
            for(var ti = 0; ti < self_tib.tourCardList().length; ti ++){
                tourCardArr[ti] = self_tib.tourCardList()[ti].getObject();
            }
            obj.tourCardList = tourCardArr;
            obj.isPreferredChoice = self_tib.isPreferredChoice();
            return obj;
        };
    };
    function Tourist(object){
        var self_t = this;
        this.isAdding = ko.observable(false);
        this.editing = ko.observable(object&&object.editing||false);
        this.touristForDisplay = ko.observable(new TouristInfoBase(object));
        this.touristForEdit = ko.observable(new TouristInfoBase(object));
        this.keepEditorShow = ko.observable(false);
        this.editClick = function(){
            if(!self_t.keepEditorShow()){
                self_t.keepEditorShow(true);
            }
            self_t.editing(true);
        };
        this.touristForEdit().cancelClick = function(){
            self_t.editing(false);
        };
        this.touristForEdit().deleteCertificateCard = function(data){
            if(self_t.touristForEdit().certificateListNum()>1){
                self_t.touristForEdit().certificateList.remove(data);
            }
            else{
                data.cardNum('');
                data.cardType({value:0,typeName:'身份证'});
            }
        };
        this.touristForEdit().addNewCertificateCard = function(){
            if(self_t.touristForEdit().certificateListNum()<6){
                self_t.touristForEdit().certificateList.push(new CertificateCardInfo());
            }
        };
        this.touristForEdit().deleteTourCard = function(card){
            if(self_t.touristForEdit().tourCardListNum()>1){
                self_t.touristForEdit().tourCardList.remove(card);
            }
            else{
                card.cardType({value:'',tourCardName:'选择常旅客卡'});
                card.cardNum('');
            }
        };
        this.touristForEdit().addNewTourCard = function(){
            if(self_t.touristForEdit().tourCardListNum()<10){
                self_t.touristForEdit().tourCardList.push(new TourCardInfo());
            }
        };
    };
    function myelongViewModel() {
        var self = this;
        self.tagsId = ['basicInformation', 'bankCard', 'address', 'travellerInfo'];
        self.tagToBeShowed = ko.observable('basicInformation');
        self.basicInformationTagKeepShow = ko.observable(true);
        self.addressTagKeepShow = ko.observable(false);
        self.travelerInfoTagKeepShow = ko.observable(false);
        self.clickTag = function(clickedTagName) {
            self.tagToBeShowed(clickedTagName);
            if(clickedTagName=='address'){
                if(!self.addressTagKeepShow()){
                    self.addressTagKeepShow(true);
                    self.address.init();
                }
            }
            else if(clickedTagName=='basicInformation'){
                self.basicInformationTagKeepShow(true);
            }
            else if(clickedTagName=='travellerInfo'){
                if(!self.travelerInfoTagKeepShow()){
                    self.travelerInfoTagKeepShow(true);
                    self.tourist.init();
                }

            }
        };
        self.closeAllOptions = function(data,event){
            //var e = document.getElementsByName('dummyOptions');
            var e = $("[name='dummyOptions']");
            for(var i = 0; i < e.length; i++){
                //if(e[i]==event.target.parentNode||e[i]==event.target.nextElementSibling)
                //if($(e[i])==$(event.target).parent()||$(e[i])==$(event.target).next())
                if(e[i]==($(event.target).parent()).get(0)||e[i]==($(event.target).next()).get(0))
                    continue;
                //e[i].style.display="none";
                $(e[i]).css("display","none");
            }
            return true;
        }
        self.basicInformation = {
            username: ko.observable(),
            userCard: ko.observable(),
            editing: ko.observable(false),
            mailEditing: ko.observable(false),
            usernameRepetition: ko.observable(false),
            mailIllegal:ko.observable(false),
            gender: ko.observable(''),
            mail: ko.observable(''),
            mobile: ko.observable(''),
            tripPrice: ko.observable({
                text: '选择价位',
                value: -1
            }),
            tripFrequency: ko.observable({
                text: '选择频率',
                value: -1
            }),
            tripPriceList: _tripPriceList,
            tripFrequencyList: _tripFrequencyList,
            isProvinceShow: ko.observable(false),
            isCityShow: ko.observable(false),
            isPriceOptionsShow: ko.observable(false),
            isFrequencyOptionsShow:ko.observable(false),
            province: ko.observable({"ProID":0,"name":"选择省份","ProSort":0,"ProRemark":"noprovince"}),
            city: ko.observable({"CityID":0,"name":"选择城市","ProID":0,"CitySort":0}),
            provinceList: _p0,
            cityList: ko.observable([]),
            memberLevel:ko.observable(0),
            recPromotionMsg:ko.observable("0"),
            recPromotionMsgChecked:ko.observable(false),
            recPromotionEmail:ko.observable("0"),
            recPromotionEmailChecked:ko.observable(false)
        };
        self.basicInformation.recPromotionMsgChecked.subscribe(function(newValue){
            console.log(newValue);
            if(newValue){
                self.basicInformation.recPromotionMsg("1");
                console.log(newValue+"~~1");
            }else{
                self.basicInformation.recPromotionMsg("0");
                console.log(newValue+"~~0");
            }

        });
        self.basicInformation.recPromotionEmailChecked.subscribe(function(newValue){
            if(newValue){
                self.basicInformation.recPromotionEmail("1");
                console.log(newValue+"~~1");
            }else{
                self.basicInformation.recPromotionEmail("0");
                console.log(newValue+"~~0");
            }

        });
        self.basicInformation.memberLevelName = ko.computed(function(){
            var result = _LANGUAGE == "en"?"member":"普卡";
            if(typeof self.basicInformation.memberLevel() != "number")
                return result;
            switch(self.basicInformation.memberLevel()){
                case 0:
                case 1:
                    result =  _LANGUAGE == "en"?"member":"普卡";
                    break;
                case 2:
                    result = _LANGUAGE == "en"?"VIP":"银卡";
                    break;
                case 3:
                    result = _LANGUAGE == "en"?"Dragon":"金卡";
                    break;
                case 4:
                    result = _LANGUAGE == "en"?"D Forever":"白金卡";
                    break;
            }
            return result;
        });
        self.basicInformation.getStarMail = ko.computed(
            function(){
                return getStarMailGlobal(self.basicInformation.mail());
            }
        );
        self.basicInformation.init = function(){
            $.get('../me_getPersonalInfo',function(data,textStatus){
                if(data.success){
                    var ajaxData = eval("("+data.data+")");
                    self.basicInformation.username(ajaxData.username);
                    self.basicInformation.userCard(ajaxData.userCard);
                    self.basicInformation.gender(ajaxData.gender);
                    self.basicInformation.mail(ajaxData.mail);
                    self.basicInformation.mobile(ajaxData.mobile);
                    self.basicInformation.memberLevel(ajaxData.memberLevel);
                    self.basicInformation.recPromotionMsg(ajaxData.recPromotionMsg);
                    self.basicInformation.recPromotionEmail(ajaxData.recPromotionEmail);
                    if(self.basicInformation.recPromotionMsg()=='1'){
                        self.basicInformation.recPromotionMsgChecked(true);
                    }else{
                        self.basicInformation.recPromotionMsgChecked(false);
                    }
                    if(self.basicInformation.recPromotionEmail()=='1'){
                        self.basicInformation.recPromotionEmailChecked(true);
                    }else{
                        self.basicInformation.recPromotionEmailChecked(false);
                    }
                    var ajaxDataCity = ajaxData.city;
                    var ajaxDataTripPrice = ajaxData.tripPrice;
                    var ajaxDataTripFrequency = ajaxData.tripFrequency;

                    var proID = 0;
                    var reg = new RegExp(ajaxDataCity);
                    if(ajaxDataCity&&ajaxDataCity.length>0){
                        for(var ci = 0; ci < _c0.length; ci++){
                            var temp = _c0[ci].name.search(reg);
                            if(_c0[ci].name==ajaxDataCity||_c0[ci].name.search(reg)>=0){
                                model.basicInformation.city(_c0[ci]);
                                proId = _c0[ci].ProID;
                                break;
                            }
                        }
                        if(proId>0){
                            for(var pi = 0; pi < _p0.length; pi++){
                                if(_p0[pi].ProID==proId){
                                    model.basicInformation.province(_p0[pi]);
                                    model.basicInformation.city(_c0[ci]);
                                    break;
                                }
                            }
                        }
                    }
                    if(ajaxDataTripPrice){
                        for(var tp = 0; tp < _tripPriceList.length; tp++ ){
                            if(_tripPriceList[tp].value==ajaxDataTripPrice){
                                model.basicInformation.tripPrice(_tripPriceList[tp]);
                                break;
                            }
                        }

                    }
                    if(ajaxDataTripFrequency){
                        for(var tf = 0; tf < _tripFrequencyList.length; tf++ ){
                            if(_tripFrequencyList[tf].value==ajaxDataTripFrequency){
                                model.basicInformation.tripFrequency(_tripFrequencyList[tf]);
                            }
                        }
                    }
                }
            });
        };
        self.basicInformation.getObject = function(){
            var obj = new Object();
            if(self.basicInformation.city().CityID!=0){
                obj.city = self.basicInformation.city().name;
            }
            obj.gender = self.basicInformation.gender();
            obj.mail = self.basicInformation.mail();
            //obj.mobile = self.basicInformation.mobile();
            if(self.basicInformation.tripFrequency().value!=-1){
                obj.tripFrequency = self.basicInformation.tripFrequency().value;
            }
            if(self.basicInformation.tripPrice().value!=-1){
                obj.tripPrice = self.basicInformation.tripPrice().value;
            }
            obj.userCard = self.basicInformation.userCard();
            obj.username = self.basicInformation.username();
            obj.recPromotionMsg = self.basicInformation.recPromotionMsg();
            obj.recPromotionEmail = self.basicInformation.recPromotionEmail();
            return obj;
        }
        self.basicInformation.saveBtnClick = function(){
            var basicInformationSaveObj = self.basicInformation.getObject();
            var basicInformationSaveJson = jsonHelper.toJson(basicInformationSaveObj);
            if(self.basicInformation.validate("username")&&self.basicInformation.validate("mail")){
                $.ajax({
                    type:"POST",
                    url:'../me_saveMember',
                    data:{memberString:basicInformationSaveJson},
                    success:function(data,textStatus){
                        if(1!=data.success){
                            new meDialog({
                                lang:_LANGUAGE,
                                htmlContent: warningStatementTools.getWarningStatement("updateFailed")
                            }).show();
                        }else{
                            new meDialog({
                                lang:_LANGUAGE,
                                htmlContent: warningStatementTools.getWarningStatement("updateSuccess")
                            }).show();
                        }
                    }
                });
            }
            return false;
        };
        self.basicInformation.maidEdit = function(){
            self.basicInformation.mailEditing(true);
            return false;
        };
        self.basicInformation_edit = function() {
            self.basicInformation.editing(true);
        };
        self.basicInformation_selectSex = function(selectedSex) {
            self.basicInformation.gender(selectedSex);
            return false;
        };
        self.basicInformation_completeRate = ko.computed(function() {
            var rate = 0;
            if (this.username()&&this.username().length > 0)
                rate += 25;
            if (this.gender()&&this.gender().length > 0)
                rate += 15;
            if (this.mail()&&this.mail().length > 0)
                rate += 20;
            if (this.city().CityID != 0 && this.city().name.length > 0)
                rate += 20;
            if (this.tripPrice().value != -1 && this.tripPrice().text.length > 0)
                rate += 20;
            return rate;
        }, self.basicInformation);
        self.basicInformation.validate = function(region){
            if(!region)
                return false;
            switch(region){
                case "username":
                    var name = self.basicInformation.username();
                    var usernameRegExp = new RegExp("^[a-zA-Z0-9\u4e00-\u9fa5_\/]+$");
                    var nameInByte = name.replace(/[\u4e00-\u9fa5]/g,'cc');
                    if(!name||!usernameRegExp.test(name)||nameInByte.length<4||nameInByte.length>20){
                        self.basicInformation.usernameRepetition(true);
                        return false;
                    }else{
                        self.basicInformation.usernameRepetition(false);
                        return true;
                    }
                    break;
                case "mail":
                    var mail = self.basicInformation.mail();
                    if(!meValidator.validate(mail,"email")){
                        self.basicInformation.mailIllegal(true);
                        return false;
                    }else{
                        self.basicInformation.mailIllegal(false);
                        return true;
                    }
                    break;
                default:
                    return false;;
            }
        }
        //前端检测是否符合用户名规范
        self.basicInformation.editing.subscribe(function(newValue){
            if (!newValue)
                self.basicInformation.validate("username");
        });
        self.basicInformation.mailEditing.subscribe(function(newValue){
            if(!newValue)
                self.basicInformation.validate("mail");
        });
        self.basicInformation.provinceSelectorClicked = function(data,event){
            if($(event.target).next().css("display")=="none"){
                self.basicInformation.isProvinceShow(true);
                $(event.target).next().css("display","block");
                var li = $(event.target).parent().parent().parent();
                var ul = $(li).parent();
                var lis = $(ul).children();
                for(var lisi = 0; lisi < lis.length; lisi++){
                    $(lis[lisi]).removeClass("on");
                }
                $(li).addClass("on");
            }
            else{
                self.basicInformation.isProvinceShow(false);
                var par = $(event.target).parent().parent().parent();
                par.removeClass("on");
            }
        };
        self.basicInformation.provinceOptionsClicked = function(data){
            self.basicInformation.province(data);
            self.basicInformation.isProvinceShow(false);
            self.basicInformation.isCityShow(true);
            var ele  = $($(event.target).parent().parent().next().children()[0]).next();
            ele.css("display","block");
        };
        self.basicInformation.citySelectorClicked = function(data,event){
            if($(event.target).next().css("display")=="none"){
                self.basicInformation.isCityShow(true);
                $(event.target).next().css("display","block");
            }
            else{
                self.basicInformation.isCityShow(false);
            }
        };
        self.basicInformation.cityOptionsClicked = function(data){
            self.basicInformation.isCityShow(false);
            self.basicInformation.isProvinceShow(false);
            self.basicInformation.city(data);
        };
        self.basicInformation.priceSelectorClick = function(data,event){
            //if(event.target.nextElementSibling.style.display=="none"){
            if($(event.target).next().css("display")=="none"){
                self.basicInformation.isPriceOptionsShow(true);
                //event.target.nextElementSibling.style.display="block";
                $(event.target).next().css("display","block");
                //var li = event.target.parentNode.parentNode;
                var li = $(event.target).parent().parent();
                //var ul = li.parentNode;
                var ul = $(li).parent();
                //var lis = ul.children;
                var lis = $(ul).children();
                for(var lisi = 0; lisi < lis.length; lisi++){
                    //lis[lisi].setAttribute("class","clearfix");
                    //$(lis[lisi]).addClass("clearfix");
                    $(lis[lisi]).removeClass("on");
                }
                //li.setAttribute("class","clearfix on");
                $(li).addClass("on");
            }
            else{
                self.basicInformation.isPriceOptionsShow(false);
                //var par = event.target.parentNode.parentNode.parentNode;
                var par = $(event.target).parent().parent().parent();
                //par.setAttribute("class","clearfix");
                par.removeClass("on");
            }
        };
        self.basicInformation.priceOptionsClick = function(data){
            self.basicInformation.isPriceOptionsShow(false);
            self.basicInformation.tripPrice(data);
        };
        self.basicInformation.frequencySelectorClick = function(data,event){
            if($(event.target).next().css("display")=="none"){
                self.basicInformation.isFrequencyOptionsShow(true);
                $(event.target).next().css("display","block");
                var li = $(event.target).parent().parent();
                var ul = $(li).parent();
                var lis = $(ul).children();
                for(var lisi = 0; lisi < lis.length; lisi++){
                    $(lis[lisi]).removeClass("on");
                }
                $(li).addClass("on");
            }
            else{
                self.basicInformation.isPriceOptionsShow(false);
                var par = $(event.target).parent().parent().parent();
                par.removeClass("on");
            }
        };
        self.basicInformation.frequencyOptionsClick = function(data){
            self.basicInformation.isFrequencyOptionsShow(false);
            self.basicInformation.tripFrequency(data);
        };
        self.basicInformation.province.subscribe(function(newValue){
            var cList = [];
            if(newValue.ProID!=0){
                for(var i = 0; i < _c0.length; i++){
                    if(_c0[i].ProID == newValue.ProID){
                        cList.push(_c0[i]);
                    }
                }
            }
            if(cList.length>=1){
                self.basicInformation.city(cList[0]);
            }
            self.basicInformation.cityList(cList);
        });
        ///----------修改手机号start ---------///
        self.modMemberMobile={
            smsValue:ko.observable(''),
            newSmsValue:ko.observable(''),
            successCountSecond:ko.observable('2'),
            checkSmsValid:ko.pureComputed(function(){//检验输入短信验证码长度是否是四位
                if (self.modMemberMobile.smsValue().length == 4) {
                    $("#stepOneDiv").find(".modify_num_submit a").removeAttr("disabled");
                    return true;
                } else {
                    $("#stepOneDiv").find(".modify_num_submit a").attr("disabled", "true");
                    return false;
                }
            },self.modMemberMobile),
            checkNewSmsValid:ko.pureComputed(function(){//检验输入短信验证码长度是否是四位
                if (self.modMemberMobile.newSmsValue().length == 4) {
                    $("#stepTwoDiv").find(".modify_num_submit a").removeAttr("disabled");
                    return true;
                } else {
                    $("#stepTwoDiv").find(".modify_num_submit a").attr("disabled", "true");
                    return false;
                }
            },self.modMemberMobile),
            templateNameDatas:ko.observableArray(["stepOneTemplate","stepTwoTemplate"]),
            templateName:function(ele){//选择展示模板
                return ele;
            },
            wait:60,
            countDown:function(elem,btn3,btn1,val){
                if(elem.wait==0){
                    $(btn3).hide();
                    $(btn1).show();
                    elem.wait=val;
                    $(btn3).html("重新获取("+val+")");
                }else{
                    elem.wait--;
                    $(btn3).html("重新获取("+elem.wait+")");
                    setTimeout(function() {
                        elem.countDown(elem,btn3,btn1,val)
                    },1000);
                }
            },
            sendSms:function(elem){

                var stepOneBtn1=$("a[method='getOriginalMobileVertificationCode']");
                var stepOneBtn2=$(stepOneBtn1).next();
                var stepOneBtn3=$(stepOneBtn2).next();
                $(stepOneBtn1).hide();
                $(stepOneBtn2).show();
                $.ajax({
                    type:"POST",
                    url:'../ajax/sendSms',
                    success:function(data){
                        if(data!=null&&data.errorCode=="0"){
                            $(stepOneBtn2).hide();
                            $(stepOneBtn3).show();
                            self.modMemberMobile.countDown(self.modMemberMobile,stepOneBtn3,stepOneBtn1,data.waitTime);
                            if(data.leftCount==1){
                                $("#originalMobileWarning").show().html("每天最多获取<span>5</span>次验证码，您今天只剩下<span>"+data.leftCount+"</span>次了");
                            }
                        }else{
                            $(stepOneBtn3).hide();
                            $(stepOneBtn2).hide();
                            $(stepOneBtn1).show();
                            new meDialog({
                                htmlContent:data.errorMsg
                            }).show();
                        }
                    }
                });
            },
            sendNewMobileSms:function(){
                var TJObject = getTJobj("getoldcode");
                tjMVT.setData(TJObject);
                $("#newMobileWarning").hide();
                var newMobile=$("input[class='phone_inp']").val();
                var stepOneBtn1=$("a[method='getNewMobileVertificationCode']");
                var stepOneBtn2=$(stepOneBtn1).next();
                var stepOneBtn3=$(stepOneBtn2).next();
                var jsonData={
                    newMobile:newMobile
                };
                $(stepOneBtn1).hide();
                $(stepOneBtn2).show();
                var isNext=self.modMemberMobile.checkNewMobile(newMobile);
                if(!isNext){
                    $("#newMobileWarning").show().html('<i class="icon_wran_ph"></i>请输入正确的手机号');
                    $(stepOneBtn3).hide();
                    $(stepOneBtn2).hide();
                    $(stepOneBtn1).show();
                    return;
                }
                $.ajax({
                    type:"POST",
                    url:'../ajax/sendSms',
                    data:jsonData,
                    success:function(data){
                        if(data!=null&&data.errorCode=="0"){
                            $(stepOneBtn2).hide();
                            $(stepOneBtn3).show();
                            self.modMemberMobile.countDown(self.modMemberMobile,stepOneBtn3,stepOneBtn1,data.waitTime);
                            if(data.leftCount==1){
                                $("#newMobileWarning").show().html("每天最多获取<span>5</span>次验证码，您今天只剩下<span>"+data.leftCount+"</span>次了");
                            }
                        }else{
                            $(stepOneBtn3).hide();
                            $(stepOneBtn2).hide();
                            $(stepOneBtn1).show();
                            new meDialog({htmlContent:data.errorMsg}).show();
                        }
                    }
                });
            },
            originalMobileNextStep:function(){
                //如果按钮被置为灰色，则点击无反应
                if($("#stepOneDiv").find(".modify_num_submit a").prop("disabled")){
                    return;
                }
                var vertificationCodeInput =$("#stepOneDiv").find("input").val();
                $("#originalMobileWarning").hide();
                var jsonData={
                    smsCode:vertificationCodeInput
                };
                $.ajax({
                    type:"POST",
                    url:'../ajax/smsValidate',
                    data:jsonData,
                    success:function(data){
                        if(data!=null&&data.errorCode=="0"){
                            $("#stepOneDiv").hide();
                            $("#stepTwoDiv").show();
                            $("ul[class=clearfix] li:first").removeClass("fin");
                            $("ul[class=clearfix] li:first").next().addClass("fin");
                            clearInterval(this.interval);
                            self.modMemberMobile.wait=data.waitTime;
                        }else{
                            $("#originalMobileWarning").show().html('<i class="icon_wran_ph"></i>'+ data.errorMsg);
                        }
                    }
                });
            },
            showPhonenum:function(){
                $(".phonenum ul").toggle();
            },
            telAreaChoose_li:function(ele,$data){
                var li=$data.srcElement;
                $(".phonenum label").text(li.innerText);
                $(".phonenum span").val($(".phonenum li").index(li)+1);
            },
            checkNewMobile: function (newMobileNum) {
                var isToNext = false;
                var phoneType = $("#PhoneType").attr("value");
                var extendUserPhone;
                if(newMobileNum==null||newMobileNum==""){
                    $("#newMobileWarning").show().html("电话号码不能为空");
                    return false;
                }
                if (phoneType == "1" || phoneType == "5") {
                    extendUserPhone = newMobileNum;
                }
                if (phoneType == "2" || phoneType == "6") {
                    extendUserPhone = "852" + newMobileNum;
                }
                if (phoneType == "3" || phoneType == "7") {
                    extendUserPhone = "853" + newMobileNum;
                }
                if (phoneType == "4" || phoneType == "8") {
                    extendUserPhone = "886" + newMobileNum;
                }
                // var patrn = /^1[34578][0-9]{9}$/;
                var patrn = /^1[0-9]{10}$|^86[0-9]{11}$|852[0-9]{8}$|853[0-9]{8}$|886[0-9]{9}$/;
                isToNext = patrn.test(extendUserPhone);
                return isToNext;
            },
            popWindow:function(){
                var modWin = new meDialog({
                    htmlTemplate:'<div class="modify_phone_g" id="modPopWinDiv">\
                    <div class="edit_g"></div>\
                    <h5 class="t14 tc">正在努力修改，请耐心等待<span>5</span>秒…</h5>\
                    <p class="t12 tc">请不要刷新或关闭页面，不然修改就白费了</p>\
                    </div>'
                });
                modWin.show();
                var secondSpan = $("#modPopWinDiv").find("span").text();
                var countdown = null;
                var timeShow=function (){
                    secondSpan--;
                    $("#modPopWinDiv span").text(secondSpan);
                    if(secondSpan<1){
                        clearInterval(countdown);
                    }
                };
                countdown = setInterval(timeShow,1000);
                return modWin;
            },
            newMobileNextStep:function(){
                var TJObject = getTJobj("getnewcode");

                tjMVT.setData(TJObject);
                //如果按钮被置为灰色，则点击无反应
                if($("#stepTwoDiv").find(".modify_num_submit a").prop("disabled")||$("#stepTwoDiv").find(".modify_num_submit a").attr("disabled")=="disabled"||$("#stepTwoDiv").find(".modify_num_submit a").attr("disabled")){
                    return;
                }
                var code1 =$("#stepOneDiv").find("input").val();
                var code2 =$("#stepTwoDiv").find(".veri_inp").val();
                var newMobileNum=$("#stepTwoDiv").find(".phone_inp").val();
                var phoneType = $("#PhoneType").val();
                var extendUserPhone;
                if (phoneType == "1" || phoneType == "5") {
                    extendUserPhone = newMobileNum;
                }
                if (phoneType == "2" || phoneType == "6") {
                    extendUserPhone = "852" + newMobileNum;
                }
                if (phoneType == "3" || phoneType == "7") {
                    extendUserPhone = "853" + newMobileNum;
                }
                if (phoneType == "4" || phoneType == "8") {
                    extendUserPhone = "886" + newMobileNum;
                }
                $("#stepTwoDiv").find("[method='newMobileWarning']").hide();
                self.modMemberMobile.popWindow();
                var jsonData={
                    newMobile:newMobileNum,
                    code1:code1,
                    code2:code2
                };
                $.ajax({
                    type:"POST",
                    url:"../ajax/updateMobileByCode",
                    data:jsonData,
                    success:function(data){
                        if(data!=null&&data.errorCode==0){
                            $("#stepTwoDiv").hide();
                            $("#modifySuccessDiv").show();
                            var secondSpan = $("#modifySuccessDiv span").text();
                            var countdown = null;
                            var timeShow=function (){
                                secondSpan--;
                                $("#modifySuccessDiv span").text(secondSpan);
                                if(secondSpan<1){
                                    clearInterval(countdown);
                                    self.modMemberMobile.loginOut();
                                }
                            };
                            countdown = setInterval(timeShow,1000);
                            $("ul[class=clearfix] li:first").find("b").removeClass("lne");
                            $("ul[class=clearfix] li:first").next().find("b").addClass("lne");
                            $("ul[class=clearfix] li:first").next().removeClass("fin");
                            $("ul[class=clearfix] li:last").addClass("fin");
                        }else if(data.errorCode>0){
                            $("#newMobileWarning").show().html('<i class="icon_wran_ph"></i>'+data.errorMsg);
                        }else{
                            console.log(data.errorMsg);
                            $("#stepTwoDiv").hide();
                            $("#modifyFailedDiv").show();
                        }
                        clearInterval(this.interval);
                        self.modMemberMobile.popWindow().close();
                    }
                });
            },
            loginOut:function(){
                $.ajax({
                    type:'POST',
                    url:'../ajax/loginOut',
                    success:function(data){
                        window.location = $(".quit_log a").attr('href');
                    },
                    error:function(){

                    }
                });
            }
        };
        ///----------修改手机号end ---------///

        ///---------- 常用地址 start----------///
        self.address = {
            addressList: ko.observableArray([]),
            maxId : 3,
            showNewAddressBox:ko.observable(false),
            newAddress:ko.observable(new AddressInfoBase({
                editorTitle:'添加新地址',
                isAdding:true
            })),
            addFadeIn: function(elem){
                if (elem.nodeType == 1&&$(elem).attr("name")=='div1'){
                    $(elem).hide();
                    $(elem).slideDown();
                }
            },
            removeFadeOut: function(elem){
                if (elem.nodeType == 1)
                    $(elem).slideUp(function() { $(elem).remove(); });
            },
            moveAnimate:function(arg1, arg2,arg3){
                for(var i = 0; i < self.address.addressList().length; i++ ){
                    //console.log(self.address.addressList()[i].addressForDisplay().username()+" ");
                }
                var arg = arg3.addressForDisplay().id();
            }
        };
        self.address.init = function(){
            $.ajax({
                type:"GET",
                url:'../me_getAddressList',
                success:function(data,textStatus){
                    if(data.success==1){
                        self.address.addressList.removeAll();
                        var ls = data.data;
                        for(var i=0; i<ls.length; i++){
                            var addpobj;
                            var addcobj;
                            var acobj;
                            addpobj = _p[0];
                            for(var proi = 0; proi < _p.length; proi++ ){
                                if(ls[i].province == _p[proi].name){
                                    addpobj = _p[proi];
                                    break;
                                }
                            }
                            addcobj = _c[0];
                            for(var croi = 0; croi < _c.length; croi++ ){
                                if(ls[i].city == _c[croi].name){
                                    addcobj = _c[croi];
                                    break;
                                }
                                if(croi == _c.length-1){
                                    addpobj = _p[0]
                                }
                            }
                            acobj = _areacode[0];
                            for(var aci = 0; aci < _areacode.length; aci++){
                                if(_areacode[aci].acCode==ls[i].areaCode){
                                    acobj = _areacode[aci];
                                    break;
                                }
                            }
                            //ls[i].isPreferredChoice = ls[i].preferredChoice;
                            //新增部分
                            ls[i].selectedProvince = ls[i].province;
                            ls[i].selectedCity = ls[i].city;
                            ls[i].selectedCountry = ls[i].area;
                            //
                            ls[i].province = addpobj;
                            ls[i].city = addcobj;
                            ls[i].areaCode = acobj;
                            self.address.addressList.push(new Address(ls[i]));
                            // console.log(self.address.addressList())
                            // console.log(ls)
                        }
                        var i=0;
                    }
                    else{
                        new meDialog({
                            lang:_LANGUAGE,
                            htmlContent: '获取数据失败~'
                        }).show();
                    }
                }
            });
        };
        self.address.newAddress().cancelClick = function(){
            self.address.showNewAddressBox(false);
            var newAdd = self.address.newAddress;
            newAdd().username('');
            newAdd().province({"ProID":0,"name":"选择省份","ProSort":0,"ProRemark":"直辖市"});
            newAdd().city({"CityID":0,"name":"选择城市","ProID":0,"CitySort":1});
            newAdd().detailedAddress('');
            newAdd().areaCode({"acCode":"","acDsc":"中国大陆(+86)","acDscEn":"CN(+86)","language":1,"length":11,"regRule":"^1[0-9]{10}$|^86[0-9]{11}$"});
            newAdd().mobile('');
            newAdd().postcode('');
        };
        self.address.showNewAddressBoxClick = function(){
            self.address.showNewAddressBox(!self.address.showNewAddressBox());
        };
        self.address.sortAddressList = function(){
            self.address.addressList.sort(function(left,right){
                var leftObj = left.addressForDisplay();
                var rightObj = right.addressForDisplay();
                if(leftObj.isPreferredChoice())
                    return -1;
                else if(rightObj.isPreferredChoice())
                    return 1;
                else return leftObj.addTime()==rightObj.addTime()?0:(leftObj.addTime()>rightObj.addTime()?-1:1);
            });
        };
        self.address.setPreferredChoice = function(address){
            new meDialog({
                lang:_LANGUAGE,
                htmlContent: '确定设为首选地址吗？',
                confirmCallback:function(){
                    $.ajax({
                        url:"../me_setAddressDefault",
                        data:{addressId:address.addressForDisplay().id()},
                        type:'post',
                        success: function(data){
                            if(data.success !=1){
                                new meDialog({
                                    lang:_LANGUAGE,
                                    htmlContent: warningStatementTools.getWarningStatement("updateFailed")
                                }).show();
                                return false;
                            }
                            for(var i = 0; i < self.address.addressList().length; i++){
                                self.address.addressList()[i].addressForDisplay().isPreferredChoice(self.address.addressList()[i]==address);
                            }
                            self.address.sortAddressList();
                        }
                    });
                }
            }).show();
        };
        self.address.saveClick = function(address){
            var parent = this;
            if(parent.isAdding()){
                //验证完毕之后
                // var valid = parent.validate();
                var valid = parent.validateNew();
                if(!valid)
                    return;
                var newAddressObject = {};
                // newAddressObject = self.address.newAddress().getObject();
                newAddressObject = self.address.newAddress().getObjectNew();
                newAddressObject.tk=TK;
                $.ajax({
                    'url':'../me_saveAddress',
                    'type':'post',
                    'data':{addressText:ko.toJSON(newAddressObject)},
                    'success':function(result){
                        if(1!=result.success){
                            new meDialog({
                                lang:_LANGUAGE,
                                htmlContent: warningStatementTools.getWarningStatement("addingFailed")
                            }).show();
                            return false;
                        }
                        new meDialog({
                            lang:_LANGUAGE,
                            htmlContent: warningStatementTools.getWarningStatement("addingSuccess")
                        }).show();
                        newAddressObject.addTime = new Date();
                        newAddressObject.id = result.data;
                        // var addingAddress = new Address(newAddressObject);
                        // self.address.addressList.push(addingAddress);
                        // if(newAddressObject.isPreferredChoice)
                        // 	for(var i = 0; i < self.address.addressList().length; i++){
                        // 		self.address.addressList()[i].addressForDisplay().isPreferredChoice(self.address.addressList()[i]==addingAddress);
                        // }
                        self.address.newAddress().username('');
                        // self.address.newAddress().province({"ProID":0,"name":"选择省份","ProSort":0,"ProRemark":"直辖市"});
                        // self.address.newAddress().city({"CityID":0,"name":"选择城市","ProID":0,"CitySort":1});
                        self.address.newAddress().selectedProvince("");
                        self.address.newAddress().selectedCity("");
                        self.address.newAddress().selectedCountry("");
                        self.address.newAddress().detailedAddress('');
                        self.address.newAddress().areaCode({"acCode":"","acDsc":"中国大陆(+86)","acDscEn":"CN(+86)","language":1,"length":11,"regRule":"^1[0-9]{10}$|^86[0-9]{11}$"});
                        self.address.newAddress().mobile('');
                        self.address.newAddress().postcode('');
                        self.address.newAddress().isPreferredChoice(false);
                        self.address.init();
                    }
                });
            }else{
                // var valid = parent.validaste();
                var valid = parent.validateNew();
                if(!valid)
                    return;
                // var addressForEditObj = address.addressForEdit().getObject();
                var addressForEditObj = address.addressForEdit().getObjectNew();
                console.log(addressForEditObj);
                addressForEditObj.addTime = new Date();
                addressForEditObj.tk=TK;
                $.ajax({
                    'url': '../me_saveAddress',
                    'type': 'post',
                    'data': {addressText:ko.toJSON(addressForEditObj)},
                    'success': function(result){
                        if(1!=result.success){
                            new meDialog({
                                lang:_LANGUAGE,
                                htmlContent: warningStatementTools.getWarningStatement("updateFailed")
                            }).show();
                            return false;
                        }
                        new meDialog({
                            lang:_LANGUAGE,
                            htmlContent: warningStatementTools.getWarningStatement("updateSuccess")
                        }).show();
                        // address.addressForDisplay(new AddressInfoBase(addressForEditObj));

                        // address.editing(false);
                        // if(address.addressForDisplay().isPreferredChoice()){
                        // 	for(var i = 0; i < self.address.addressList().length; i++){
                        // 		self.address.addressList()[i].addressForDisplay().isPreferredChoice(self.address.addressList()[i]==address);
                        // 	}
                        // }
                        self.address.init();
                    }
                });
            }
            self.address.sortAddressList();
        }
        self.address.deleteClick = function(place){
            new meDialog({
                lang:_LANGUAGE,
                htmlContent: '确定删除吗？',
                confirmCallback:function(){
                    $.ajax({
                        url:"../me_deleteAddress",
                        data:{addressId:place.addressForDisplay().id()},
                        type:'post',
                        success: function(data){
                            if(data.success !=1){
                                new meDialog({
                                    lang:_LANGUAGE,
                                    htmlContent: warningStatementTools.getWarningStatement("updateFailed")
                                }).show();
                                return false;
                            }
                            self.address.addressList.remove(place);
                        }
                    });
                }
            }).show();
        };
        ///---------- 常用地址 end----------///
        ///---------- 常用旅客 start----------///
        self.tourist = {
            touristList:ko.observableArray([]),
            showNewTouristBox:ko.observable(false),
            newTourist: ko.observable(new TouristInfoBase({
                isAdding:true,
                editorTitle:warningStatementTools.getWarningStatement("addGuest")
            })),
            index:-1,
            searchKey:ko.observable(""),
            addFadeIn: function(elem){
                if (elem.nodeType == 1&&$(elem).attr("name")=='div1'){
                    $(elem).hide();
                    $(elem).slideDown();
                }
            },
            removeFadeOut: function(elem){
                if (elem.nodeType == 1)
                    $(elem).slideUp(function() { $(elem).remove(); });
            },
            moveAnimate:function(arg1, arg2,arg3){
                // for(var i = 0; i < self.address.addressList().length; i++ ){
                // 	console.log(self.address.addressList()[i].addressForDisplay().username()+" ");
                // }
                // console.log('\r\n');
                // var arg = arg3.addressForDisplay().id();
            }
        };
        self.tourist.searchClick = function(){
            if(self.tourist.searchKey().length==0){
                self.tourist.init();
            }else{
                self.tourist.searchInit();
            }

        };
        self.tourist.saveClick = function(tourist){
            var parent = this;

            if(parent.isAdding()){
                //验证完毕之后
                var valid = parent.validate();
                if(!valid)
                    return;
                var newTouristObject = {};
                newTouristObject = self.tourist.newTourist().getObject();
                //调用后台方法存储新地址，成功之后回调：并返回一个地址id
                newTouristObject.addTime = new Date();
                var xxx = ko.toJSON(newTouristObject);
                var addingTourist = new Tourist(newTouristObject);

                $.ajax({
                    'url':'../me_saveCustomer',
                    'type':'post',
                    'data':{data:ko.toJSON(newTouristObject)},
                    'success': function(data){
                        if(data.success!=1){
                            new meDialog({
                                lang:_LANGUAGE,
                                htmlContent: warningStatementTools.getWarningStatement("addingFailed")
                            }).show();
                            return false;
                        }
                        new meDialog({
                            lang:_LANGUAGE,
                            htmlContent: warningStatementTools.getWarningStatement("addingSuccess")
                        }).show();
                        self.tourist.init();
                        var newTour = self.tourist.newTourist();
                        newTour.username('');
                        newTour.isUsernameWarning(false);
                        newTour.certificateList([new CertificateCardInfo()]);
                        newTour.areaCode({"acCode":"","acDsc":"中国大陆(+86)","acDscEn":"CN(+86)","language":1,"length":11,"regRule":"^1[0-9]{10}$|^86[0-9]{11}$"});
                        newTour.mobile('');
                        newTour.mail('');
                        newTour.country(new CountryInfo());
                        newTour.gender('');
                        newTour.birthYear('');
                        newTour.birthMonth('');
                        newTour.birthDay('');
                        newTour.tourCardList([new TourCardInfo()]);
                        newTour.isPreferredChoice(false);
                    }
                });
                //----------------add start--------------//
                ////----------------add end---------------//
            }else{
                var valid = parent.validate();
                if(!valid)
                    return;
                var touristForEditObj = tourist.touristForEdit().getObject();
                touristForEditObj.addTime = new Date();
                $.ajax({
                    'url':'../me_saveCustomer',
                    'type':'post',
                    'data':{data:ko.toJSON(touristForEditObj)},
                    'success': function(data){
                        if(data.success!=1){
                            new meDialog({
                                lang:_LANGUAGE,
                                htmlContent: warningStatementTools.getWarningStatement("updateFailed")
                            }).show();
                            return false;
                        }
                        new meDialog({
                            lang:_LANGUAGE,
                            htmlContent: warningStatementTools.getWarningStatement("updateSuccess")
                        }).show();
                        self.tourist.init();
                    }
                });

                //----------update start-----//
                //
                //--------update end-------//
            }
            self.tourist.sortTouristList();
        };

        self.tourist.newTourist().addNewCertificateCard = function(){
            if(self.tourist.newTourist().certificateListNum()<6){
                self.tourist.newTourist().certificateList.push(new CertificateCardInfo());
            }
        };

        self.tourist.newTourist().deleteCertificateCard = function(card){
            if(self.tourist.newTourist().certificateListNum()>1){
                self.tourist.newTourist().certificateList.remove(card);
            }
            else{
                card.cardNum('');
                card.cardType(_certificateCardTypeList[0]);
            }
        };

        self.tourist.newTourist().deleteTourCard = function(card){
            if(self.tourist.newTourist().tourCardListNum()>1){
                self.tourist.newTourist().tourCardList.remove(card);
            }
            else{
                card.cardType({value:'',tourCardName:'选择常旅客卡',tourCardNameEn:"Choose Frequent Flyer Card"});
                card.cardNum('');
            }
        };

        self.tourist.newTourist().addNewTourCard = function(){
            if(self.tourist.newTourist().tourCardListNum()<10){
                self.tourist.newTourist().tourCardList.push(new TourCardInfo());
            }
        };

        self.tourist.newTourist().cancelClick = function(){
            self.tourist.showNewTouristBox(false);
            var newTour = self.tourist.newTourist();
            newTour.username('');
            newTour.isUsernameWarning(false);
            newTour.certificateList([new CertificateCardInfo()]);
            newTour.areaCode({"acCode":"","acDsc":"中国大陆(+86)","acDscEn":"CN(+86)","language":1,"length":11,"regRule":"^1[0-9]{10}$|^86[0-9]{11}$"});
            newTour.mobile('');
            newTour.mail('');
            newTour.country(new CountryInfo());
            newTour.gender('');
            newTour.birthYear('年');
            newTour.birthMonth('月');
            newTour.birthDay('日');
            newTour.tourCardList([new TourCardInfo()]);
            newTour.isPreferredChoice(false);
        };
        self.tourist.sortTouristList = function(){
            self.tourist.touristList.sort(function(left,right){
                var leftObj = left.touristForDisplay();
                var rightObj = right.touristForDisplay();
                if(leftObj.isPreferredChoice())
                    return -1;
                else if(rightObj.isPreferredChoice())
                    return 1;
                else return leftObj.addTime()==rightObj.addTime()?0:(leftObj.addTime()>rightObj.addTime()?-1:1);
            });
        };
        self.tourist.deleteClick = function(tourist){
            new meDialog({
                lang:_LANGUAGE,
                htmlContent: warningStatementTools.getWarningStatement("sureToDeleteTraveller"),
                confirmCallback:function(){
                    $.ajax({
                        url:"../me_deleteCustomer",
                        data:{customerId:tourist.touristForDisplay().id()},
                        type:'post',
                        success: function(data){
                            if(data.success !=1){
                                new meDialog({
                                    lang:_LANGUAGE,
                                    htmlContent: warningStatementTools.getWarningStatement("operationFailed")
                                }).show();
                                return false;
                            }
                            self.tourist.init(self.tourist.index);
                        }
                    });
                }
            }).show();
        };
        self.tourist.setPreferredChoice = function(tourist){
            new meDialog({
                lang:_LANGUAGE,
                htmlContent: warningStatementTools.getWarningStatement("sureToSetDefaultTraveller"),
                confirmCallback:function(){
                    $.ajax({
                        url:"../me_setCustomerDefault",
                        data:{customerId:tourist.touristForDisplay().id()},
                        type:'post',
                        success: function(data){
                            if(data.success !=1){
                                new meDialog({
                                    lang:_LANGUAGE,
                                    htmlContent: warningStatementTools.getWarningStatement("operationFailed")
                                }).show();
                                return false;
                            }
                            self.tourist.init();
                        }
                    });
                }
            }).show();
        };
        self.tourist.showNewTouristBoxClick = function(){
            self.tourist.showNewTouristBox(!self.tourist.showNewTouristBox());
        };
        self.tourist.pageTurning = function(index){
            $.ajax({
                type:"GET",
                url:'../me_getMemberCustomerList',
                data:{pageIndex:index},
                success:function(data,textStatus){

                    if(data.success==1){
                        self.tourist.manipulateData({
                            data:data,
                            callback:"",
                            refresh:false
                        });
                    }
                    else{
                        new meDialog({
                            lang:_LANGUAGE,
                            htmlContent: warningStatementTools.getWarningStatement("requestFailed")
                        }).show();
                    }
                }
            });

        }
        self.tourist.searchPageTuring = function(index){
            var index = index;
            var key = self.tourist.searchKey();
            $.ajax({
                type:"GET",
                url:'../me_getSearchCustomer',
                data:{
                    //searchKey:encodeURI(encodeURI(key)),
                    searchKey:encodeURI(key),
                    pageNum:index
                },
                success:function(data,textStatus){
                    if(data.success==1){
                        self.tourist.manipulateData({
                            data:data,
                            callback:"",
                            refresh:false
                        });
                    }
                    else{
                        new meDialog({
                            lang:_LANGUAGE,
                            htmlContent: warningStatementTools.getWarningStatement("requestFailed")
                        }).show();
                    }
                }
            });
        }
        self.tourist.manipulateData = function(option){
            var data,callback,refresh;
            if(!option.data)
                return;
            data = option.data;
            if(!option.callback){
                callback = self.tourist.pageTurning;
            }else{
                callback = option.callback;
            }
            if(option.refresh === undefined){
                refresh = true;
            }
            else{
                refresh = option.refresh;
            }

            self.tourist.touristList.removeAll();
            if(!data.data||data.data.length==0||data.data.list.length==0)
                return false;

            var iindex = data.data.pageNum;
            var icount = data.data.pageCount;
            self.tourist.index = iindex;
            if(refresh){
                $("#travelerPage2").mePage({
                    lang:_LANGUAGE,
                    pageCount:icount,
                    pageIndex:iindex,
                    callback:callback//,
                    //relatedElementsIds:["travelerPage2"]
                });
            }
            var ls = data.data.list;
            if(null == ls) return false;
            for(var i=0; i<ls.length; i++){
                var obj = ls[i];
                var tourCardList = [];
                if(obj.tourCardList.length==0){
                    tourCardList.push(new TourCardInfo());
                }else{
                    for(var j=0; j<obj.tourCardList.length; j++){
                        var tobj = {};
                        tobj = _tourcard[0];
                        for(var ti = 0; ti < _tourcard.length; ti++ ){
                            if(obj.tourCardList[j].cardType.value==_tourcard[ti].value){
                                tobj = _tourcard[ti];
                            }
                        }
                        obj.tourCardList[j].cardType = tobj;
                        tourCardList.push(new TourCardInfo(obj.tourCardList[j]));
                    }
                }
                var certificateList = [];
                if(obj.certificateList.length==0){
                    certificateList.push(new CertificateCardInfo());
                }else{
                    for(var k=0; k<obj.certificateList.length; k++){
                        var certif = obj.certificateList[k];
                        var cobj = {};
                        cobj = _certificateCardTypeList[0];
                        for(var l=0; l<_certificateCardTypeList.length;l++){
                            if(_certificateCardTypeList[l].value != certif.cardType.value) continue;
                            cobj = _certificateCardTypeList[l];
                            break;
                        }
                        certif.cardType = cobj;
                        certif.cardNum = $.base64().decode((typeof(certif.cardNum)=="undefined"?"":certif.cardNum));
                        certificateList.push(new CertificateCardInfo(certif));
                    }
                }
                var acobj = {};
                acobj = _areacode[0];
                for(var aci = 0; aci < _areacode.length; aci++){
                    if(_areacode[aci].acCode==ls[i].mobileAc){
                        acobj = _areacode[aci];
                        break;
                    }
                }
                obj.areaCode = acobj;
                obj.tourCardList=tourCardList;
                obj.certificateList=certificateList;
                for(var z=0,obj_country; z<_country.length; z++){
                    obj_country = _country[z];
                    if(obj_country.code() != obj.country.code) continue;
                    obj.country.countryName = obj_country.countryName();
                    obj.country.citynameen = obj_country.citynameen();
                    break;
                }
                obj.country = new CountryInfo(obj.country);
                obj.mobile = $.base64().decode((typeof(obj.mobile)=="undefined"?"":obj.mobile));
                obj.mail = $.base64().decode((typeof(obj.mail)=="undefined"?"":obj.mail));
                self.tourist.touristList.push(new Tourist(obj));
            }
            var i=0;
        };
        self.tourist.init = function(index){
            if(!index||typeof index != "number"||index < 1){
                index = 1;
            }
            $.ajax({
                type:"GET",
                url:'../me_getMemberCustomerList',
                data:{
                    pageIndex:index
                },
                success:function(data,textStatus){
                    if(data.success==1){

                        self.tourist.manipulateData({
                            data:data,
                            callback:self.tourist.pageTurning,
                            refresh:true
                        });
                    }
                    else{
                        new meDialog({
                            lang:_LANGUAGE,
                            htmlContent: warningStatementTools.getWarningStatement("requestFailed")
                        }).show();
                    }
                }
            });
        }
        self.tourist.searchInit = function(indexout){
            var index,key;
            if(!indexout){
                index =1;
            }else{
                index = indexout;
            }
            var key = self.tourist.searchKey();
            $.ajax({
                type:"GET",
                url:'../me_getSearchCustomer',
                data:{
                    //searchKey:encodeURI(encodeURI(key)),
                    searchKey:encodeURI(key),
                    pageNum:index
                },
                success:function(data,textStatus){
                    if(data.success==1){
                        self.tourist.manipulateData({
                            data:data,
                            callback:self.tourist.searchPageTuring,
                            refresh:true
                        });
                    }
                    else{
                        new meDialog({
                            lang:_LANGUAGE,
                            htmlContent: warningStatementTools.getWarningStatement("requestFailed")
                        }).show();
                    }
                }
            });
        }
    };
    ko.bindingHandlers.fadeVisible = {
        init: function(element, valueAccessor) {
            var value = valueAccessor();
            $(element).toggle(ko.unwrap(value));
        },
        update: function(element, valueAccessor) {
            var value = valueAccessor();
            ko.unwrap(value) ? $(element).fadeIn() : $(element).hide();
        }
    };
    ko.bindingHandlers.slideVisible = {
        init: function(element, valueAccessor) {
            var value = valueAccessor();
            $(element).toggle(ko.unwrap(value));
        },
        update: function(element, valueAccessor) {
            var value = valueAccessor();
            ko.unwrap(value) ? $(element).slideDown() : $(element).slideUp();
        }
    };
    var model = new myelongViewModel();
    model.basicInformation.init();
    ko.applyBindings(model);
    // $(window).bind('beforeunload',function(){
    // 	return "";
    // });
});