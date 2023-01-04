<%@ Page Language="C#"%>
<%

//string Token;
//int RValue;
//Random R = new Random();
//string Lang = "ENG";
//string SID = string.Empty;
//string CT = string.Empty;
//string PCode = string.Empty;
//int GoEwinLogin=0;
string Version = EWinWeb.Version;
//string LoginFailMessage = "";
//if (CodingControl.FormSubmit()) {
//    string LoginGUID = Request["LoginGUID"];
//    string LoginPassword = Request["LoginPassword"];
//    string LoginAccount = Request["LoginAccount"];


//    Newtonsoft.Json.Linq.JObject obj_FingerPrint = new Newtonsoft.Json.Linq.JObject();

//    string UserIP = CodingControl.GetUserIP();
//    EWin.Login.LoginResult LoginAPIResult;
//    EWin.Login.LoginAPI LoginAPI = new EWin.Login.LoginAPI();


//    RValue = R.Next(100000, 9999999);
//    Token = EWinWeb.CreateToken(EWinWeb.PrivateKey, EWinWeb.APIKey, RValue.ToString());

//    LoginAPIResult = LoginAPI.UserLoginByCustomValidate(Token, LoginAccount, LoginPassword, EWinWeb.CompanyCode, UserIP);


//    if (LoginAPIResult.ResultState == EWin.Login.enumResultState.OK) {

//        string EwinCallBackUrl;
//        if ( CodingControl.GetIsHttps())
//        {
//            EwinCallBackUrl =  "https://" + Request.Url.Authority + "/RefreshParent.aspx?index.aspx";
//        }
//        else {
//            EwinCallBackUrl = "http://" + Request.Url.Authority + "/RefreshParent.aspx?index.aspx";
//        }

//        Response.SetCookie(new HttpCookie("RecoverToken", LoginAPIResult.RecoverToken) { Expires = System.DateTime.Parse("2038/12/31") });
//        Response.SetCookie(new HttpCookie("LoginAccount", LoginAccount) { Expires = System.DateTime.Parse("2038/12/31") });
//        Response.SetCookie(new HttpCookie("SID",LoginAPIResult.SID));
//        Response.SetCookie(new HttpCookie("CT", LoginAPIResult.CT));
//        Response.Redirect("RefreshParent.aspx?index.aspx");

//    } else {
//        LoginFailMessage = LoginAPIResult.Message;
//        //Response.Write("<script>var defalutLoginAccount = '" + LoginAccount +"'; var defaultError = function(){ window.parent.showMessageOK('', mlp.getLanguageKey('登入失敗'),function () { })};</script>");
//    }
//}


//if (string.IsNullOrEmpty(Request["SID"]) == false)
//{
//    SID = Request["SID"];
//}

//if (string.IsNullOrEmpty(Request["CT"]) == false)
//    CT = Request["CT"];

//if (string.IsNullOrEmpty(Request["GoEwinLogin"]) == false) {
//    GoEwinLogin = int.Parse(Request["GoEwinLogin"]);
//}

//if (string.IsNullOrEmpty(Request["PCode"]) == false) {
//    PCode = Request["PCode"];
//}

//if (GoEwinLogin == 1) {
//    string EwinCallBackUrl;

//    if (CodingControl.GetIsHttps()) {
//        EwinCallBackUrl = "https://" + Request.Url.Authority + "/RefreshParent.aspx?index.aspx";
//    } else {
//        EwinCallBackUrl = "http://" + Request.Url.Authority + "/RefreshParent.aspx?index.aspx";
//    }
//    Response.Redirect(EWinWeb.EWinGameUrl + "/Game/Login.aspx?CT=" +   HttpUtility.UrlEncode(CT)   + "&KeepLogin=0"  + "&Action=Custom" + "&Callback=" + HttpUtility.UrlEncode(EwinCallBackUrl) + "&CallbackHash=" + CodingControl.GetMD5(EwinCallBackUrl + EWinWeb.PrivateKey, false));
//}



//EWin.Lobby.LobbyAPI lobbyAPI = new EWin.Lobby.LobbyAPI();

//RValue = R.Next(100000, 9999999);
//Token = EWinWeb.CreateToken(EWinWeb.PrivateKey, EWinWeb.APIKey, RValue.ToString());

//if (string.IsNullOrEmpty(Request["Lang"]))
//{
//    string userLang = CodingControl.GetDefaultLanguage();

//    if (userLang.ToUpper() == "zh-TW".ToUpper())
//    {
//        Lang = "CHT";
//    }
//    else if (userLang.ToUpper() == "zh-HK".ToUpper())
//    {
//        Lang = "CHT";
//    }
//    else if (userLang.ToUpper() == "zh-MO".ToUpper())
//    {
//        Lang = "CHT";
//    }
//    else if (userLang.ToUpper() == "zh-CHT".ToUpper())
//    {
//        Lang = "CHT";
//    }
//    else if (userLang.ToUpper() == "zh-CHS".ToUpper())
//    {
//        Lang = "CHT";
//    }
//    else if (userLang.ToUpper() == "zh-SG".ToUpper())
//    {
//        Lang = "CHT";
//    }
//    else if (userLang.ToUpper() == "zh-CN".ToUpper())
//    {
//        Lang = "CHT";
//    }
//    else if (userLang.ToUpper() == "zh".ToUpper())
//    {
//        Lang = "CHT";
//    }
//    else if (userLang.ToUpper() == "en-US".ToUpper())
//    {
//        Lang = "ENG";
//    }
//    else if (userLang.ToUpper() == "en-CA".ToUpper())
//    {
//        Lang = "ENG";
//    }
//    else if (userLang.ToUpper() == "en-PH".ToUpper())
//    {
//        Lang = "ENG";
//    }
//    else if (userLang.ToUpper() == "en".ToUpper())
//    {
//        Lang = "ENG";
//    }
//    else if (userLang.ToUpper() == "ko-KR".ToUpper())
//    {
//        Lang = "ENG";
//    }
//    else if (userLang.ToUpper() == "ko-KP".ToUpper())
//    {
//        Lang = "ENG";
//    }
//    else if (userLang.ToUpper() == "ko".ToUpper())
//    {
//        Lang = "ENG";
//    }
//    else if (userLang.ToUpper() == "ja".ToUpper())
//    {
//        Lang = "ENG";
//    }
//    else { Lang = "ENG"; }
//}
//else
//{
//    Lang = Request["Lang"];

//    Lang = Lang.ToUpper();
//}

