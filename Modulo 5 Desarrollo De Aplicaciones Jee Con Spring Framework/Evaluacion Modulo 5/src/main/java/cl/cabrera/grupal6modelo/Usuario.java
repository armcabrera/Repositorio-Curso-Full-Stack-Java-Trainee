package cl.cabrera.grupal6modelo;

public class Usuario {
	
	private String run;
	private String nombre;
	private String apellido;
	private String fechanacimiento;
	private String tipousuario;
	
	
	
	
	public Usuario(String run, String nombre, String apellido) {
		super();
		this.run = run;
		this.nombre = nombre;
		this.apellido = apellido;
	}


	public Usuario() {
		super();
	}


	public Usuario(String run, String nombre, String apellido, String fechanacimiento, String tipousuario) {
		super();
		this.run = run;
		this.nombre = nombre;
		this.apellido = apellido;
		this.fechanacimiento = fechanacimiento;
		this.tipousuario = tipousuario;
	}


	public String getRun() {
		return run;
	}


	public String getNombre() {
		return nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public String getFechanacimiento() {
		return fechanacimiento;
	}


	public String getTipousuario() {
		return tipousuario;
	}


	public void setRun(String run) {
		this.run = run;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public void setFechanacimiento(String fechanacimiento) {
		this.fechanacimiento = fechanacimiento;
	}


	public void setTipousuario(String tipousuario) {
		this.tipousuario = tipousuario;
	}


	@Override
	public String toString() {
		return "Usuario [run=" + run + ", nombre=" + nombre + ", apellido=" + apellido + ", fechanacimiento="
				+ fechanacimiento + ", tipousuario=" + tipousuario + "]";
	}
	
	

}
