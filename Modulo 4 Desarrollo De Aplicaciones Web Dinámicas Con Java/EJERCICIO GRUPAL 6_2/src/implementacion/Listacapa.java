package implementacion;

import java.util.ArrayList;
import java.util.List;


import interfaces.Listaintcapa;
import modelo.Capacitacion;

public class Listacapa implements Listaintcapa {

	@Override
	public List<Capacitacion> listaCapacitacion() {
		// TODO Auto-generated method stub
		
		
		List<Capacitacion> listacapa2 = new ArrayList<Capacitacion>();
		
		Capacitacion cp1, cp2, cp3;
		
		cp1 = new Capacitacion(1,"76.125.147-6","Lunes","15:30","Santiago","60 minutos",20);
		listacapa2.add(cp1);
		
		cp2 = new Capacitacion();
		cp2.setIdcapa(2);
		cp2.setRutclte("80.321.458-K");
		cp2.setDia("Miercoles");
		cp2.setHora("16:30");
		cp2.setLugar("Valparaiso");
		cp2.setDuracion("90 minutos");
		cp2.setCantasist(60);
		listacapa2.add(cp2);
		/*
		 * cp2 = new
		 * Capacitacion(2,"80.321.458-K","Miercoles","16:30","Valparaiso","90 minutos"
		 * ,40); listacapa2.add(cp2);
		 */
		
		cp3 = new Capacitacion(3,"69.147.369-5","Viernes","14:30","Arica","20 minutos",5);
		listacapa2.add(cp3);

				
		return listacapa2;
	}

	@Override
	public void crearCapacitacion(Capacitacion cp) {
		// TODO Auto-generated method stub
		System.out.println(cp.toString());
	}

}
