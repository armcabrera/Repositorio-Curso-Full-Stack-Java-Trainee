package cl.cabrera.grupal6modelo;

public class Asesoria {
	
	private int idasesoria;
	private String fecharealizacion;
	private String motivo;
	private String profesional_cargo;
	private String profesional_run;
	
	public Asesoria() {
		super();
	}

	public Asesoria(int idasesoria, String fecharealizacion, String motivo, String profesional_cargo,
			String profesional_run) {
		super();
		this.idasesoria = idasesoria;
		this.fecharealizacion = fecharealizacion;
		this.motivo = motivo;
		this.profesional_cargo = profesional_cargo;
		this.profesional_run = profesional_run;
	}

	public int getIdasesoria() {
		return idasesoria;
	}

	public String getFecharealizacion() {
		return fecharealizacion;
	}

	public String getMotivo() {
		return motivo;
	}

	public String getProfesional_cargo() {
		return profesional_cargo;
	}

	public String getProfesional_run() {
		return profesional_run;
	}

	public void setIdasesoria(int idasesoria) {
		this.idasesoria = idasesoria;
	}

	public void setFecharealizacion(String fecharealizacion) {
		this.fecharealizacion = fecharealizacion;
	}

	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}

	public void setProfesional_cargo(String profesional_cargo) {
		this.profesional_cargo = profesional_cargo;
	}

	public void setProfesional_run(String profesional_run) {
		this.profesional_run = profesional_run;
	}

	@Override
	public String toString() {
		return "Asesoria [idasesoria=" + idasesoria + ", fecharealizacion=" + fecharealizacion + ", motivo=" + motivo
				+ ", profesional_cargo=" + profesional_cargo + ", profesional_run=" + profesional_run + "]";
	}
	

}
