$( function() {
    $( "#resizable" ).resizable();
  } );

  $( function() {
    $( "#accordion" ).accordion();
  } );
  
  $(function () {
    $("#dialog").dialog({
    autoOpen: false,
    modal: true
    });
    $("#abrir")
    .button()
    .click(function () {
    $("#dialog").dialog("open");
    });
    });

 