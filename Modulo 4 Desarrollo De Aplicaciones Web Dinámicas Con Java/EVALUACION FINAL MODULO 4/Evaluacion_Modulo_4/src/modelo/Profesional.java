package modelo;

public class Profesional extends Usuario {
	private String telefono;
	private String titulo;
	private String proyecto;
	private String runusuario;
	
	public Profesional() {
		super();
	}

	public Profesional(String run, String nombre, String apellido, String fechanacimiento, String tipousuario) {
		super(run, nombre, apellido, fechanacimiento, tipousuario);
	}

	public Profesional(String run, String nombre, String apellido, String fechanacimiento, String tipousuario,
			String telefono, String titulo, String proyecto, String runusuario) {
		super(run, nombre, apellido, fechanacimiento, tipousuario);
		this.telefono = telefono;
		this.titulo = titulo;
		this.proyecto = proyecto;
		this.runusuario = runusuario;
	}
	
	

	public Profesional(String run, String nombre, String apellido, String telefono, String titulo, String proyecto,
			String runusuario) {
		super(run, nombre, apellido);
		this.telefono = telefono;
		this.titulo = titulo;
		this.proyecto = proyecto;
		this.runusuario = runusuario;
	}

	public String getTelefono() {
		return telefono;
	}

	public String getTitulo() {
		return titulo;
	}

	public String getProyecto() {
		return proyecto;
	}

	public String getRunusuario() {
		return runusuario;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public void setProyecto(String proyecto) {
		this.proyecto = proyecto;
	}

	public void setRunusuario(String runusuario) {
		this.runusuario = runusuario;
	}

	@Override
	public String toString() {
		return "Profesional [telefono=" + telefono + ", titulo=" + titulo + ", proyecto=" + proyecto + ", runusuario="
				+ runusuario + "]";
	}
	
	
	
	
	
}
