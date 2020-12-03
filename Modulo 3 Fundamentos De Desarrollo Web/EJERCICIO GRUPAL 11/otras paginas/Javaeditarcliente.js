 // add the rule here
 $.validator.addMethod("valueNotEquals", function(value, element, arg){
    return arg !== value;
   }, "Value must not equal arg.");




 $(document).ready(function() {
  $("#form1").validate({
    rules: {
       rut : {
           required: true,
           minlength: 9,
           maxlength: 10
         },
       nombre : {
           required: true,
           minlength: 3,
           maxlength: 50,
      },
       apellido : {
           required: true,
           minlength: 3,
           maxlength: 50,
     },
       telefono : {
           required: true,
           minlength: 8,
           maxlength: 50,
     },
       afp : {
           required: true,
           minlength: 5,
           maxlength: 15,
     },
     sistemasalud : {
       valueNotEquals: "default"

       },
       direccion : {
           required: true,
           minlength: 10,
           maxlength: 50,
     },
       comuna : {
           required: true,
           minlength: 3,
           maxlength: 20,
     },
     edad: {
        required: true,
        number: true,
        min: 18
      }
    },
    messages : {

       rut: {
           required:"Debe Ingresar Un rut",
           minlength: "Minimo 3 Caracteres",
           maxlength : "Maximo 10 Caracteres"
       },
       nombre: {
           required:"Debe Ingresar Un Nombre",
           minlength: "Minimo 3 Caracteres",
           maxlength : "Maximo 50 Caracteres"
       },
       apellido: {
           required:"Debe Ingresar Un Apellido",
           minlength: "Minimo 3 Caracteres",
           maxlength : "Maximo 50 Caracteres"
       },
       telefono: {
           required:"Debe Ingresar Un Telefono",
           minlength: "Minimo 8 Caracteres",
           maxlength : "Maximo 12 Caracteres"
       },
       afp: {
           required:"Debe Ingresar Una AFP",
           minlength: "Minimo 5 Caracteres",
           maxlength : "Maximo 15 Caracteres"
      },
      sistemasalud: {

       valueNotEquals: "Debe Elejir Un Sistema De Salud"

       },
       direccion: {
           required:"Debe Ingresar Una Direccion",
           minlength: "Minimo 10 Caracteres",
           maxlength : "Maximo 50 Caracteres"
       },
       comuna: {
           required:"Debe Ingresar Una Comuna",
           minlength: "Minimo 3 Caracteres",
           maxlength : "Maximo 20 Caracteres"
       },
       edad: {
           required: "Debe Ingresar Una Edad",
           number: "Debe Ingresar Un Valor numerico",
           min: "La edad minima es 18 años"
      }
    }
  });
});