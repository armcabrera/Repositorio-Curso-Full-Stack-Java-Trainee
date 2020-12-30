package modelo;

public class Administrativo extends Usuario {
	private String area;
	private String experiencia;
	
	public Administrativo() {
		super();
	}

	public Administrativo(String nombre, String fechanacimiento, String run, String area, String experiencia) {
		super(nombre, fechanacimiento, run);
		this.area = area;
		this.experiencia = experiencia;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getExperiencia() {
		return experiencia;
	}

	public void setExperiencia(String experiencia) {
		this.experiencia = experiencia;
	}

	@Override
	public String toString() {
		return "Administrativo [area=" + area + ", experiencia=" + experiencia + "]";
	}
	
	
	
}
