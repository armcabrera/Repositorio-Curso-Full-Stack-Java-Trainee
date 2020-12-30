package modelo;

public class Cliente extends Usuario{
	
	private String apellidos;
	private String telefono;
	private String afp;
	private int prevision;
	private String direccion;
	private String comuna;
	private int edad;
	
	public Cliente() {
		super();
	}

	public Cliente(String nombre, String fechanacimiento, String run, String apellidos, String telefono, String afp,
			int prevision, String direccion, String comuna, int edad) {
		super(nombre, fechanacimiento, run);
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.afp = afp;
		this.prevision = prevision;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getAfp() {
		return afp;
	}

	public void setAfp(String afp) {
		this.afp = afp;
	}

	public int getPrevision() {
		return prevision;
	}

	public void setPrevision(int prevision) {
		this.prevision = prevision;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	@Override
	public String toString() {
		return "Cliente [apellidos=" + apellidos + ", telefono=" + telefono + ", afp=" + afp + ", prevision="
				+ prevision + ", direccion=" + direccion + ", comuna=" + comuna + ", edad=" + edad + "]";
	}
	
	
	
	
}
