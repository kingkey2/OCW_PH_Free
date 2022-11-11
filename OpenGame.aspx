<%@ Page Language="C#" %>

<%

    string Lang = Request["Lang"];
    string CurrencyType = Request["CurrencyType"];
    string GameCode = Request["GameCode"];
    string HomeUrl = Request["HomeUrl"];
    string DemoPlay = "1";

   Response.Redirect(EWinWeb.EWinGameUrl + "/API/GamePlatformAPI2/UserLogin.aspx?Language=" + Lang + "&CurrencyType=" + CurrencyType + "&GameCode=" + GameCode + "&HomeUrl=" + HomeUrl + "&DemoPlay=" + DemoPlay);
%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lucky Sprite</title>
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
