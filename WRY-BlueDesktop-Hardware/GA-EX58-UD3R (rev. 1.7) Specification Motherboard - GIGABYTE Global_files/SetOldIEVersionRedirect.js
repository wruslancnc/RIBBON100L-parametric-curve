function setOldIEVersionRedirect(UrlCountryCode, IsTW, IsHK) {
    var isOldIeRedirect = false;
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");
    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If Internet Explorer, return version number
    {
        window.isIE = true;
        isOldIeRedirect = true;
    }

    var edge = ua.indexOf('Edge/');
    if (edge > 0) {
        // 判斷Edge
        var getIeEdge = (parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10));
        if (getIeEdge === 11) {
            window.isIE = true;
        }
    }

    var isMsEdgeBrowser = (function (agent) {
        switch (true) {
            case agent.indexOf("edge") > -1: return true;
            case agent.indexOf("edg") > -1: return false;
            default: return false;
        }
    })(window.navigator.userAgent.toLowerCase());

    if (isOldIeRedirect || isMsEdgeBrowser) {
        if (typeof (IsTW) === "undefined") {
            IsTW = false;
        }
        if (typeof (IsHK) === "undefined") {
            IsHK = false;
        }
        var path = IsTW || IsHK
            ? UrlCountryCode + "/Support/InternetExplorerBlock"
            : "/Support/InternetExplorerBlock";
        location.href = path;
    }
}