%>
<!doctype html>
<html id="myHTML" lang="zh-Hant-TW" class="mainHtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

    <title>Lucky Sprite - Most popular online casino</title>
    <meta name='keywords' content="Casino、Slot、Amusement、Game、Auto Fast Deposits and Withdrawals" />
    <meta name='description' content="Partners with a wide variety of well-known game brands, we provide fast deposit and withdrawal options, so you can play and have fun whenever you want!" />
    <meta property="og:site_name" content="Lucky Sprite" />
    <meta property="og:title" content="Most popular online casino - Lucky Sprite" />
    <meta property="og:Keyword" content="Auto Fast Deposits and Withdrawals" />
    <meta property="og:description" content="Partners with a wide variety of well-known game brands, we provide fast deposit and withdrawal options, so you can play and have fun whenever you want!" />

    <%--<meta property="og:url" content="https://www.free-maharaja.com/" />--%>
    <!--日文圖片-->
    <%--<meta property="og:image" content="https://www.free-maharaja.com/images/share_pic.png" />--%>
    <meta property="og:type" content="website" />
    <!-- Share image -->
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link rel="bookmark" href="images/favicon.ico"/>
    <link rel="apple-touch-icon" href="images/share_pic.png"/>
    <!--日文圖片-->
    <link rel="image_src" href="https://www.free-maharaja.com/images/share_pic.png">
    <link rel="stylesheet" href="css/basic.min.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/lobby.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;500&display=swap" rel="Prefetch" as="style" onload="this.rel = 'stylesheet'" />

    <link rel="alternate" hreflang="ja" href="https://www.free-maharaja.com/index.aspx?Lang=JPN">
    <link rel="alternate" hreflang="ja-jp" href="https://www.free-maharaja.com/index.aspx?Lang=JPN">
    <link rel="alternate" hreflang="zh-cn" href="https://www.free-maharaja.com/index.aspx?Lang=CHT">
    <link rel="alternate" hreflang="zh-tw" href="https://www.free-maharaja.com/index.aspx?Lang=CHT">
    <link rel="alternate" hreflang="zh" href="https://www.free-maharaja.com/index.aspx?Lang=CHT">
    <link rel="alternate" hreflang="zh-hk" href="https://www.free-maharaja.com/index.aspx?Lang=CHT">
   <script src="https://genieedmp.com/dmp.js?c=6780&ver=2" async></script>
    
</head>

<% if (EWinWeb.IsTestSite == false)
    { %>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-097DC2GB6H"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-097DC2GB6H');
</script>
<% } %>

<script 
  src="https://code.jquery.com/jquery-2.2.4.js"
    integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
    crossorigin="anonymous"></script>
