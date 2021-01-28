package cl.cabrera.grupal6modelo;

public class Asesorias {

	private String id;
	private String fecha;
	private String motivo;
	private String rutprof;
	private String nombreprof;
	
	public Asesorias() {
		super();
	}

	public Asesorias(String id, String fecha, String motivo, String rutprof, String nombreprof) {
		super();
		this.id = id;
		this.fecha = fecha;
		this.motivo = motivo;
		this.rutprof = rutprof;
		this.nombreprof = nombreprof;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getMotivo() {
		return motivo;
	}

	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}

	public String getRutprof() {
		return rutprof;
	}

	public void setRutprof(String rutprof) {
		this.rutprof = rutprof;
	}

	public String getNombreprof() {
		return nombreprof;
	}

	public void setNombreprof(String nombreprof) {
		this.nombreprof = nombreprof;
	}

	@Override
	public String toString() {
		return "Asesorias [id=" + id + ", fecha=" + fecha + ", motivo=" + motivo + ", rutprof=" + rutprof
				+ ", nombreprof=" + nombreprof + "]";
	}
	
	
	
	
}
