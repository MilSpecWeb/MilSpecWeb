$(document).ready(function () {
    var headerBlock = $("site-wrapper");
//
    //sideMenu.css({"right": "100%"});
    var y = window.innerHeight.toString(), x = window.innerWidth.toString(),
            para = document.createElement("Page");
    var page;
    if ($("Page") != null) {
        page = $("Page");
        page.css({
            "height": y,
            "width": x,
            "position": "relative"
        });
    }
    headerBlock.css({
        "height": y,
        "width": x,
        "position": "relative"
    });
    var reSize = function (e) {
        x = window.innerWidth.toString();
        y = window.innerHeight.toString();
        headerBlock.css({
            "height": y,
            "width": x,
            "position": "relative"
        });
        page.css({
            "height": y,
            "width": x,
            "position": "relative"});
        window.addEventListener("resize", reSize);
    };
    window.addEventListener("resize",reSize);
});