<script type="text/javascript" src="/Scripts/PaymentAPI.js?<%:Version%>"></script>
<script type="text/javascript" src="Scripts/popper.min.js"></script>
<script type="text/javascript" src="/Scripts/LobbyAPI.js?<%:Version%>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/Scripts/Common.js"></script>
<script type="text/javascript" src="/Scripts/UIControl.js"></script>
<script type="text/javascript" src="/Scripts/MultiLanguage.js"></script>
<script type="text/javascript" src="/Scripts/Math.uuid.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.7.1/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bignumber.js/9.0.2/bignumber.min.js"></script>
<script type="text/javascript" src="/Scripts/GameCodeBridge.js?1"></script>
<script type="text/javascript" src="/Scripts/NoSleep.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lozad.js/1.16.0/lozad.min.js"></script>
<script>
    var isSent = false;
    var c = new common();
    var MessageModal;
    var needCheckLogin = false;
    var gameWindow;
    var EWinWebInfo = {
        EWinUrl: "<%=EWinWeb.EWinUrl %>",
        ImageUrl: "<%=EWinWeb.ImageUrl %>",
        EWinGameUrl: "<%=EWinWeb.EWinGameUrl %>",
        MainCurrencyType: "<%=EWinWeb.MainCurrencyType %>",
        RegisterCurrencyType: "<%=EWinWeb.RegisterCurrencyType %>",
        UserLogined: false,
        FirstLoaded: false,
        Lang: "ENG",
        UserInfo: null,
        DeviceType: getOS(),
        IsOpenGame: false
    };
 
    var jsonGames = [
        {
            GameName: '21003',
            GameBrand: 'FC',
            GameLangNameCHT: '大圣捕鱼',
            GameLangNameENG: 'MONKEY KING FISHING',
            NeedLogin: false
        }, {
            GameName: '21004',
            GameBrand: 'FC',
            GameLangNameCHT: '宝船捕鱼',
            GameLangNameENG: 'BAO CHUAN FISHING',
            NeedLogin: false
        }, {
            GameName: '21006',
            GameBrand: 'FC',
            GameLangNameCHT: '激斗捕鱼',
            GameLangNameENG: 'FIERCE FISHING',
            NeedLogin: false
        }, {
            GameName: '21007',
            GameBrand: 'FC',
            GameLangNameCHT: '发财捕鱼',
            GameLangNameENG: 'FA CHAI FISHING',
            NeedLogin: false
        },
        {
            GameName: '21008',
            GameBrand: 'FC',
            GameLangNameCHT: '星际捕鱼',
            GameLangNameENG: 'STAR HUNTER',
            NeedLogin: true
        },
        {
            GameName: '242',
            GameBrand: 'BNG',
            GameLangNameCHT: '丛林之王-集鸿运',
            GameLangNameENG: 'Tiger Jungle',
            NeedLogin: true
        }, {
            GameName: '228',
            GameBrand: 'BNG',
            GameLangNameCHT: '淘⾦乐-集鸿运',
            GameLangNameENG: 'Hit The Gold!',
            NeedLogin: true
        }, {
            GameName: '254',
            GameBrand: 'BNG',
            GameLangNameCHT: '黑狼-集鸿运',
            GameLangNameENG: 'Black Wolf',
            NeedLogin: true
        },
        {
            GameName: '250',
            GameBrand: 'BNG',
            GameLangNameCHT: '轰炸糖果',
            GameLangNameENG: 'Candy Boom',
            NeedLogin: true
        }, {
            GameName: '274',
            GameBrand: 'BNG',
            GameLangNameCHT: '惊天大盗',
            GameLangNameENG: 'Big Heist',
            NeedLogin: true
        }
        ,
        //{
        //    GameName: '52',
        //    GameBrand: 'CQ9',
        //    GameLangNameCHT: '跳高高',
        //    GameLangNameENG: 'JumpHigh',
        //    NeedLogin: true
        //}, {
        //    GameName: '7',
        //    GameBrand: 'CQ9',
        //    GameLangNameCHT: '跳起来',
        //    GameLangNameENG: 'Rave Jump',
        //    NeedLogin: true
        //}, {
        //    GameName: 'AT01',
        //    GameBrand: 'CQ9',
        //    GameLangNameCHT: '一炮捕鱼',
        //    GameLangNameENG: 'Oneshot Fishing',
        //    NeedLogin: true
        //}, {
        //    GameName: '179',
        //    GameBrand: 'CQ9',
        //    GameLangNameCHT: '跳高高2',
        //    GameLangNameENG: 'Jump High 2',
        //    NeedLogin: true
        //}, {
        //    GameName: '31',
        //    GameBrand: 'CQ9',
        //    GameLangNameCHT: '武圣',
        //    GameLangNameENG: 'God of War',
        //    NeedLogin: true
        //},
        {
            GameName: 'SMG_bookOfOz',
            GameBrand: 'MG2',
            GameLangNameCHT: 'Book of Oz',
            GameLangNameENG: 'Book of Oz',
            NeedLogin: true
        }, {
            GameName: 'SMG_9masksOfFire',
            GameBrand: 'MG2',
            GameLangNameCHT: '9 Masks Of Fire',
            GameLangNameENG: '9 Masks Of Fire',
            NeedLogin: true
        }, {
            GameName: 'SMG_laraCroftTemplesAndTombs',
            GameBrand: 'MG2',
            GameLangNameCHT: 'Lara Croft Temples and Tombs',
            GameLangNameENG: 'Lara Croft Temples and Tombs',
            NeedLogin: true
        }, {
            GameName: 'SMG_thunderstruck2',
            GameBrand: 'MG2',
            GameLangNameCHT: 'Thunderstruck II',
            GameLangNameENG: 'Thunderstruck II',
            NeedLogin: true
        }, {
            GameName: '545',
            GameBrand: 'WM',
            GameLangNameCHT: 'Banana King',
            GameLangNameENG: 'Banana King',
            NeedLogin: true
        }, {
            GameName: '481',
            GameBrand: 'WM',
            GameLangNameCHT: 'Book Of Pharaon HD',
            GameLangNameENG: 'Book Of Pharaon HD',
            NeedLogin: true
        }, {
            GameName: '854',
            GameBrand: 'WM',
            GameLangNameCHT: 'Jinge Belf',
            GameLangNameENG: 'Jinge Belf',
            NeedLogin: true
        }, {
            GameName: '811',
            GameBrand: 'WM',
            GameLangNameCHT: 'Dragons’Queen',
            GameLangNameENG: 'Dragons’Queen',
            NeedLogin: true
        }, {
            GameName: '802',
            GameBrand: 'WM',
            GameLangNameCHT: 'Magic Frog',
            GameLangNameENG: 'Magic Frog',
            NeedLogin: true
        }, {
            GameName: '853',
            GameBrand: 'WM',
            GameLangNameCHT: 'Lotus Luck',
            GameLangNameENG: 'Lotus Luck',
            NeedLogin: true
        }, {
            GameName: '822',
            GameBrand: 'WM',
            GameLangNameCHT: 'Golden Tree',
            GameLangNameENG: 'Golden Tree',
            NeedLogin: true
        }
    ];

    function getOS() {
        var os = function () {
            var ua = navigator.userAgent,
                isWindowsPhone = /(?:Windows Phone)/.test(ua),
                isSymbian = /(?:SymbianOS)/.test(ua) || isWindowsPhone,
                isAndroid = /(?:Android)/.test(ua),
                isFireFox = /(?:Firefox)/.test(ua),
                isChrome = /(?:Chrome|CriOS)/.test(ua),
                isTablet = /(?:iPad|PlayBook)/.test(ua) || (isAndroid && !/(?:Mobile)/.test(ua)) || (isFireFox && /(?:Tablet)/.test(ua)),
                isPhone = /(?:iPhone)/.test(ua) && !isTablet,
                isPc = !isPhone && !isAndroid && !isSymbian;
            return {
                isTablet: isTablet,
                isPhone: isPhone,
                isAndroid: isAndroid,
                isPc: isPc
            };
        }();

        if (os.isAndroid || os.isPhone) {
            return 1;
        } else if (os.isTablet) {
            return 1;
        } else if (os.isPc) {
            return 0;
        }
    };

    function init() {
        mlp = new multiLanguage();
   
        switch (EWinWebInfo.Lang) {
            case "JPN":
                LangText = "日本語";
                $("#btn_switchlang").append(`<i class="icon icon-mask icon-flag-JP"></i>`);
                $('#footerLangIcon').addClass('icon-flag-JP');
                $('#footerLangText').text(LangText);

                break;
            case "CHT":
                LangText = "繁體中文";
                $("#btn_switchlang").append(`<i class="icon icon-mask icon-flag-ZH"></i>`);
                $('#footerLangIcon').addClass('icon-flag-ZH');
                $('#footerLangText').text(LangText);
                break;
            case "ENG":
                LangText = "ENG";
                $("#btn_switchlang").append(`<i class="icon icon-mask icon-flag-JP"></i>`);
                $('#langIcon').addClass('icon-flag-JP');
                $('#footerLangText').text(LangText);
                break;
            case "CHS":
                LangText = "簡體中文";
                $("#btn_switchlang").append(`<i class="icon icon-mask icon-flag-ZH"></i>`);
                $('#footerLangIcon').addClass('icon-flag-ZH');
                $('#footerLangText').text(LangText);
                break;
            default:
                LangText = "日本語";
                $("#btn_switchlang").append(`<i class="icon icon-mask icon-flag-JP"></i>`);
                $('#footerLangIcon').addClass('icon-flag-JP');
                $('#footerLangText').text(LangText);
                break;
        }

        mlp.loadLanguage(EWinWebInfo.Lang, function () {

            appendGameFrame();
            appendGameItem();
            closeLoading();
        });


        $(function () {
            //document.onkeydown = function (e) {
            //    var ev = document.all ? window.event : e;
            //    if (ev.keyCode == 13) {
            //        onBtnSendLogin();
            //    }
            //}
        });
    }


    function showPartialHtml(title, pathName, isNeedLang, cbOK) {
        var realPath;
        var divMessageBox = document.getElementById("alertPartialHtml");
        var divMessageBoxOKButton = divMessageBox.querySelector(".alertPartialHtml_OK");
        var divMessageBoxTitle = divMessageBox.querySelector(".alertPartialHtml_Title");
        var divMessageBoxContent = divMessageBox.querySelector(".alertPartialHtml_Content");
        var modal = new bootstrap.Modal(divMessageBox);

        if (isNeedLang) {
            realPath = pathName + "_" + EWinWebInfo.Lang + ".html";
        } else {
            realPath = pathName + ".html";
        }

        if (divMessageBox != null) {
            if (divMessageBoxOKButton != null) {
                divMessageBoxOKButton.onclick = function () {
                    divMessageBoxContent.innerHTML = "";
                    modal.hide();

                    if (cbOK != null)
                        cbOK();
                }
            }

            divMessageBoxTitle.innerHTML = title;

            $(divMessageBoxContent).load(realPath, function () {
                modal.toggle();
            });
        }
    }

    function CloseGameFrame() {
        $('body').removeClass('modal-open');
        //滿版遊戲介面
        $('#divGameFrame').css('display', 'none');
        //滿版遊戲介面 end
        appendGameFrame();
    }

    function appendGameFrame() {
        $("#divGameFrame").children().remove();
        let vw = Math.max(document.documentElement.clientWidth || 0, window.innerWidth || 0);
        let vh = Math.max(document.documentElement.clientHeight || 0, window.innerHeight || 0);

        let w = vh * 16 / 9;

        if (w > vw) {
            w = vw - 110;
        } else if (Math.abs(vw - w) < 110) {
            w = vw - 110;
        }

        // class="divGameFrame"
        let tmp = `<div class="divGameFrameWrapper">
            <div class="btn-wrapper">
                <div class="btn btn-game-close" onclick="CloseGameFrame()"><i class="icon icon-mask icon-error"></i></div>
            </div>
            <iframe id="GameIFramePage" style="width:${w}px;height:${vh}px;background-color:#09f" name="mainiframe" sandbox="allow-same-origin allow-scripts allow-popups allow-forms allow-pointer-lock"></iframe>
        </div>`;
        $("#divGameFrame").append(tmp);
    }

    function showLoading() {
        $('.loader-container').show();
        $('.loader-backdrop').hide();
    }

    function closeLoading() {
        $('.loader-backdrop').show();
        $('.loader-container').fadeOut(250, function () {
            $('.iframe-container').show();
        });
    }

    function openHeaderGame() {
         openGame('BNG', '242', mlp.getLanguageKey("叢林之王-集鴻運"));    
    }

    function showMessageOK(title, message, cbOK) {
        if ($("#alertMsg").attr("aria-hidden") == 'true') {
            var divMessageBox = document.getElementById("alertMsg");
            var divMessageBoxCloseButton = divMessageBox.querySelector(".alertMsg_Close");
            var divMessageBoxOKButton = divMessageBox.querySelector(".alertMsg_OK");
            var divMessageBoxContent = divMessageBox.querySelector(".alertMsg_Text");

            if (MessageModal == null) {
                MessageModal = new bootstrap.Modal(divMessageBox, { backdrop: 'static', keyboard: false });
            }

            if (divMessageBox != null) {
                MessageModal.show();

                if (divMessageBoxCloseButton != null) {
                    divMessageBoxCloseButton.classList.add("is-hide");
                }

                if (divMessageBoxOKButton != null) {

                    divMessageBoxOKButton.onclick = function () {
                        MessageModal.hide();

                        if (cbOK != null)
                            cbOK();
                    }
                }

                divMessageBoxContent.innerHTML = message;
            }
        }
    }

    function showUserLogInModal() {
        $('#userLogin').click();
        $('#ModalUserLogIn').modal('show');
    }

    function showCreateAccountModal() {
        $('#userRegister').click();
        $('#ModalUserLogIn').modal('show');
    }

    function openGame(gameBrand, gameName, gameLangName) {

        if (gameWindow) {
            gameWindow.close();
        }

        EWinWebInfo.IsOpenGame = true;

        $('.headerGameName').text(gameLangName);

        if (EWinWebInfo.DeviceType == 1) {
            gameWindow = window.open("/OpenGame.aspx?Lang=" + EWinWebInfo.Lang + "&CurrencyType=" + EWinWebInfo.MainCurrencyType + "&GameCode=" + gameBrand + "." + gameName + "&HomeUrl=" + "<%=EWinWeb.CasinoWorldUrl%>/CloseGame.aspx", "");
        } else {
            GameLoadPage("/OpenGame.aspx?Lang=" + EWinWebInfo.Lang + "&CurrencyType=" + EWinWebInfo.MainCurrencyType + "&GameCode=" + gameBrand + "." + gameName + "&HomeUrl=" + "<%=EWinWeb.CasinoWorldUrl%>/CloseGame.aspx");
        }
    }

    function getCookie(cname) {
        var name = cname + "=";
        var decodedCookie = decodeURIComponent(document.cookie);
        var ca = decodedCookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }

    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }

    function delCookie(name) {
        var exp = new Date();
        exp.setTime(exp.getTime() - 1);
        cval = getCookie(name);
        if (cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
    }

    function GameLoadPage(url, gameBrand, gameName) {
        $('body').addClass('modal-open');
        var IFramePage = document.getElementById("GameIFramePage");

        if (IFramePage != null) {
            //非滿版遊戲介面
            // $('#headerGameDetailContent').show();
            // $('#GameIFramePage').show();
            //非滿版遊戲介面 end

            //滿版遊戲介面
            $('#divGameFrame').css('display', 'flex');
            //滿版遊戲介面 end

            //var showCloseGameTooltipCount = getCookie("showCloseGameTooltip");
            //if (showCloseGameTooltipCount == '') {
            //    showCloseGameTooltipCount = 0;
            //} else {
            //    showCloseGameTooltipCount = parseInt(showCloseGameTooltipCount);
            //}
            //if (showCloseGameTooltipCount < 3) {
            //    $('#closeGameBtn').tooltip('show');
            //    if (showCloseGameTooltipCount == 0) {
            //        setCookie("showCloseGameTooltip", 1, 365);
            //    } else {
            //        setCookie("showCloseGameTooltip", parseInt(showCloseGameTooltipCount) + 1, 365);
            //    }
            //}

            if (IFramePage.tagName.toUpperCase() == "IFRAME".toUpperCase()) {
                showLoading();

                setTimeout(function () {
                    closeLoading();
                }, 10000);

                IFramePage.src = url;
                IFramePage.onload = function () {
                    closeLoading();
                }
            }
        }
    }

    function appendGameItem() {
        $('#gameList').empty();

        for (var i = 0; i < jsonGames.length; i++) {
            var data = jsonGames[i];
            var gamefree = "";
            var gamelangName = "";
         
            if (EWinWebInfo.Lang == 'ENG') {
                gamelangName = data.GameLangNameENG;
            } else {
                gamelangName = data.GameLangNameCHT;
            }

            var imgsrc = `${EWinWebInfo.ImageUrl}/${data.GameBrand}/${EWinWebInfo.Lang}/${data.GameName}.png`;
            var gameItem = `<div class="game-item ${gamefree}">
                        <div class="game-item-inner">
                            <div class="game-item-link" onclick="openGame('${data.GameBrand == "MG2" ? "MG" : data.GameBrand}','${data.GameName}','${gamelangName}',${data.NeedLogin})" onmouseover="">
                                <div class="game-item-img">
                                    <div class="img-wrap">
                                        <img class="gameimg lozad"
                                            src="${imgsrc}" onerror="showDefauktGameIcon('${data.GameBrand}', '${data.GameName}')">
                                    </div>
                                </div>
                                <div class="game-item-info">
                                    <div class="game-item-info-inner">
                                        <h3 class="game-item-name">${gamelangName}</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`;
            $('#gameList').append(gameItem);
  
        }

        //$('#gameList').append(`<div class="wrapper_center" id="wrapper_center">
        //                <div class="btn btn-more" onclick="appendGameItem2()">${mlp.getLanguageKey("查看更多")}</div>
        //            </div>`);

    }

    function showDefauktGameIcon(GameBrand, GameName) {
        var el = event.target;
        el.onerror = showDefauktGameIcon2;
        el.src = EWinWebInfo.ImageUrl + "/" + GameBrand + "/ENG/" + GameName + ".png";
    }

    function showDefauktGameIcon2() {

        var el = event.target;
        el.onerror = null;
        el.src = EWinWebInfo.ImageUrl + "/default.png";
    }

    function appendGameItem2() {
        $('#wrapper_center').remove();
        for (var i = 30; i < jsonGames.length; i++) {
            var data = jsonGames[i];
            var gamefree = "";
            var gamelangName = "";
            if (!data.NeedLogin) {
                gamefree = 'game-free';
            }

            if (EWinWebInfo.Lang == 'JPN') {
                gamelangName = data.GameLangNameENG;
            } else {
                gamelangName = data.GameLangNameCHT;
            }
 
            var gameItem = `<div class="game-item ${gamefree}">
                        <div class="game-item-inner">
                            <div class="game-item-link" onclick="openGame('${data.GameBrand}','${data.GameName}','${gamelangName}',${data.NeedLogin})" onmouseover="">
                                <div class="game-item-img">
                                    <div class="img-wrap">
                                        <img class="gameimg lozad"
                                            src="${EWinWebInfo.ImageUrl}/${data.GameBrand}/ENG/${data.GameName}.png">
                                    </div>
                                </div>
                                <div class="game-item-info">
                                    <div class="game-item-info-inner">
                                        <h3 class="game-item-name">${gamelangName}</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`;

            $('#gameList').append(gameItem);

        }
    }

    function showLangProp() {

        if (EWinWebInfo.Lang=='ENG') {
        $('.lang-popup-list').eq(0).find('input').eq(0).prop("checked", true);
        } else {
        $('.lang-popup-list').eq(0).find('input').eq(1).prop("checked", true);
        }

        $('#ModalLanguage').modal('show');
    }


    window.onload = init;
</script>

<body class="mainBody vertical-menu">
    <div class="loader-container">
        <div class="loader-box">
            <div class="loader-spinner">
                <div class="sk-fading-circle">
                    <div class="loader-logo"></div>
                    <div class="sk-circle1 sk-circle"></div>
                    <div class="sk-circle2 sk-circle"></div>
                    <div class="sk-circle3 sk-circle"></div>
                    <div class="sk-circle4 sk-circle"></div>
                    <div class="sk-circle5 sk-circle"></div>
                    <div class="sk-circle6 sk-circle"></div>
                    <div class="sk-circle7 sk-circle"></div>
                    <div class="sk-circle8 sk-circle"></div>
                    <div class="sk-circle9 sk-circle"></div>
                    <div class="sk-circle10 sk-circle"></div>
                    <div class="sk-circle11 sk-circle"></div>
                    <div class="sk-circle12 sk-circle"></div>
                </div>
                <%--<div class="loader-text language_replace">正在加載...</div>--%>
            </div>
        </div>
        <div class="loader-backdrop is-show"></div>
    </div>
    <header class="header_area" id="">
        <div class="header_menu ">
            <!-- class="navbar-expand-xl" trigger hidden -->
            <nav class="navbar">
                <!-- TOP Search-->
                <div class="search-full" id="header_SearchFull">
                    <div class="container-fluid">
                        <form class="search__wrapper">
                            <div class="form-group-search search-plusbutton">
                                <input id="" type="search" class="form-control custom-search" name="search" language_replace="placeholder" placeholder="輸入帳號">
                                <label for="search" class="form-label"><span class="language_replace">輸入帳號</span></label>
                                <div class="btn btnSearch"><span class="language_replace">搜尋</span></div>
                                <button type="reset" class="btn btnReset"><i class="icon icon-ewin-input-reset"></i></button>
                            </div>
                            <span class="btn btn__closefullsearch" onclick="SearchControll.closeFullSearch(this)"><i class="icon icon-ewin-input-compress"></i></span>
                        </form>
                    </div>
                </div>
                <div class="container-fluid navbar__content">
                    <!--MENU BUTTON -->                    
                    <button id="navbar_toggler" class="navbar-toggler is-hide" type="button" data-toggle="collapse" data-target="#navbarMenu" aria-controls="navbarMenu" aria-expanded="false" aria-label="Toggle navigation">
                         <!-- 通知小紅點-手機版時加入 -->
                        <div class="notify-dot mobile-notify-dot" style="display:none;"></div>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   
                   
                    <!-- 頂部 NavBar -->
                    <div class="header_topNavBar">
                        <!-- 左上角 -->
                        <div class="header_leftWrapper navbar-nav" onclick="">
                            <div class="navbar-brand">
                                <div class="logo"><a></a></div>
                            </div>
                        </div>
                        <div id="headerGameDetailContent" style="display: none;">
                            <!-- Search -->
                            <ul class="nav header_setting_content">
                                <li class="headerGameDetail navbar-search nav-item">
                                    <button id="closeGameBtn" type="button" onclick="CloseGameFrame()" data-toggle="tooltip" data-placement="bottom" class="btn btn-search" style="background: white;">
                                        <i class="icon">X</i>
                                    </button>
                                    <span class="headerGameName"></span>

                                </li>
                            </ul>
                        </div>
                        <!-- 右上角 -->
                        <div class="header_rightWrapper">

                            <div class="header_setting">
                                <ul class="nav header_setting_content">
                                    <!-- ==== 導入正式站 ====-->
                                    <li class="register">
                                        <button class="btn-register" type="button"><span class="language_replace" langkey="前往正式站">Official Site Go</span></button>
                                    </li>
                                    <!-- ==== 登入前 ====-->
                                   <%-- <li class="nav-item unLogIn_wrapper " id="idLoginBtn">
                                        <ul class="horiz-list">
                                            <li class="login">
                                                <button class="btn-login btn" type="button" onclick="showUserLogInModal()" data-toggle="modal">
                                                    <span class="avater">
                                                        <img src="images/avatar/avater-2.png" alt=""></span>
                                                    <span class="language_replace" id="idUserLogInBtn">登入</span></button>
                                            </li>
                                            <li class="register">
                                                <button class="btn-register btn " type="button" onclick="showCreateAccountModal()" data-toggle="modal"><span class="language_replace">註冊</span></button>
                                            </li>
                                        </ul>
                                    </li>--%>
                                    <!--  ==== 登入後 ====-->
                                  <%--  <li class="nav-item logIned_wrapper is-hide" id="idMenuLogin">
                                        <ul class="horiz-list">
                                            <li class="nav-item login">
                                                <button class="btn-logout btn" type="button" onclick="logout(true)">
                                                    <span class="avater">
                                                        <img src="images/avatar/avater-2.png" alt=""></span>
                                                    <span class="language_replace">登出</span></button>
                                            </li>
                                            <!-- User -->
                                            <!-- <li class="nav-item submenu dropdown avater_wrapper">
                                                <a onclick="API_LoadPage('MemberCenter', 'MemberCenter.aspx', true)" class="btn nav-link btnDropDown " role="button">
                                                    <span class="avater">
                                                        <span class="avater-img">
                                                            <img src="images/avatar/avater-2.png" alt="">
                                                        </span>
                                                        <span class="avater-name">kevin@kingkey.com.tw</span>
                                                    </span>
                                                </a>
                                            </li> -->
                                        </ul>
                                    </li>--%>

                                    <!-- 語系 -->
                                    <li class="nav-item lang_wrapper submenu dropdown is-hide" style="display:none">
                                        <button type="button" class="btn nav-link btn-langExchange" data-toggle="modal" data-target="#ModalLanguage" id="btn_switchlang">
                                            <!-- 語系 轉換 ICON -->
                                            <%--<i class="icon icon-mask icon-flag-JP"></i>
                                            <i class="icon icon-mask icon-flag-EN"></i>
                                            <i class="icon icon-mask icon-flag-ZH"></i>--%>
                                        </button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div id="mask_overlay" class="mask_overlay"></div>
    </header>
    <div class="main_area">
        
        <section class="section-main-banner">
            <a href="#" class="hero-wrapper" target="_blank">
                <div class="hero-item mobile">
                    <div class="img-wrap"><img src="images/main-banner-m.png" alt=""></div>
                </div>
                <div class="hero-item desktop">
                    <div class="img-wrap"><img src="images/main-banner.png" alt=""></div>
                </div>
            </a>
        </section>
        <!-- 各分類-單一遊戲推薦區 -->
        <section class="section-category-dailypush">
            
            <div class="container">                
                <!-- hot -->
                <div class="category-dailypush-wrapper hot">
                    <div class="category-dailypush-inner">
                        <div class="category-dailypush-img" style="background-color: #111a17;">
                            <div class="img-box mobile">
                                <div class="img-wrap">
                                    <img src="/images/lobby/dailypush-hot-M-001.jpg" alt="">
                                </div>
                            </div>
                            <div class="img-box pad">
                                <div class="img-wrap">
                                    <img src="/images/lobby/dailypush-hot-MD-001.jpg" alt="">
                                </div>
                            </div>
                            <div class="img-box desktop">
                                <div class="img-wrap">
                                    <img src="/images/lobby/dailypush-hot-001.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="category-dailypush-cotentBox">
                            <div class="category-dailypush-cotent">
                                <h2 class="title language_replace">Today's Best</h2>
                                <div class="info">
                                    <h3 class="gamename language_replace">Tiger Jungle</h3>
                                    <div class="detail">
                                        <span class="gamebrand language_replace">BNG</span>
                                        <span class="gamecategory language_replace">Slot</span>
                                    </div>
                                </div>
                            
                                <div class="action">
                                    <button class="btn btn-play" onclick="openHeaderGame()"><span class="language_replace">Play</span></button>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                          
            </div>
        </section>

         <!-- 遊戲推薦區 -->
         <section class="section-gamesArea">
            <section class="float_banner_wrap">
                <a class="float_close" href="#"><img src="images/arrow-right2.svg" alt=""></a>
                <a class="float_Banner" href="#"><img src="images/float_banner1.jpg" alt=""></a>
                <a class="float_Banner" href="#"><img src="images/float_banner2.jpg" alt=""></a>
                <a class="float_Banner" href="#"><img src="images/float_banner3.jpg" alt=""></a>
            </section>
            <div class="container">
                <div class="game-list" id="gameList">
                    
                 <%--   <div class="wrapper_center">
                        <div class="btn btn-more" onclick="">查看更多</div>
                    </div>--%>
                </div>
                <a class="bottom_banner" href="#" target="_blank">
                    <div class="category-dailypush-inner">
                        <div class="category-dailypush-img">
                            <div class="img-box mobile"><img src="images/bottom_banner_m.jpg" alt=""></div>
                            <div class="img-box pad"><img src="images/bottom_banner_md.jpg" alt=""></div>
                            <div class="img-box desktop"><img src="images/bottom_banner.jpg" alt=""></div>
                        </div>
                    </div>
                </a>
            </div>
         </section>

           <!-- 介紹說明 -->
          <section class="section-webDesc">
            <div class="container">
                <div class="section-Wrapper">
                    <h2 class="sec-webDesc-title language_replace">Sprite Free Version Debut</h2>
                    <p class="language_replace">No matter if you are a beginner who has never played a Sprite game or you want to learn what games Sprite has, you can now enjoy free games in Sprite Free Edition with no cost involved. Sprite Free Edition is a completely free gaming site that can be accessed by anyone.</p>
                </div>
                <div class="section-Wrapper">
                    <h2 class="sec-webDesc-title language_replace">What is Sprite Free Edition?</h2>
                    <p class="language_replace">Sprite has a legally licensed professional license. As part of the free version, we have also carefully selected the most popular and trending games of the moment. Here, you will be able to experience a variety of game types.</p>
                </div>
                <div class="section-Wrapper">
                    <h2 class="sec-webDesc-title language_replace">What kind of games can be played?</h2>
                    <p class="language_replace">There are more than 60 types of games available in Sprite Free Edition. Additionally, there are popular table games such as roulette and blackjack in addition to the addictive slot machines with exciting special effects.</p>
                    <ul class="game-type-list">
                        <li class="game-type-item">
                            <div class="img-crop">
                                <img src="images/icon/icon-slot-red.svg" alt="">
                            </div>
                            <h3 class="game-type-name language_replace">Free Edition Slots</h3>
                            <p class="game-type-desc language_replace">In Sprite Free Edition, slots are one of the most popular games. The gorgeous and cool effects of the slot machine game, as well as the Spritestic bonuses that can be won, are all part of its appeal. You simply need to click the "SPIN" button to begin the game, which is very simple to play. It is therefore recommended to all beginners.</p>
                        </li>
                        <li class="game-type-item">
                            <div class="img-crop">
                                <img src="images/icon/icon-poker-red.svg" alt="">
                            </div>
                            <h3 class="game-type-name language_replace">Free Table Games</h3>
                            <p class="game-type-desc language_replace">There are also a number of table games featured in the free version of Sprite, primarily card games and roulette with numbered discs. You may also choose from table games that are hosted by the dealer, in addition to those that can be played alone at your own pace. It is your choice how you wish to play.</p>
                        </li>
                    </ul>
                </div>
                <div class="section-Wrapper">
                    <h2 class="sec-webDesc-title language_replace">Enjoy the game anytime, anywhere!</h2>
                    <p class="sec-webDesc-subtitle language_replace">To begin playing for free in Sprite Free Edition, simply click on the game of your choice. Additionally, you can play on your smartphone or tablet, as well as on a PC. Enjoy the free version of Sprite!</p>
                </div>
                <div class="section-Wrapper">
                    <h2 class="sec-webDesc-title language_replace">Registration is fast and easy!</h2>
                    <p class="language_replace">Click "Register for Free", enter your mobile phone number and password, and you can quickly complete the registration process. In less than a minute, you can play all of the games in Sprite Free Edition!</p>
                </div>
            </div>
          </section>
    </div>
    <!-- footer -->
    <div id="footer">
        <footer class="footer-container">
            <div class="footer-inner">
                <div class="container">

                    <ul class="company-info row">
                        <%--      <li class="info-item col">
                           <a id="Footer_About" onclick="window.parent.API_LoadPage('About','About.html')"><span class="language_replace">關於我們</span></a>
                        </li>--%>

                        <%--<li class="info-item col">
                            <a id="Footer_ResponsibleGaming" onclick="window.parent.API_ShowPartialHtml('', 'ResponsibleGambling_ENG', false, null)">
                                <span class="language_replace">負責任的賭博</span>
                            </a>
                        </li>--%>

                        <li class="info-item col">
                            <a id="Footer_ResponsibleGaming" onclick="showPartialHtml('', 'ResponsibleGambling_ENG', false, null)">
                                <span class="language_replace">負責任的賭博</span>
                            </a>
                        </li>
                        <li class="info-item col">
                            <a id="Footer_Rules" onclick="showPartialHtml('', 'Rules_ENG', false, null)">
                                <span class="language_replace">利用規約</span>
                            </a>
                        </li>
                        <li class="info-item col">
                            <a id="Footer_PrivacyPolicy" onclick="showPartialHtml('', 'PrivacyPolicy_ENG', false, null)">
                                <span class="language_replace">隱私權政策</span>
                            </a>

                    </ul>
                    <div class="partner">
                        <div class="logo">
                            <div class="row">
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-eWIN.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-microgaming.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-kgs.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-JL.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-FC.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-RICH88.png" alt="">
                                    </div>
                                </div>
                                <%--  
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-bbin.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-gmw.png" alt="">
                                    </div>
                                </div>
                                --%>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-cq9.png" alt="">
                                    </div>
                                </div>
                                <%--  
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-red-tiger.png" alt="">
                                    </div>
                                </div>
                                --%>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-evo.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-bco.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-cg.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-ds88.png" alt="">
                                    </div>
                                </div>
                                <%--  
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-playngo.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-xg.png" alt="">
                                    </div>
                                </div>
                                --%>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-pg.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-cmd.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-wm.png" alt="">
                                    </div>
                                </div>
                                <%-- 
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-bti.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-netent.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-kx.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-evops.png" alt="">
                                    </div>
                                </div>
                                
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-zeus.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-biggaming.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-play.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-h.png" alt="">
                                    </div>
                                </div>
                                <div class="logo-item">
                                    <div class="img-crop">
                                        <img src="/images/logo/footer/logo-va.png" alt="">
                                    </div>
                                </div>
                                --%>
                            </div>
                        </div>
                    </div>

                    <div class="company-detail">
                        
                        <div class="company-address">
                            <p class="address language_replace">Lucky Sprite is owned and operated by Online Chip World Co. N.V.（Registration address：Zuikertuintjeweg Z/N (Zuikertuin Tower), Willemstad, Curacao.) Obtained the license issued by the Curacao government and the registration number:#365 / JAZ recognized, and based on this as a standard.</p>
                        </div>
                    </div>


                    <div class="footer-copyright">
                        <p class="language_replace">Copyright © 2022 Lucky Sprite. All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    
      <!-- Modal Login/Register -->
      <div class="modal fade show customHeader" id="ModalUserLogIn" tabindex="-1" aria-hidden="true" style="display: ;">
        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="btn_PupLangClose">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                     <!-- 登入 TAB-->
                    <input type="radio" name="tabType" value="0" class="tabTypeInput userLogin" id="userLogin">
                    <label for="userLogin" class="tabTypeLabel userLogin language_replace">登入</label>
                    <!-- 註冊 TAB-->
                    <input type="radio" name="tabType" value="1" class="tabTypeInput userRegister" id="userRegister">
                    <label for="userRegister" class="tabTypeLabel userRegister language_replace">註冊</label>
                    <div class="tracking-bar"></div>

                    <div class="content-wrapper wrapper-full">
                         <!-- 登入 -->
                           <form method="post" id="idFormUserLogin">

                               <div class="content-inner login-wrapper">
                                  <div class="content-inner-body">
                                    <div class="form-group">
                                        <label class="form-title language_replace">電子信箱</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" language_replace="placeholder"
                                                placeholder="電子信箱" name="LoginAccount">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-title language_replace">密碼</label>
                                        <div class="input-group">
                                            <input id="login_Password" type="password" class="form-control"
                                                language_replace="placeholder" placeholder="密碼" name="LoginPassword">
                                        </div>
                                        <div class="input-group-append">
                                            <button class="btn btn-icon btn-transparent btn-checkpwd" type="button"
                                                onclick="eyeTogger()">
                                                <!-- class切換=>icon-eye-off/icon-eye -->
                                                <i id="eyeTogger_i" class="icon-moon icon-eye-off"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="wrapper_center">
                                        <button class="btn btn-full-main btn-roundcorner btn-popup-login" type="button"
                                            onclick="onBtnSendLogin()">
                                            <span class="language_replace">登入</span>
                                        </button>
                                    </div>
                                  </div>

                                  <div class="content-inner-footer">
                                    
                                  </div>
                               </div>
                           </form>
                    

                        <!-- 註冊 -->
                        <div class="content-inner register-wrapper">
                            <div class="content-inner-body">
                                <div class="form-group">
                                    <label class="form-title language_replace">電子信箱</label>
                                    <div class="input-group">
                                        <input id="createAccount_Mail" type="text" class="form-control" language_replace="placeholder" placeholder="電子信箱" onkeyup="">
                                    </div>
                                    <div class="input-group-append">
                                        <button onclick="onBtnSendValidateCode()" id="divSendValidateCodeBtn" class="btn btn-icon btn-full-main btn-sendCode" type="button"><span class="language_replace">發送驗證碼</span></button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-title language_replace">驗證碼</label>
                                    <div class="input-group">
                                        <input id="createAccount_ValidateCode" type="text" class="form-control" language_replace="placeholder" placeholder="驗證碼" onkeyup="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-title language_replace">密碼</label>
                                    <div class="input-group">
                                        <input id="createAccount_Password" type="password" class="form-control" language_replace="placeholder" placeholder="密碼" onkeyup="">
                                    </div>
                                    <div class="input-group-append">
                                        <button class="btn btn-icon btn-transparent btn-checkpwd" type="button" onclick="eyeTogger2()">
                                            <!-- class切換=>icon-eye-off/icon-eye -->
                                            <i id="eyeTogger2_i" class="icon-moon icon-eye-off"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-title language_replace">暱稱（部分遊戲遊玩時顯示使用）</label>
                                    <div class="input-group">
                                        <input id="createAccount_NickName" type="text" class="form-control" language_replace="placeholder" placeholder="請輸入暱稱" onkeyup="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-title language_replace">推廣碼</label>
                                    <div class="input-group">
                                        <input id="createAccount_PCode" type="text" class="form-control" language_replace="placeholder" placeholder="若無推廣碼可不填寫" onkeyup="">
                                    </div>
                                </div>
                                <div class="must-mark">
                                    <div class="custom-control custom-checkboxValue text-sm">
                                        <label class="custom-label">
                                            <input type="checkbox" name="chkCreateAccount1" class="custom-control-input-hidden" onclick="" value="" >
                                            <div class="custom-input checkbox"><span class="language_replace"><span class="language_replace">我已年滿20歲，並且已閱讀並同意 利用規約和隱私政策。</span></div>
                                        </label>
                                    </div>
                                    <div class="custom-control custom-checkboxValue text-sm">
                                        <label class="custom-label">
                                            <input type="checkbox" name="chkCreateAccount2" class="custom-control-input-hidden" onclick="" value="" >
                                            <div class="custom-input checkbox"><span class="language_replace">我同意通過我註冊的電子郵件地址接收來自第三方的活動信息和信息</span></div>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="content-inner-footer">
                                <div class="wrapper_center">
                                    <button class="btn btn-full-main btn-roundcorner btn-popup-register" type="button" onclick="createAccount()">
                                        <span class="language_replace">註冊</span>
                                    </button>
                                </div>
                            </div>
                        </div> 
                    </div>        
                </div>
                <!-- <div class="modal-footer">
                    <button type="button" class="btn btn-primary">確定</button>
                </div> -->
            </div>
        </div>
    </div>

     <!-- Modal Language -->
     <div class="modal fade footer-center" id="ModalLanguage" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><span class="language_replace">請選擇語言</span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="btn_PupLangClose">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="lang-popup-wrapper">
                        <ul class="lang-popup-list">
                            <li class="lang-item custom-control custom-radioValue-lang" onclick="switchLang('JPN', true)">
                                <label class="custom-label">
                                    <input type="radio" name="button-langExchange" class="custom-control-input-hidden"
                                        checked>
                                    <div class="custom-input radio-button">
                                        <span class="flag JP"><i class="icon icon-mask icon-flag-JP"></i></span>
                                        <span class="name">日本語</span>
                                    </div>
                                </label>
                            </li>
                            <%--<li class="lang-item custom-control custom-radioValue-lang" onclick="switchLang('ENG', true)">
                                <label class="custom-label">
                                    <input type="radio" name="button-langExchange" class="custom-control-input-hidden">
                                    <div class="custom-input radio-button">
                                        <span class="flag EN"><i class="icon icon-mask icon-flag-EN"></i></span>
                                        <span class="name">English</span>
                                    </div>
                                </label>
                            </li>--%>
                            <li class="lang-item custom-control custom-radioValue-lang" onclick="switchLang('CHT', true)">
                                <label class="custom-label">
                                    <input type="radio" name="button-langExchange" class="custom-control-input-hidden">
                                    <div class="custom-input radio-button">
                                        <span class="flag ZH"><i class="icon icon-mask icon-flag-ZH"></i></span>
                                        <span class="name">繁體中文</span>
                                    </div>
                                </label>
                            </li>
                        </ul>
                    </div>


                </div>
                <%--<div class="modal-footer">
                    <button type="button" class="btn btn-primary">確定</button>
                </div>--%>
            </div>
        </div>
    </div>


     <!--alert Msg-->
    <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="alertMsg" aria-hidden="true" id="alertMsg" style="z-index: 10000;">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><%--<i class="icon-close-small is-hide"></i>--%></span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="modal-body-content">
                        <i class="icon-error_outline primary"></i>
                        <div class="text-wrap">
                            <p class="alertMsg_Text language_replace">變更個人資訊，請透過客服進行 ！</p>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="btn-container">
                        <button type="button" class="alertMsg_OK btn btn-primary btn-sm" data-dismiss="modal"><span class="language_replace">確定</span></button>
                        <button type="button" class="alertMsg_Close btn btn-outline-primary btn-sm" data-dismiss="modal"><span class="language_replace">取消</span></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--alert-->

     <!-- 滿版遊戲介面 -->
    <div id="divGameFrame" class="divGameFrameBody" style="display:none;">
        <div class="divGameFrameWrapper">
            <div class="btn-wrapper">
                <div class="btn btn-game-close" onclick="CloseGameFrame()"><i class="icon icon-mask icon-error"></i></div>
            </div>
            <iframe id="GameIFramePage" class="divGameFrame" name="mainiframe" sandbox="allow-same-origin allow-scripts allow-popups allow-forms allow-pointer-lock"></iframe>
        </div>
    </div>
    <!-- 滿版遊戲介面 end-->

    
    <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="alertPartialHtml" aria-hidden="true" id="alertPartialHtml">
        <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title alertPartialHtml_Title">
                    </div>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="icon-close-small"></i></span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="modal-body-content alertPartialHtml_Content">
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="btn-container">
                        <button type="button" class="alertPartialHtml_OK btn btn-primary btn-sm" data-dismiss="modal"><span class="language_replace">確定</span></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="popgo">
        <div class="popgo_wrap">
            <div class="popgotitle">
                <button type="button" class="btn-close">
                    <span class="icon-cross"></span>
                  </button>
            </div>
            <div class="popgobody"><p>More content and rewards are on the official website, go now?</p></div>
            <div class="popgofooter"><a class="cancel" href="#">cancel</a><a class="OK" href="#">Go</a></div>
        </div>
    </div>
    <script type="text/javascript" src="https://rt.gsspat.jp/e/conversion/lp.js?ver=2"></script>
    <script type="text/javascript">
        $(".popgo").hide();
        $(".float_close").click(function () {
          $(".float_banner_wrap").toggleClass("FloatHide");
          return false;
        });
        $(".float_Banner").click(function () {
            $(".popgo").show();
        });
        $(".btn-close, .cancel, .OK").click(function () {
            $(".popgo").hide();
        });
      </script> 
</body>
</html>
