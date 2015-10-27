var timeout = 500;
var closetimer = 0;
var ddmenuitem = 0;

function SupportOnline() {
    $('.support-online').css('left', ($(window).width() - 942) / 2 + 942 - 202);
    $('.support-online').delay(20000).effect("slide", { direction: "down" });
    $('.closeBtn').click(function () {
        $('.support-online').slideUp('slow');
    });
}
function ReplaceAll(Source, stringToFind, stringToReplace) {
    var temp = Source;
    var index = temp.indexOf(stringToFind);
    while (index != -1) {
        temp = temp.replace(stringToFind, stringToReplace);
        index = temp.indexOf(stringToFind);
    }
    return temp;
}

function GetDateTimeNow() {
    var date = new Date();
    var format = '';
    if (date.getHours() < 10) {
        format += '0' + date.getHours() +':';
    }
    else {
        format += date.getHours() + ':';
    }
    if (date.getMinutes() < 10) {
        format += '0' + date.getMinutes() + ':';
    }
    else {
        format += date.getMinutes() + ':';
    }
    if (date.getSeconds() < 10) {
        format += '0' + date.getSeconds() + ' ';
    }
    else {
        format += date.getSeconds() + ' ';
    }

    if (date.getDate() < 10) {
        format += '0' + date.getDate() + '/';
    }
    else {
        format += date.getDate() + '/';
    }
    if (date.getMonth() < 9) {
        format += '0' + (date.getMonth() +1) + '/';
    }
    else {
        format += (date.getMonth()+1) + '/';
    }
    format += date.getFullYear();
    return format;
}

function SaveCookieSearchAmadeus(name) {
    $.cookie(name, GetDateTimeNow());
}

function drop_lang_open() {
    drop_lang_canceltimer();
    drop_lang_close();
    ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');
}

function drop_lang_close()
{ if (ddmenuitem) ddmenuitem.css('visibility', 'hidden'); }

function drop_lang_timer()
{ closetimer = window.setTimeout(drop_lang_close, timeout); }

function drop_lang_canceltimer() {
    if (closetimer) {
        window.clearTimeout(closetimer);
        closetimer = null;
    }
}


$(document).ready(function () {

    $('.txtHighlight').keyup(function (event) {
        var val = $(this).attr('value');
        val = $.trim(val);
        if (val == '' || val === undefined)
            $(this).removeClass("highlight-name");
        else
            $(this).addClass("highlight-name");
    });



    $('#drop_lang > li').bind('mouseover', drop_lang_open);
    $('#drop_lang > li').bind('mouseout', drop_lang_timer);

    $('.content-html').dblclick(function () {
        var url = $(this).attr("url");
        window.location = url;
        return true;
    });
    $('.checkbox-have-bookingid input:checked').parent().parent().parent().find('.lable-firstname').show();
    $('.checkbox-have-bookingid input:checked').parent().parent().parent().find('.lable-bookingid').hide();
    $('.checkbox-have-bookingid').click(function () {
        $('.lable-bookingid').toggle();
        $('.lable-firstname').toggle();
    });
});
function querySt(paramName) {
    var value = '';
    paramName = paramName.toLowerCase();
    hu = window.location.search.substring(1);
    hu = hu.toLowerCase();
    gy = hu.split("&");
    for (i = 0; i < gy.length; i++) {
        ft = gy[i].split("=");
        if (ft[0] == paramName) {
            value = ft[1];
        }
    }
    return value;
}

document.onclick = drop_lang_close;
function GetPara(url, name) {
    var array = url.split(/\?|&/);
    var i = 0;
    for (i = 1; i < array.length; i++) {
        if (array[i].split('=')[0].toLowerCase() == name.toLowerCase()) return array[i].split('=')[1];
    }
    return '';
}
function SetPara(url, name, value) {
    var check = false;
    var isFirst = true;
    var ret = "";
    var array = url.split(/\?|&/);
    ret = ret + array[0];
    var i = 0;
    for (i = 1; i < array.length; i++) {
        var N = array[i].split('=')[0];
        var V = array[i].split('=')[1];
        if (N == name) {
            V = value;
            check = true;
        }
        ret = isFirst ? ret + "?" + N + "=" + V : ret + "&" + N + "=" + V;
        isFirst = false;
    }
    if (!check) ret = isFirst ? ret + "?" + name + "=" + value : ret + "&" + name + "=" + value;
    return ret;
}

