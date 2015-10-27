$(document).ready(function () {
    // Set auto complete
    $(".txtFlightCity").autocomplete("/ve-may-bay/autosuggestv2.aspx",
        {
            max: 50,
            highlight: false,
            matchSubset: false,
            scrollHeight: 260,
            width: 261,
            formatItem: function (item, index, total, value) {
                return value.split("{")[0];
            },
            formatResult: function (item, value) {
                return value.split("{")[1];
            }
        });
    $(".txtFlightCity").result(function () {
        var dataType = $(this).attr('dataType');
        $('.' + dataType).attr('value', $("#inter-city-" + dataType).val());
        $("#inter-city-" + dataType).val('');
        $('.dialog').dialog("close");
        if (dataType == 'departure')
            $('.arrival').focus();
        else
            $('.depDate').focus();
        $('.error-' + dataType).text(' ');
    });

    // Khi chon departure date, tu dong gan return date = departure data + 3
    $(".depDate").change(function () {
        var d = $(".depDate").datepicker("getDate");
        $(".retDate").datepicker("option", "minDate", $(".depDate").datepicker("getDate"));
        d.setDate(d.getDate() + 3);
        $(".retDate").datepicker("setDate", d);
    });

    // Ẩn return date nếu one way đang được chọn
    if ($(".one-wave input").attr("checked")) $(".return-date").hide();

    // Khi chọn one way, hay round trip, tự động ẩn hiện return date
    $(".one-wave input").click(function () {
        $(".return-date").hide();
    });
    $(".round-trip input").click(function () {
        $(".return-date").show();
    });
});

function checkValidClientData() { 
    
}
