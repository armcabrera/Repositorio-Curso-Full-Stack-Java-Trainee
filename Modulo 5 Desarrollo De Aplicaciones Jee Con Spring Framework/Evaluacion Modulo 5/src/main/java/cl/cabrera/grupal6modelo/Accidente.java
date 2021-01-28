package cl.cabrera.grupal6modelo;

public class Accidente {
	
	private int accidenteid;
	private String accifecha;
	private String accihora;
	private String accilugar;
	private String acciorigen;
	private String acciconsecuencia;
	private String cliente_rutcliente;
	
	
	public Accidente() {
		super();
	}


	public Accidente(int accidenteid, String accifecha, String accihora, String accilugar, String acciorigen,
			String acciconsecuencia, String cliente_rutcliente) {
		super();
		this.accidenteid = accidenteid;
		this.accifecha = accifecha;
		this.accihora = accihora;
		this.accilugar = accilugar;
		this.acciorigen = acciorigen;
		this.acciconsecuencia = acciconsecuencia;
		this.cliente_rutcliente = cliente_rutcliente;
	}


	public int getAccidenteid() {
		return accidenteid;
	}


	public String getAccifecha() {
		return accifecha;
	}


	public String getAccihora() {
		return accihora;
	}


	public String getAccilugar() {
		return accilugar;
	}


	public String getAcciorigen() {
		return acciorigen;
	}


	public String getAcciconsecuencia() {
		return acciconsecuencia;
	}


	public String getCliente_rutcliente() {
		return cliente_rutcliente;
	}


	public void setAccidenteid(int accidenteid) {
		this.accidenteid = accidenteid;
	}


	public void setAccifecha(String accifecha) {
		this.accifecha = accifecha;
	}


	public void setAccihora(String accihora) {
		this.accihora = accihora;
	}


	public void setAccilugar(String accilugar) {
		this.accilugar = accilugar;
	}


	public void setAcciorigen(String acciorigen) {
		this.acciorigen = acciorigen;
	}


	public void setAcciconsecuencia(String acciconsecuencia) {
		this.acciconsecuencia = acciconsecuencia;
	}


	public void setCliente_rutcliente(String cliente_rutcliente) {
		this.cliente_rutcliente = cliente_rutcliente;
	}


	@Override
	public String toString() {
		return "Accidente [accidenteid=" + accidenteid + ", accifecha=" + accifecha + ", accihora=" + accihora
				+ ", accilugar=" + accilugar + ", acciorigen=" + acciorigen + ", acciconsecuencia=" + acciconsecuencia
				+ ", cliente_rutcliente=" + cliente_rutcliente + "]";
	}

}