function RemovePara(url, name) {
    var isFirst = true;
    var ret = "";
    var array = url.split(/\?|&/);
    ret = ret + array[0];
    var i = 0;
    for (i = 1; i < array.length; i++) {
        var N = array[i].split('=')[0];
        if (N == name) {
            continue;
        }
        ret = isFirst ? ret + "?" + array[i] : ret + "&" + array[i];
        isFirst = false;
    }
    return ret;
}

function SetHorrizalCenter(selector) {
    $(selector).get(0).style.left = (document.documentElement.clientWidth / 2 - $(selector).width() / 2) + 'px';
    //$(selector).get(0).style.top = (document.documentElement.clientHeight / 2 - $(selector).height() / 2) + 'px';
}
function SetVerticalCenter(selector) {
    //$(selector).get(0).style.left = (document.documentElement.clientWidth / 2 - $(selector).width() / 2) + 'px';
    $(selector).get(0).style.top = (document.documentElement.clientHeight / 2 - $(selector).height() / 2) + 'px';
}
function SetCenterScreen(selector) {
    $(selector).get(0).style.left = (document.documentElement.clientWidth / 2 - $(selector).width() / 2) + 'px';
    $(selector).get(0).style.top = (document.documentElement.clientHeight / 2 - $(selector).height() / 2) + 'px';
}
function SetCenterDiv(selector) {
    mask = $("#flightResultMainContent");
    vtop = mask.offset().top + 40;
    vleft = mask.offset().left + mask.width() / 2 - $(selector).width()/2 -10;
    $(selector).offset({ top: vtop, left: vleft });
    

}
function showMask() {
    if ($("#flightResultMainContent > div#divMask").length > 0) return;
    $("#flightResultMainContent").append("<div id='divMask'></div>");
    $("#flightResultMainContent").find("div#divMask").get(0).style.left = '0px';
    $("#flightResultMainContent").find("div#divMask").get(0).style.top = '0px';
    $("#flightResultMainContent").find("div#divMask").width($("#flightResultMainContent").width());
    $("#flightResultMainContent").find("div#divMask").height($("#flightResultMainContent").height());
}
function hideMask() {
    $("#flightResultMainContent").find("div#divMask").remove();
}
function showProgress(imageURL) {
    showMask();
    if ($("#flightResultMainContent > div#imgProgress").length > 0) return;
    $("#flightResultMainContent").append("<div id='loading'><img src='" + imageURL + "'/>Quý khách vui lòng chờ trong giây lát ...</div>");
    SetCenterDiv("#loading");
}
function hideProgress() {
    hideMask();
    $("#flightResultMainContent").find("#loading").remove();
}
function AbayPopup(url) {
    var html = "";
    html += "<div id='divPopup' class='divPopup'>";
    html += "   <div id='divPopupContent' class='divPopupContent'>";
    html += "   </div>";
    html += "   <div id='divPopupClose' class='divPopupClose'>";
    html += "       <a href='javascript:void(0)' style='text-decoration: underline'>Close</a>";
    html += "   </div>";
    html += "</div>";

    $("body").append(html);
    $("#divPopup").hide();
    showProgress("/Images/ajaxloader.gif");
    $("#divPopupContent").load(url, function () {
        SetCenterScreen("#divPopup");
        hideProgress();
        showMask();
        $("#divPopup").show();
        $("#divPopupClose a").click(function () {
            $("#divPopup").remove();
            hideMask();
        });
    });
}

