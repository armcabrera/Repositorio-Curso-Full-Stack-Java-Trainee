package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IAsesoriaDao;
import cl.cabrera.grupal6modelo.Asesoria;

public class AsesoriaDao implements IAsesoriaDao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Asesoria> obtenerAsesorias() {
		
	
		String query = "SELECT IDASESORIA, FECHAREALIZACION, INITCAP(MOTIVO), INITCAP(PROFESIONAL_A_CARGO), PROFESIONAL_RUN FROM ASESORIA ORDER BY IDASESORIA";
		
    	return template.query(query,new RowMapper<Asesoria>(){    
        public Asesoria mapRow(ResultSet rs, int row) throws SQLException {    
        	Asesoria a = new Asesoria();
            a.setIdasesoria(rs.getInt("IDASESORIA"));
            a.setFecharealizacion(rs.getString("FECHAREALIZACION"));
            a.setMotivo(rs.getString("INITCAP(MOTIVO)"));
            a.setProfesional_cargo(rs.getString("INITCAP(PROFESIONAL_A_CARGO)"));
            a.setProfesional_run(rs.getString("PROFESIONAL_RUN"));
            return a;
        }
    });
	}

	@Override
	public boolean crearAsesorias(Asesoria as) {
		
			String sql = "INSERT INTO ASESORIA VALUES ('" + as.getIdasesoria() + "','" + as.getFecharealizacion() + "', "
					+ "'" + as.getMotivo() + "', '" + as.getProfesional_cargo() + "','" + as.getProfesional_run() + "')"; 
					template.update(sql);
					return true;
	}

	@Override
	public boolean eliminarAsesorias(Asesoria as) {
		String sql = "DELETE FROM ASESORIA WHERE IDASESORIA=" + as.getIdasesoria();
		template.update(sql);
		return true;
	}

	@Override
	public boolean editarAsesorias(Asesoria as) {
		String sql = "UPDATE ASESORIA SET FECHAREALIZACION = '" + as.getFecharealizacion() + "', MOTIVO = '" + as.getMotivo()
		+ "', PROFESIONAL_A_CARGO = '" + as.getProfesional_cargo() + "', PROFESIONAL_RUN = '" + as.getProfesional_run()
		+ "' WHERE IDASESORIA = '" + as.getIdasesoria() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Asesoria obteneridasesorias(int idasesoria) {
		
		String sql = "SELECT * FROM ASESORIA WHERE IDASESORIA = ?";
		
		return template.queryForObject(sql, new Object[] {idasesoria}, (rs, rowNum) ->
		new Asesoria(
				rs.getInt("IDASESORIA"),
				rs.getString("FECHAREALIZACION"),
				rs.getString("MOTIVO"),
				rs.getString("PROFESIONAL_A_CARGO"),
				rs.getString("PROFESIONAL_RUN")			
				));
	}

}
