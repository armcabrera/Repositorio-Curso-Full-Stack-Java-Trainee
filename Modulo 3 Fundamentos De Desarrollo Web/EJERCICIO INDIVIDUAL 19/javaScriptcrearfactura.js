$(document).ready(function() {
    $("#formfactura").validate({
        rules: {
            idfactura: {
                required: true,
                min: 1,
                max: 10000,
                Number: true
            },
            idventa: {
                required: true,
                min: 1,
                max: 10000,
                Number: true
            },
            fecgeneracion:{
                required: true
            },
            fecpago:{
                required: true
            },
            subtotal:{
                required: true,
                Number: true
            },
            impuesto:{
                required: true,
                Number: true
            },
            total:{
                required: true,
                Number: true
            }

        },
        messages: {
            idfactura: {
                required: "Ingrese el ID de factura",
                min: "Debe ser un número mayor o igual a 1",
                max: "Debe ser un número menor a 10000",
                number:"Debe Ingresar Un Numero"
            },
            idventa: {
                required: "Ingrese el ID de venta",
                min: "Debe ser un número mayor o igual a 1",
                max: "Debe ser un número menor a 1000",
                number:"Debe Ingresar Un Numero"
            },
            fecgeneracion: {
                required: "Debe indicar una fecha de generación"
            },
            fecpago: {
                required: "Debe indicar una fecha de pago"
            },
            subtotal: {
                required:"Debe Ingresar un subtotal",
                number:"Debe Ingresar Un Numero"
            },
            impuesto: {
                required:"Debe Ingresar un impuesto",
                number:"Debe Ingresar Un Numero"
            },
            total: {
                required:"Debe Ingresar un total",
                number:"Debe Ingresar Un Numero"
            }
        }
    });

    $("#fecgeneracion").datepicker(
        {dateFormat: "yy-mm-dd"}
    );

    $("#fecpago").datepicker(
        {dateFormat: "yy-mm-dd"}

    );


    });    