/* global DRAWABLE,STRING */

function setValue(win, strLbl) {
    win.innerHTML = strLbl;
}
function getURL(url) {
    var returnURL = "" || null;
    try {
        returnURL = "url(" + url + ")";
    } finally {
        if (returnURL == null) {
            Console.log("Error", "File Not Found");
            return null;
        } else {
            return returnURL;
        }
    }
}
window.onload = function (e) {
    var navbtn = "navbtn", headbtn = "headbtn", imageClassName = "Image", sidebtn = "sidebtn";
    var img = document.getElementById(imageClassName);
    for (var i = 0; i < STRING.FILE_LOCATION.length; i++) {
        if (NotNull(document.getElementById(navbtn + (i + 1)))) {
            document.getElementById(navbtn + (i + 1)).innerHTML = STRING.NAV_BUTTON_LABELS[i].LABEL;
        }
        if (NotNull(document.getElementById(headbtn + (i + 1)))) {
            document.getElementById(headbtn + (i + 1)).innerHTML = STRING.NAV_BUTTON_LABELS[i].LABEL;
        }
        if (NotNull(document.getElementById(sidebtn + (i + 1)))) {
           document.getElementById(sidebtn + (i+1)).innerHTML = STRING.NAV_BUTTON_LABELS[i].LABEL;
        }
    }
    if (NotNull(document.getElementById("MenuTitle"))) {
        document.getElementById("MenuTitle").innerHTML = STRING.TITLE[0].TILENAME;
    }
    if (NotNull(document.getElementById("HeaderTitle"))) {
        document.getElementById("HeaderTitle").innerHTML = STRING.TITLE[0].TILENAME;
    }
    if (NotNull(document.getElementById("SectionTitle"))) {
        document.getElementById("SectionTitle").innerHTML = STRING.WEB_CONTENT_HOME_TITLE[0].TITLE;
    }
    if (NotNull(document.getElementById("SideTitle"))) {
        document.getElementById("SideTitle").innerHTML = STRING.TITLE[0].TILENAME;
    }
    img.style.backgroundImage = getURL(DRAWABLE.NAVY_SHIP);
};
function NotNull(a) {
    return a !== null;
}