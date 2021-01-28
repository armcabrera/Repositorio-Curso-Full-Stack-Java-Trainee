package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import cl.cabrera.grupal6idao.IAccidenteDao;
import cl.cabrera.grupal6modelo.Accidente;


public class AccidenteDao implements IAccidenteDao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Accidente> obtenerAccidente() {
		
		String query = "SELECT ACCIDENTEID, ACCIFECHA, ACCIHORA, INITCAP(ACCILUGAR), INITCAP(ACCIORIGEN), INITCAP(ACCICONSECUENCIA),CLIENTE_RUTCLIENTE FROM ACCIDENTE ORDER BY ACCIDENTEID";
		
    	return template.query(query,new RowMapper<Accidente>(){    
        public Accidente mapRow(ResultSet rs, int row) throws SQLException {    
        	Accidente a=new Accidente();
        	a.setAccidenteid(rs.getInt("ACCIDENTEID"));
        	a.setAccifecha(rs.getString("ACCIFECHA"));
        	a.setAccihora(rs.getString("ACCIHORA"));
        	a.setAccilugar(rs.getString("INITCAP(ACCILUGAR)"));
        	a.setAcciorigen(rs.getString("INITCAP(ACCIORIGEN)"));
        	a.setAcciconsecuencia(rs.getString("INITCAP(ACCICONSECUENCIA)"));
        	a.setCliente_rutcliente(rs.getString("CLIENTE_RUTCLIENTE"));
            return a;
        }
    });
	}

	@Override
	public boolean crearAccidente(Accidente ac) {
		String sql = "INSERT INTO ACCIDENTE VALUES ('" + ac.getAccidenteid() + "','" + ac.getAccifecha() + "', "
				+ "'" + ac.getAccihora() + "', '" + ac.getAccilugar() + "','" + ac.getAcciorigen() + "', '" + ac.getAcciconsecuencia() + "', '" + ac.getCliente_rutcliente() + "')"; 
				template.update(sql);
				return true;
	}

	@Override
	public boolean eliminarAccidente(Accidente ac) {
		String sql = "DELETE FROM ACCIDENTE WHERE ACCIDENTEID=" + ac.getAccidenteid();
		template.update(sql);
		return true;
	}

	@Override
	public boolean editarAccidente(Accidente ac) {
		String sql = "UPDATE ACCIDENTE SET  ACCIFECHA  = '" + ac.getAccifecha()
		+ "', ACCIHORA = '" + ac.getAccihora() + "', ACCILUGAR = '" + ac.getAccilugar()
		+ "', ACCIORIGEN = '" + ac.getAcciorigen() + "', ACCICONSECUENCIA = '" + ac.getAcciconsecuencia() 
		+ "', CLIENTE_RUTCLIENTE = '" + ac.getCliente_rutcliente()
		+ "' WHERE ACCIDENTEID = '" + ac.getAccidenteid()  + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Accidente obteneridaccidente(int accidenteid) {
		
		String sql = "SELECT * FROM ACCIDENTE WHERE ACCIDENTEID = ?";
		
		return template.queryForObject(sql, new Object[] {accidenteid}, (rs, rowNum) ->
		new Accidente(
				rs.getInt("ACCIDENTEID"),
				rs.getString("ACCIFECHA"),
				rs.getString("ACCIHORA"),
				rs.getString("ACCILUGAR"),
				rs.getString("ACCIORIGEN"),
				rs.getString("ACCICONSECUENCIA"),
				rs.getString("CLIENTE_RUTCLIENTE")
				));
	}

}
