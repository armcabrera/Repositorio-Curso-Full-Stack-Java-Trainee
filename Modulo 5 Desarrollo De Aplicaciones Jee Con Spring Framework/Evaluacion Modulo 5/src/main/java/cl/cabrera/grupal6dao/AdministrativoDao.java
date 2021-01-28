package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IAdminDao;
import cl.cabrera.grupal6modelo.Administrativo;



public class AdministrativoDao implements IAdminDao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Administrativo> obtenerAdministrativo() {
		
		String query = "SELECT RUN, INITCAP(NOMBRES), INITCAP(APELLIDOS), LOWER(CORREO), INITCAP(AREA),USUARIORUN FROM ADMINISTRATIVO ORDER BY APELLIDOS ASC";
		
    	return template.query(query,new RowMapper<Administrativo>(){    
        public Administrativo mapRow(ResultSet rs, int row) throws SQLException {    
        	Administrativo a=new Administrativo();
        	a.setRun(rs.getString("RUN"));
        	a.setNombre(rs.getString("INITCAP(NOMBRES)"));
        	a.setApellido(rs.getString("INITCAP(APELLIDOS)"));
        	a.setCorreo(rs.getString("LOWER(CORREO)"));
        	a.setArea(rs.getString("INITCAP(AREA)"));
        	a.setRunusuario(rs.getString("USUARIORUN"));
            return a;
        }
    });
	}

	@Override
	public boolean crearAdministrativo(Administrativo ad) {
		
		String sql = "INSERT INTO ADMINISTRATIVO VALUES ('" + ad.getRun() + "','" + ad.getNombre() + "', "
				+ "'" + ad.getApellido() + "', '" + ad.getCorreo() + "','" + ad.getArea() + "', '" + ad.getRunusuario() + "')"; 
				template.update(sql);
				return true;
	}


	@Override
	public boolean editarAdministrativo(Administrativo ad) {
		
		String sql = "UPDATE ADMINISTRATIVO SET NOMBRES  = '" + ad.getNombre()
		+ "', APELLIDOS = '" + ad.getApellido()+ "', CORREO = '" + ad.getCorreo() 
		+ "', AREA = '" + ad.getArea()+ "', USUARIORUN = '" + ad.getRunusuario() 
		+ "' WHERE RUN = '" + ad.getRun() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Administrativo obtenerRunadmin(String runusuario) {
		
		String sql = "SELECT * FROM ADMINISTRATIVO WHERE RUN = ?";
		
		return template.queryForObject(sql, new Object[] {runusuario}, (rs, rowNum) ->
		new Administrativo(
				rs.getString("RUN"),
				rs.getString("NOMBRES"),
				rs.getString("APELLIDOS"),
				rs.getString("CORREO"),
				rs.getString("AREA"),
				rs.getString("USUARIORUN")
				));
	}

}
