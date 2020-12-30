package modelo;

public class Profesional extends Usuario {
	private String titulo;
	private String fechaingreso;
	
	public Profesional() {
		super();
	}

	public Profesional(String nombre, String fechanacimiento, String run, String titulo, String fechaingreso) {
		super(nombre, fechanacimiento, run);
		this.titulo = titulo;
		this.fechaingreso = fechaingreso;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getFechaingreso() {
		return fechaingreso;
	}

	public void setFechaingreso(String fechaingreso) {
		this.fechaingreso = fechaingreso;
	}

	@Override
	public String toString() {
		return "Profesional [titulo=" + titulo + ", fechaingreso=" + fechaingreso + "]";
	}
	
	
	
	
	
}
