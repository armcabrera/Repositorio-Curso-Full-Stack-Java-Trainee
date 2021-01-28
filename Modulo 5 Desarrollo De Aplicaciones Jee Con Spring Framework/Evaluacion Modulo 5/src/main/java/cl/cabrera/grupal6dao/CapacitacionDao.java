package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.ICapacitacionDao;
import cl.cabrera.grupal6modelo.Capacitacion;

public class CapacitacionDao implements ICapacitacionDao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Capacitacion> obtenerCapacitaciones() {
		
		String query = "SELECT IDCAPACITACION, CAPFECHA, CAPHORA,INITCAP(CAPLUGAR), CAPDURACION,CLIENTE_RUTCLIENTE FROM CAPACITACION ORDER BY IDCAPACITACION ASC";
		
    	return template.query(query,new RowMapper<Capacitacion>(){    
        public Capacitacion mapRow(ResultSet rs, int row) throws SQLException {    
        	Capacitacion c=new Capacitacion();
            c.setIdcapa(rs.getInt("IDCAPACITACION"));
            c.setDia(rs.getString("CAPFECHA"));
            c.setHora(rs.getString("CAPHORA"));
            c.setLugar(rs.getString("INITCAP(CAPLUGAR)"));
            c.setDuracion(rs.getInt("CAPDURACION"));
            c.setRuncliente(rs.getString("CLIENTE_RUTCLIENTE"));
            return c;
        }
    });
	}

	@Override
	public boolean crearCapacitacion(Capacitacion cp) {
		
		String sql = "INSERT INTO CAPACITACION VALUES ('" + cp.getIdcapa() + "','" + cp.getDia() + "', "
				+ "'" + cp.getHora() + "', '" + cp.getLugar() + "','" + cp.getDuracion() + "', '" + cp.getRuncliente() + "')"; 
				template.update(sql);
				return true;
	}

	@Override
	public boolean eliminarCapacitacion(Capacitacion cp) {
		
		String sql = "DELETE FROM CAPACITACION WHERE IDCAPACITACION=" + cp.getIdcapa();
		template.update(sql);
		return true;
	}

	@Override
	public boolean editarCapacitacion(Capacitacion cp) {
		
		String sql = "UPDATE CAPACITACION SET  CAPFECHA  = '" + cp.getDia()
		+ "', CAPHORA = '" + cp.getHora() + "', CAPLUGAR = '" + cp.getLugar()
		+ "', CAPDURACION = '" + cp.getDuracion() + "', CLIENTE_RUTCLIENTE = '" + cp.getRuncliente()
		+ "' WHERE IDCAPACITACION = '" + cp.getIdcapa() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Capacitacion obteneridcapa(int idCapa) {
		
		String sql = "SELECT * FROM CAPACITACION WHERE IDCAPACITACION = ?";
		
		return template.queryForObject(sql, new Object[] {idCapa}, (rs, rowNum) ->
		new Capacitacion(
				rs.getInt("IDCAPACITACION"),
				rs.getString("CAPFECHA"),
				rs.getString("CAPHORA"),
				rs.getString("CAPLUGAR"),
				rs.getInt("CAPDURACION"),
				rs.getString("CLIENTE_RUTCLIENTE")
				));
	}

}
