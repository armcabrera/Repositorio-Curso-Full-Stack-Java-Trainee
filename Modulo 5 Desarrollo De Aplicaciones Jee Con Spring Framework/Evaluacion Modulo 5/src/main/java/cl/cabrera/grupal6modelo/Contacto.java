package cl.cabrera.grupal6modelo;

public class Contacto {
	
	private int idcontacto;
	private String nombre;
	private String email;
	private String telefono;
	private String tipousuario;
	private String comentarios;
	
	
	public Contacto() {
		super();
	}


	public Contacto(int idcontacto, String nombre, String email, String telefono, String tipousuario,
			String comentarios) {
		super();
		this.idcontacto = idcontacto;
		this.nombre = nombre;
		this.email = email;
		this.telefono = telefono;
		this.tipousuario = tipousuario;
		this.comentarios = comentarios;
	}


	public int getIdcontacto() {
		return idcontacto;
	}


	public String getNombre() {
		return nombre;
	}


	public String getEmail() {
		return email;
	}


	public String getTelefono() {
		return telefono;
	}


	public String getTipousuario() {
		return tipousuario;
	}


	public String getComentarios() {
		return comentarios;
	}


	public void setIdcontacto(int idcontacto) {
		this.idcontacto = idcontacto;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


	public void setTipousuario(String tipousuario) {
		this.tipousuario = tipousuario;
	}


	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}


	@Override
	public String toString() {
		return "Contacto [idcontacto=" + idcontacto + ", nombre=" + nombre + ", email=" + email + ", telefono="
				+ telefono + ", tipousuario=" + tipousuario + ", comentarios=" + comentarios + "]";
	}
	
	
	
	
	

}
