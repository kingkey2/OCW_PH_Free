<%@ Page Language="C#" %>

<%

    RedisCache.SessionContext.SIDInfo SI;
    string GameBrand = Request["GameBrand"];
    string SID = Request["SID"];
    string Lang = Request["Lang"];
    string CurrencyType = Request["CurrencyType"];
    string GameName = Request["GameName"];
    string HomeUrl = Request["HomeUrl"];
    string DemoPlay = string.IsNullOrEmpty(Request["DemoPlay"]) ? "0" : Request["DemoPlay"]; //���䴩DEMO�����̥~�h�P�_
    string Token;
    int RValue;
    Random R = new Random();
    RValue = R.Next(100000, 9999999);
    Token = EWinWeb.CreateToken(EWinWeb.PrivateKey, EWinWeb.APIKey, RValue.ToString());

    if (GameBrand == "EWin" && GameName == "EWinGaming") {
        if (DemoPlay == "0") {
            Response.Redirect(EWinWeb.EWinGameUrl + "/Game/Login.aspx?SID=" + SID + "&Token=" + Token+ "&Lang=" + Lang);
        } else {
            Response.Write("NotSupportDemo");
            Response.Flush();
            Response.End();
        }
    } else {
        Response.Redirect(EWinWeb.EWinUrl + "/API/GamePlatformAPI/" + GameBrand + "/UserLogin.aspx?SID=" + SID + "&Language=" + Lang + "&CurrencyType=" + CurrencyType + "&GameName=" + GameName + "&HomeUrl=" + HomeUrl + "&DemoPlay=" + DemoPlay);
    }
%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maharaja</title>
</head>

<body>
    <div class="loader-container">
        <div class="loader-box">
            <div class="loader-spinner">
                <div></div>
            </div>
            <div class="loader-text">Loading...</div>
        </div>
        <div class="loader-backdrop"></div>
    </div>
</body>
</html>
