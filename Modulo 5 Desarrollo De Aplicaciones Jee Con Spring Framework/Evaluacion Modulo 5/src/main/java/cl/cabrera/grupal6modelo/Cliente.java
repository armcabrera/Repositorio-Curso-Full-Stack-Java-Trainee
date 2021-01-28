package cl.cabrera.grupal6modelo;

public class Cliente extends Usuario {
	
	private String telefono;
	private String afp;
	private int salud;
	private String direccion;
	private String comuna;
	private int edad;
	private String runusuario;
	
	
	
	
	public Cliente(String run, String nombre, String apellido, String telefono, String afp, int salud, String direccion,
			String comuna, int edad, String runusuario) {
		super(run, nombre, apellido);
		this.telefono = telefono;
		this.afp = afp;
		this.salud = salud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
		this.runusuario = runusuario;
	}


	public Cliente(String run, String nombre, String apellido, String fechanacimiento, String tipousuario) {
		super(run, nombre, apellido, fechanacimiento, tipousuario);
	}


	public Cliente(String run, String nombre, String apellido, String fechanacimiento, String tipousuario,
			String telefono, String afp, int salud, String direccion, String comuna, int edad, String runusuario) {
		super(run, nombre, apellido, fechanacimiento, tipousuario);
		this.telefono = telefono;
		this.afp = afp;
		this.salud = salud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
		this.runusuario = runusuario;
	}




	public Cliente() {
		
	}


	public String getTelefono() {
		return telefono;
	}


	public String getAfp() {
		return afp;
	}


	public int getSalud() {
		return salud;
	}


	public String getDireccion() {
		return direccion;
	}


	public String getComuna() {
		return comuna;
	}


	public int getEdad() {
		return edad;
	}


	public String getRunusuario() {
		return runusuario;
	}


	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


	public void setAfp(String afp) {
		this.afp = afp;
	}


	public void setSalud(int salud) {
		this.salud = salud;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public void setComuna(String comuna) {
		this.comuna = comuna;
	}


	public void setEdad(int edad) {
		this.edad = edad;
	}


	public void setRunusuario(String runusuario) {
		this.runusuario = runusuario;
	}


	@Override
	public String toString() {
		return "Cliente [telefono=" + telefono + ", afp=" + afp + ", salud=" + salud + ", direccion=" + direccion
				+ ", comuna=" + comuna + ", edad=" + edad + ", runusuario=" + runusuario + "]";
	}
	
	


	
	

}
