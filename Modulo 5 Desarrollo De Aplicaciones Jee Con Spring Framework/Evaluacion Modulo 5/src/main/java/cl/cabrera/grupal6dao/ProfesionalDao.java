package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IProfesionalDao;

import cl.cabrera.grupal6modelo.Profesional;

public class ProfesionalDao implements IProfesionalDao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Profesional> obtenerProfesional() {
		
		String query = "SELECT RUN, INITCAP(NOMBRES), INITCAP(APELLIDOS), TELEFONO, INITCAP(TITULO), INITCAP(PROYECTO), USUARIORUN FROM PROFESIONAL ORDER BY APELLIDOS ASC";
		
    	return template.query(query,new RowMapper<Profesional>(){    
        public Profesional mapRow(ResultSet rs, int row) throws SQLException {    
        	Profesional p=new Profesional();
        	p.setRun(rs.getString("RUN"));
        	p.setNombre(rs.getString("INITCAP(NOMBRES)"));
        	p.setApellido(rs.getString("INITCAP(APELLIDOS)"));
        	p.setTelefono(rs.getString("TELEFONO"));
        	p.setTitulo(rs.getString("INITCAP(TITULO)"));
        	p.setProyecto(rs.getString("INITCAP(PROYECTO)"));
        	p.setRunusuario(rs.getString("USUARIORUN"));

            return p;
        }
    });
	}

	@Override
	public boolean crearProfesional(Profesional pf) {
		
		String sql = "INSERT INTO PROFESIONAL VALUES ('" + pf.getRun() + "','" + pf.getNombre() + "', "
				+ "'" + pf.getApellido() + "', '" + pf.getTelefono() + "','" + pf.getTitulo() + "', '" + pf.getProyecto() + "', " 
				+ "'" + pf.getRunusuario()  + "')"; 		
				template.update(sql);
				return true;
	}

	@Override
	public boolean editarProfesional(Profesional pf) {
		
		String sql = "UPDATE PROFESIONAL SET  NOMBRES  = '" + pf.getNombre()
		+ "', APELLIDOS = '" + pf.getApellido() + "', TELEFONO = '" + pf.getTelefono()
		+ "', TITULO = '" + pf.getTitulo() + "', PROYECTO = '" + pf.getProyecto()
		+ "', USUARIORUN = '" + pf.getRunusuario() 
		+ "' WHERE RUN = '" + pf.getRun() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Profesional obtenerRunprofesional(String runusuario) {
		
		String sql = "SELECT * FROM PROFESIONAL WHERE RUN = ?";
		
		return template.queryForObject(sql, new Object[] {runusuario}, (rs, rowNum) ->
		new Profesional(
				rs.getString("RUN"),
				rs.getString("NOMBRES"),
				rs.getString("APELLIDOS"),
				rs.getString("TELEFONO"),
				rs.getString("TITULO"),
				rs.getString("PROYECTO"),
				rs.getString("USUARIORUN")
				));
	
	}

}
