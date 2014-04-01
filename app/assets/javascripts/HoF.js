$(document).ready(function(){
	$("#2013").hide();
	$("#2015").hide();

    $(".display2013").click(function () {
        $("#2013").slideToggle("slow");
    });

    $(".display2015").click(function () {
        $("#2015").slideToggle("slow");
    });
});