//------------- valid function --------------
// Check is only number
function isNumberOnly(input) {
    var regexp = /^[0-9\ ]+$/;
    return regexp.test(input);
}
function isLetterOnly(input) {
    var regexp = /^[a-zA-Z\ \']+$/;
    return regexp.test(input);
}
function isNumberLetterOnly(input) {
    var regexp = /^[0-9a-zA-Z]+$/;
    return regexp.test(input);
}
function isPhoneNumber(input) {
    var regexp = /^([\+][0-9]{1,3}[ \.\-])?([\(]{1}[0-9]{2,6}[\)])?([0-9 \.\-\/]{3,20})((x|ext|extension)[ ]?[0-9]{1,4})?$/;
    return regexp.test(input);
}
function isEmailAddress(input) {
    var regexp = /^([A-Za-z0-9_\-\.\'])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,6})$/;
    return regexp.test(input);
}
function checkNullInput(id, errorID) {
    text = $(id).attr('value');
    if (text == '') {
        $(id).addClass('error-passenger');
        $(errorID).show();
        return true;
    }
    else {
        $(id).removeClass('error-passenger');
        $(errorID).hide();
    } return false;
}
// Check input is number
function validNumberInput(id, errorID) {
    text = $(id).attr('value');
    if (!isNumberOnly(text)) {
        $(id).addClass('error-passenger');
        $(errorID).show();
        return true;
    }
    else {
        $(id).removeClass('error-passenger');
        $(errorID).hide();
    } return false;
}
// Check input is letter
function validLetterInput(id, errorID) {
    text = $(id).attr('value');
    if (!isLetterOnly(text)) {
        $(id).addClass('error-passenger');
        $(errorID).show();
        return true;
    }
    else {
        $(id).removeClass('error-passenger');
        $(errorID).hide();
    } return false;
}
// Check contact information input
function checkContactInfoInput() {

}
function hightlightFlightResult() {

    // add hightlight for input selected
    $('.content-flight-item .result-detail input:radio:checked').parent().parent().addClass('selected-f');
    // when click to tr set input inside is checked
    $('.tInBound .result-detail').click(function () {
        $('.tInBound .result-detail').removeClass('selected-f');
        $(this).addClass('selected-f');
        $(this).find('input:radio').attr('checked', true);
        $('.tInBound .result-detail input:radio:checked').parent().parent().addClass('selected-f');
    });
    // when click to tr set input inside is checked
    $('.tOutBound .result-detail').click(function () {
        $('.tOutBound .result-detail').removeClass('selected-f');
        $(this).addClass('selected-f');
        $(this).find('input:radio').attr('checked', true);
        $('.tOutBound .result-detail input:radio:checked').parent().parent().addClass('selected-f');
    });
}
// tooltip
    this.vtip = function () {
    this.xOffset = -20; // x distance from mouse
    this.yOffset = 28; // y distance from mouse       

    $(".vtip").unbind().hover(
        function (e) {
            this.t = this.title;
            this.title = '';
            this.top = (e.pageY + yOffset); this.left = (e.pageX + xOffset);

            $('body').append('<p id="vtip"><img id="vtipArrow" />' + this.t + '</p>');

            $('p#vtip #vtipArrow').attr("src", '/images/vtip_arrow_a_r.png');
            $('p#vtip').css("top", this.top + "px").css("left", this.left + "px").fadeIn("fast");

        },
        function () {
            this.title = this.t;
            $("p#vtip").fadeOut("slow").remove();
        }
    ).mousemove(
        function (e) {
            this.top = (e.pageY + yOffset);
            this.left = (e.pageX + xOffset);

            $("p#vtip").css("top", this.top + "px").css("left", this.left + "px");
        }
    );

};

    jQuery(document).ready(function($) { vtip(); });
    $(document).ready(function () {
        $('.per-price').click(function () {
            $(this).toggleClass('click');
            if ($(this).hasClass('click')) {
                $(this).find('a').addClass('minus');
                $(this).find('a').text('-');
            }
            else {
                $(this).find('a').removeClass('minus');
                $(this).find('a').text('+');
            }
            $(this).parent().find('.detail').toggle();
        });
        $('.per-price').hover(function() {
            $(this).addClass('hover');
        }, function() {
            $(this).removeClass('hover');
        });
    });
// sfsgs

// result
$(function () {
    $('*[hint]').inputHint();
});



