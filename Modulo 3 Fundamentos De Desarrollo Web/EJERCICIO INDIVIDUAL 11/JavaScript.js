function mostrarHora(){

    var dias = ["Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"];
    var meses = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];
    var fecha = new Date();
    var texto = "Hoy es " + dias[fecha.getDay()] + " " + fecha.getDate() 
    + " de " + meses[fecha.getMonth()] + " de " + fecha.getFullYear()
    + ", y son las " + fecha.getHours() + " horas, " + fecha.getMinutes() + " minutos con " 
    + fecha.getSeconds() + " segundos";
    alert(texto);
}


const getRemainingTime = deadline => {
    let now = new Date(),
        remainTime = (new Date(deadline) - now + 1000) / 1000,
        remainSeconds = ('0' + Math.floor(remainTime % 60)).slice(-2),
        remainMinutes = ('0' + Math.floor(remainTime / 60 % 60)).slice(-2),
        remainHours = ('0' + Math.floor(remainTime / 3600 % 24)).slice(-2),
        remainDays = Math.floor(remainTime / (3600 * 24));
  
    return {
      remainSeconds,
      remainMinutes,
      remainHours,
      remainDays,
      remainTime
    }
  };
  
  const countdown = (deadline,elemdia,finalMessage) => {
    const el = document.getElementById(elemdia);
  
    const timerUpdate = setInterval( () => {
      let t = getRemainingTime(deadline);
 /*      el.innerHTML = "${t.remainDays}d:${t.remainHours}h:${t.remainMinutes}m:${t.remainSeconds}s"; */
      document.getElementById("dia").innerHTML = t.remainDays;
      document.getElementById("hora").innerHTML = t.remainHours;
      document.getElementById("minuto").innerHTML = t.remainMinutes;
      document.getElementById("segundo").innerHTML = t.remainSeconds;
      if(t.remainTime <= 1) {
        clearInterval(timerUpdate);
        el.innerHTML = finalMessage;
      }
  
    }, 1000)
  };
  
  countdown('Dec 31 2020 23:59:59 GMT-0500', 'dia', '¡Feliz Año nuevo!');