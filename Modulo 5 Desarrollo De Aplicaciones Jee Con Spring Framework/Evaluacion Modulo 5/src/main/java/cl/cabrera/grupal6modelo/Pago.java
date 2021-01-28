package cl.cabrera.grupal6modelo;

public class Pago {
	
	private int idpago;
	private  String fechapago;
	private int montopago;
	private String mespago;
	private int aniopago;
	private String runcliente;
	
	
	public Pago() {
		super();
	}


	public Pago(int idpago, String fechapago, int montopago, String mespago, int aniopago, String runcliente) {
		super();
		this.idpago = idpago;
		this.fechapago = fechapago;
		this.montopago = montopago;
		this.mespago = mespago;
		this.aniopago = aniopago;
		this.runcliente = runcliente;
	}


	public int getIdpago() {
		return idpago;
	}


	public String getFechapago() {
		return fechapago;
	}


	public int getMontopago() {
		return montopago;
	}


	public String getMespago() {
		return mespago;
	}


	public int getAniopago() {
		return aniopago;
	}


	public String getRuncliente() {
		return runcliente;
	}


	public void setIdpago(int idpago) {
		this.idpago = idpago;
	}


	public void setFechapago(String fechapago) {
		this.fechapago = fechapago;
	}


	public void setMontopago(int montopago) {
		this.montopago = montopago;
	}


	public void setMespago(String mespago) {
		this.mespago = mespago;
	}


	public void setAniopago(int aniopago) {
		this.aniopago = aniopago;
	}


	public void setRuncliente(String runcliente) {
		this.runcliente = runcliente;
	}


	@Override
	public String toString() {
		return "Pago [idpago=" + idpago + ", fechapago=" + fechapago + ", montopago=" + montopago + ", mespago="
				+ mespago + ", aniopago=" + aniopago + ", runcliente=" + runcliente + "]";
	}
	
	

}
