package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IpagoDao;
import cl.cabrera.grupal6modelo.Pago;

public class PagoDao implements IpagoDao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Pago> obtenerPago() {
		
		String query = "SELECT IDPAGO,FECHAPAGO, MONTOPAGO,INITCAP(MESPAGO), ANIOPAGO, CLIENTE_RUTCLIENTE FROM PAGO ORDER BY IDPAGO ASC";
		return template.query(query,new RowMapper<Pago>(){    
	        public Pago mapRow(ResultSet rs, int row) throws SQLException {    
	        	Pago p= new Pago();
	        	p.setIdpago(rs.getInt("IDPAGO"));
	            p.setFechapago(rs.getString("FECHAPAGO"));
	            p.setMontopago(rs.getInt("MONTOPAGO"));
	            p.setMespago(rs.getString("INITCAP(MESPAGO)"));
	            p.setAniopago(rs.getInt("ANIOPAGO"));
	            p.setRuncliente(rs.getString("CLIENTE_RUTCLIENTE"));
	            return p;
	        }
	    });
	}

	@Override
	public boolean crearPago(Pago pa) {
		
		String sql = "INSERT INTO PAGO VALUES ('" + pa.getIdpago() + "','" + pa.getFechapago() + "', "
				+ "'" + pa.getMontopago() + "', '" + pa.getMespago() + "','" + pa.getAniopago() + "', '" + pa.getRuncliente() + "')"; 
				template.update(sql);
				return true;
	}

	@Override
	public boolean eliminarPago(Pago pa) {
		String sql = "DELETE FROM PAGO WHERE IDPAGO=" + pa.getIdpago();
		template.update(sql);
		return true;
	}

	@Override
	public boolean editarPago(Pago pa) {
				
		
		String sql = "UPDATE PAGO SET  FECHAPAGO  = '" + pa.getFechapago()
		+ "', MONTOPAGO = '" + pa.getMontopago() + "', MESPAGO = '" + pa.getMespago()
		+ "', ANIOPAGO = '" + pa.getAniopago() + "', CLIENTE_RUTCLIENTE = '" + pa.getRuncliente()
		+ "' WHERE IDPAGO = '" + pa.getIdpago() + "'";
		template.update(sql);
		return true;
	
	}

	@Override
	public Pago obteneridPago(int idpago) {
		String sql = "SELECT * FROM PAGO WHERE IDPAGO = ?";

		return template.queryForObject(sql, new Object[] {idpago}, (rs, rowNum) ->
		new Pago(
				rs.getInt("IDPAGO"),
				rs.getString("FECHAPAGO"),
				rs.getInt("MONTOPAGO"),
				rs.getString("MESPAGO"),
				rs.getInt("ANIOPAGO"),
				rs.getString("CLIENTE_RUTCLIENTE")
				));
	}

}
