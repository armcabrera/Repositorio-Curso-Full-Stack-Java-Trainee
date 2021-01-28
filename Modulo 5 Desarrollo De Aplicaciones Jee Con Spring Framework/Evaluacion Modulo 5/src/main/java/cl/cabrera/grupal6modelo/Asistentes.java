package cl.cabrera.grupal6modelo;

public class Asistentes {
	
	private int idasistente ;                
	private String asistnombrecompleto;          
	private int asistedad;                    
	private String asistcorreo;                  
	private String asisttelefono;                
	private int capacitacion_idcapacitacion;
	
	
	public Asistentes() {
		super();
	}


	public Asistentes(int idasistente, String asistnombrecompleto, int asistedad, String asistcorreo,
			String asisttelefono, int capacitacion_idcapacitacion) {
		super();
		this.idasistente = idasistente;
		this.asistnombrecompleto = asistnombrecompleto;
		this.asistedad = asistedad;
		this.asistcorreo = asistcorreo;
		this.asisttelefono = asisttelefono;
		this.capacitacion_idcapacitacion = capacitacion_idcapacitacion;
	}


	public int getIdasistente() {
		return idasistente;
	}


	public String getAsistnombrecompleto() {
		return asistnombrecompleto;
	}


	public int getAsistedad() {
		return asistedad;
	}


	public String getAsistcorreo() {
		return asistcorreo;
	}


	public String getAsisttelefono() {
		return asisttelefono;
	}


	public int getCapacitacion_idcapacitacion() {
		return capacitacion_idcapacitacion;
	}


	public void setIdasistente(int idasistente) {
		this.idasistente = idasistente;
	}


	public void setAsistnombrecompleto(String asistnombrecompleto) {
		this.asistnombrecompleto = asistnombrecompleto;
	}


	public void setAsistedad(int asistedad) {
		this.asistedad = asistedad;
	}


	public void setAsistcorreo(String asistcorreo) {
		this.asistcorreo = asistcorreo;
	}


	public void setAsisttelefono(String asisttelefono) {
		this.asisttelefono = asisttelefono;
	}


	public void setCapacitacion_idcapacitacion(int capacitacion_idcapacitacion) {
		this.capacitacion_idcapacitacion = capacitacion_idcapacitacion;
	}


	@Override
	public String toString() {
		return "Asistentes [idasistente=" + idasistente + ", asistnombrecompleto=" + asistnombrecompleto
				+ ", asistedad=" + asistedad + ", asistcorreo=" + asistcorreo + ", asisttelefono=" + asisttelefono
				+ ", capacitacion_idcapacitacion=" + capacitacion_idcapacitacion + "]";
	}
	
	


} 
