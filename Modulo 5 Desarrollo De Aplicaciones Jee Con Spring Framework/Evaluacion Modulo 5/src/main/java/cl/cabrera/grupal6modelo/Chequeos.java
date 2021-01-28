package cl.cabrera.grupal6modelo;

public class Chequeos {
	
	private int idchequeo;
	private String implementoseguridad;
	private String protocoloseguridad;
	private String vestimentaseguridad;
	private String manualseguridad;
	private String observaciones;
	private int visita_idvisita;
	
	public Chequeos() {
		super();
	}
	
	

	public Chequeos(String implementoseguridad, String protocoloseguridad, String vestimentaseguridad,
			String manualseguridad) {
		super();
		this.implementoseguridad = implementoseguridad;
		this.protocoloseguridad = protocoloseguridad;
		this.vestimentaseguridad = vestimentaseguridad;
		this.manualseguridad = manualseguridad;
	}



	public Chequeos(int idchequeo, String implementoseguridad, String protocoloseguridad, String vestimentaseguridad,
			String manualseguridad, String observaciones, int visita_idvisita) {
		super();
		this.idchequeo = idchequeo;
		this.implementoseguridad = implementoseguridad;
		this.protocoloseguridad = protocoloseguridad;
		this.vestimentaseguridad = vestimentaseguridad;
		this.manualseguridad = manualseguridad;
		this.observaciones = observaciones;
		this.visita_idvisita = visita_idvisita;
	}

	public int getIdchequeo() {
		return idchequeo;
	}

	public String getImplementoseguridad() {
		return implementoseguridad;
	}

	public String getProtocoloseguridad() {
		return protocoloseguridad;
	}

	public String getVestimentaseguridad() {
		return vestimentaseguridad;
	}

	public String getManualseguridad() {
		return manualseguridad;
	}

	public String getObservaciones() {
		return observaciones;
	}

	public int getVisita_idvisita() {
		return visita_idvisita;
	}

	public void setIdchequeo(int idchequeo) {
		this.idchequeo = idchequeo;
	}

	public void setImplementoseguridad(String implementoseguridad) {
		this.implementoseguridad = implementoseguridad;
	}

	public void setProtocoloseguridad(String protocoloseguridad) {
		this.protocoloseguridad = protocoloseguridad;
	}

	public void setVestimentaseguridad(String vestimentaseguridad) {
		this.vestimentaseguridad = vestimentaseguridad;
	}

	public void setManualseguridad(String manualseguridad) {
		this.manualseguridad = manualseguridad;
	}

	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

	public void setVisita_idvisita(int visita_idvisita) {
		this.visita_idvisita = visita_idvisita;
	}

	@Override
	public String toString() {
		return "Chequeos [idchequeo=" + idchequeo + ", implementoseguridad=" + implementoseguridad
				+ ", protocoloseguridad=" + protocoloseguridad + ", vestimentaseguridad=" + vestimentaseguridad
				+ ", manualseguridad=" + manualseguridad + ", observaciones=" + observaciones + ", visita_idvisita="
				+ visita_idvisita + "]";
	}
	
	
	 

}
