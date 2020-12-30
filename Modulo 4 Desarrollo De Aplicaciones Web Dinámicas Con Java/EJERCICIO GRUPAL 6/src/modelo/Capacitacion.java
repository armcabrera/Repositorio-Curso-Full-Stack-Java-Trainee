package modelo;

public class Capacitacion extends Cliente{
	private int idcapa;
	private String rutclte;
	private String dia;
	private String hora;
	private String lugar;
	private String duracion;
	private int cantasist;
	
	public Capacitacion() {
		super();
	}

	public Capacitacion(String nombre, String fechanacimiento, String run, String apellidos, String telefono,
			String afp, int prevision, String direccion, String comuna, int edad, int idcapa, String rutclte,
			String dia, String hora, String lugar, String duracion, int cantasist) {
		super(nombre, fechanacimiento, run, apellidos, telefono, afp, prevision, direccion, comuna, edad);
		this.idcapa = idcapa;
		this.rutclte = rutclte;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.duracion = duracion;
		this.cantasist = cantasist;
	}

	public int getIdcapa() {
		return idcapa;
	}

	public void setIdcapa(int idcapa) {
		this.idcapa = idcapa;
	}

	public String getRutclte() {
		return rutclte;
	}

	public void setRutclte(String rutclte) {
		this.rutclte = rutclte;
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

	public int getCantasist() {
		return cantasist;
	}

	public void setCantasist(int cantasist) {
		this.cantasist = cantasist;
	}

	@Override
	public String toString() {
		return "Capacitacion [idcapa=" + idcapa + ", rutclte=" + rutclte + ", dia=" + dia + ", hora=" + hora
				+ ", lugar=" + lugar + ", duracion=" + duracion + ", cantasist=" + cantasist + "]";
	}
	
	
	
	
	
	
}
