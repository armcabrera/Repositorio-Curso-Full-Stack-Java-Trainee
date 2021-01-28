package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IAsistentesDao;
import cl.cabrera.grupal6modelo.Asistentes;


public class AsistenteDao implements IAsistentesDao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	

	@Override
	public List<Asistentes> obtenerAsistentes() {
String query = "SELECT IDASISTENTE, INITCAP(ASISTNOMBRECOMPLETO), ASISTEDAD, LOWER(ASISTCORREO), ASISTTELEFONO, CAPACITACION_IDCAPACITACION FROM ASISTENTES ORDER BY IDASISTENTE";
		
    	return template.query(query,new RowMapper<Asistentes>(){    
        public Asistentes mapRow(ResultSet rs, int row) throws SQLException {    
        	Asistentes a=new Asistentes();
        	a.setIdasistente(rs.getInt("IDASISTENTE"));
        	a.setAsistnombrecompleto(rs.getString("INITCAP(ASISTNOMBRECOMPLETO)"));
        	a.setAsistedad(rs.getInt("ASISTEDAD"));
        	a.setAsistcorreo(rs.getString("LOWER(ASISTCORREO)"));
        	a.setAsisttelefono(rs.getString("ASISTTELEFONO"));
        	a.setCapacitacion_idcapacitacion(rs.getInt("CAPACITACION_IDCAPACITACION"));
            return a;
        }
    });
	}

	@Override
	public boolean crearAsistentes(Asistentes as) {
		
		String sql = "INSERT INTO ASISTENTES VALUES ('" + as.getIdasistente() + "','" + as.getAsistnombrecompleto() + "', "
				+ "'" + as.getAsistedad() + "', '" + as.getAsistcorreo() + "','" + as.getAsisttelefono() + "', '" + as.getCapacitacion_idcapacitacion() + "')"; 
				template.update(sql);
				return true;
	}

	@Override
	public boolean eliminarAsistentes(Asistentes as) {
		String sql = "DELETE FROM ASISTENTES WHERE IDASISTENTE=" + as.getIdasistente();
		template.update(sql);
		return true;
	}

	@Override
	public boolean editarAsistentes(Asistentes as) {
		String sql = "UPDATE ASISTENTES SET  ASISTNOMBRECOMPLETO  = '" + as.getAsistnombrecompleto()
		+ "', ASISTEDAD = '" + as.getAsistedad() + "', ASISTCORREO = '" + as.getAsistcorreo()
		+ "', ASISTTELEFONO = '" + as.getAsisttelefono() + "', CAPACITACION_IDCAPACITACION = '" + as.getCapacitacion_idcapacitacion()
		+ "' WHERE IDASISTENTE = '" + as.getIdasistente() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Asistentes obteneridasistentes(int idasistente) {
		
		String sql = "SELECT * FROM ASISTENTES WHERE IDASISTENTE = ?";
		
		return template.queryForObject(sql, new Object[] {idasistente}, (rs, rowNum) ->
		new Asistentes(
				rs.getInt("IDASISTENTE"),
				rs.getString("ASISTNOMBRECOMPLETO"),
				rs.getInt("ASISTEDAD"),
				rs.getString("ASISTCORREO"),
				rs.getString("ASISTTELEFONO"),
				rs.getInt("CAPACITACION_IDCAPACITACION")
				));
	}

}
