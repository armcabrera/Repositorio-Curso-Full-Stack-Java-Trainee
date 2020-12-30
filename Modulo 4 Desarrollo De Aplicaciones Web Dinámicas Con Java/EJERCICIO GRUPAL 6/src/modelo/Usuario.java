package modelo;

public class Usuario {
	private String nombre;
	private String fechanacimiento;
	private String run;
	
	public Usuario() {
		super();
	}

	public Usuario(String nombre, String fechanacimiento, String run) {
		super();
		this.nombre = nombre;
		this.fechanacimiento = fechanacimiento;
		this.run = run;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFechanacimiento() {
		return fechanacimiento;
	}

	public void setFechanacimiento(String fechanacimiento) {
		this.fechanacimiento = fechanacimiento;
	}

	public String getRun() {
		return run;
	}

	public void setRun(String run) {
		this.run = run;
	}

	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + ", fechanacimiento=" + fechanacimiento + ", run=" + run + "]";
	}
	
	
	
}
