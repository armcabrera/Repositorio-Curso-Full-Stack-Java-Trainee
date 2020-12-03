$(document).ready(function () {
 

     $('.estilo1').click(function () {
        $('table').css('background', '#FADBD8');
        $('table').css('border', 'white');
        $('table').css('border-collapse: separate');
        $('table').css('border-spacing',' 10px');
        $('table').css('color','#4527A0');

    });
    $('.estilo2').click(function () {
        $('table').css('background', '#FCF3CF');
        $('table').css('border', '#000000 5px solid');
        $('table').css('text-transform', 'uppercase');
        $('table').css('font-family','Comic Sans');
        $('table').css('border-spacing',' 20px');
        $('table').css('color','#00796B');
    });
    $('.estilo3').click(function () {
        $('table').css('background', '#85C1E9');
        $('table').css('border', '#EF9A9A 2px solid');
        $('table').css('border-collapse: separate');
        $('table').css('border-spacing',' 30px');
        $('table').css('text-transform', 'lowercase');
        $('table').css('color','#BF360C');

    });
});