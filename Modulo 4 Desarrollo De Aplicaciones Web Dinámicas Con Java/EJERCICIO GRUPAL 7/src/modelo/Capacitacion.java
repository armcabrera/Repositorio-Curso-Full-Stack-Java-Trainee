package modelo;

public class Capacitacion{
	private int idcapa;
	private String dia;
	private String hora;
	private String lugar;
	private String duracion;
	
	
	public Capacitacion() {
		super();
	}


	public Capacitacion(int idcapa, String dia, String hora, String lugar, String duracion) {
		super();
		this.idcapa = idcapa;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.duracion = duracion;
	}
	
	public int getIdcapa() {
		return idcapa;
	}


	public void setIdcapa(int idcapa) {
		this.idcapa = idcapa;
	}


	public String getDia() {
		return dia;
	}


	public void setDia(String dia) {
		this.dia = dia;
	}


	public String getHora() {
		return hora;
	}


	public void setHora(String hora) {
		this.hora = hora;
	}


	public String getLugar() {
		return lugar;
	}


	public void setLugar(String lugar) {
		this.lugar = lugar;
	}


	public String getDuracion() {
		return duracion;
	}


	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}


	@Override
	public String toString() {
		return "Capacitacion [idcapa=" + idcapa + ", dia=" + dia + ", hora=" + hora + ", lugar=" + lugar + ", duracion="
				+ duracion + "]";
	}
	
	
	
}
