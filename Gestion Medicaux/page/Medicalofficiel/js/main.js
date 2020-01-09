$(document).ready(function(){
      $("#Next").click(function(){
          $("#p2").show();
          $("#Next").hide();
          $("#Previous").show();
          $("#inscrire1").hide();
      });

      $("#Previous").click(function(){
        $("#p2").hide();
        $("#Next").show();
        $("#Previous").hide();
        $("#inscrire3").hide();
        $("#inscrire2").hide();
        $("#inscrire1").show();
    });

    $("#customRadio3").click(function(){
      if($(this).is(':checked'))
      {
        $("#p3").hide();
        $("#inscrire2").show();
        $("#inscrire3").hide();
        $("#inscrire1").hide();
      }
    });

  $("#customRadio4").click(function(){
    if($(this).is(':checked'))
    {
      $("#p3").show();
      $("#inscrire2").hide();
      $("#inscrire3").show();
      $("#inscrire1").hide();
      $("#Previous").hide();
    }
  });

});