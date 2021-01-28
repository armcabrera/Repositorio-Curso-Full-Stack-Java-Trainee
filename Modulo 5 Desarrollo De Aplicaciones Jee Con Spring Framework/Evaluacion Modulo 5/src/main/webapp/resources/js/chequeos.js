
            function mostrarchek() {

                var checkboxes = document.getElementById("formchek").checkbox;

                var cont = 0;

                for (var x = 0; x < checkboxes.length; x++) {
                    if (checkboxes[x].checked) {
                        cont = cont + 1;
                    }
                }

                if (cont == 0) {

                    alert("Debe Seleccionar Al Menos Un Chequeo");
                }
                else {
                    document.getElementById("divmostardor").innerHTML = "<h3>Chequeos Seleccionados</h3>";
                    for (var x = 0; x < checkboxes.length; x++) {
                        if (checkboxes[x].checked) {
                            var listado = document.getElementById("chk" + x).innerHTML;
                            document.getElementById("divmostardor").innerHTML += "<li>" + listado + "</li><br>";
                        }
                    }
                }
            }