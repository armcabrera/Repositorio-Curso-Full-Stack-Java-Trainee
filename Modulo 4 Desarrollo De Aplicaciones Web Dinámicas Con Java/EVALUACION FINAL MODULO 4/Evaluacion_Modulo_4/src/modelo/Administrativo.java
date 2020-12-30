package modelo;

public class Administrativo extends Usuario {
	private String correo;
	private String area;
	private String runusuario;
	
	public Administrativo() {
		super();
	}

	public Administrativo(String run, String nombre, String apellido, String fechanacimiento, String tipousuario) {
		super(run, nombre, apellido, fechanacimiento, tipousuario);
	}

	public Administrativo(String run, String nombre, String apellido, String fechanacimiento, String tipousuario,
			String correo, String area, String runusuario) {
		super(run, nombre, apellido, fechanacimiento, tipousuario);
		this.correo = correo;
		this.area = area;
		this.runusuario = runusuario;
	}
	
	

	public Administrativo(String run, String nombre, String apellido, String correo, String area, String runusuario) {
		super(run, nombre, apellido);
		this.correo = correo;
		this.area = area;
		this.runusuario = runusuario;
	}

	public String getCorreo() {
		return correo;
	}

	public String getArea() {
		return area;
	}

	public String getRunusuario() {
		return runusuario;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public void setRunusuario(String runusuario) {
		this.runusuario = runusuario;
	}

	@Override
	public String toString() {
		return "Administrativo [correo=" + correo + ", area=" + area + ", runusuario=" + runusuario + "]";
	}
	
	
	
	
	
}
