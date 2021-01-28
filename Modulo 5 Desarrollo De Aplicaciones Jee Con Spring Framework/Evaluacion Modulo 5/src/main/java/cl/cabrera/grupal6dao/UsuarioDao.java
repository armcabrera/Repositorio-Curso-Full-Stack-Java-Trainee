package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IUsuarioDao;

import cl.cabrera.grupal6modelo.Usuario;

public class UsuarioDao implements IUsuarioDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	@Override
	public List<Usuario> obtenerUsuario() {
		
		String query = "SELECT RUN, INITCAP(NOMBRE),INITCAP(APELLIDO), FECHANACIMIENTO, TIPOUSUARIO FROM USUARIO ORDER BY TIPOUSUARIO, APELLIDO ASC";
		
    	return template.query(query,new RowMapper<Usuario>(){    
        public Usuario mapRow(ResultSet rs, int row) throws SQLException {    
        	Usuario u=new Usuario();
        	
        	u.setRun(rs.getString("RUN"));
        	u.setNombre(rs.getString("INITCAP(NOMBRE)"));
        	u.setApellido(rs.getString("INITCAP(APELLIDO)"));
        	u.setFechanacimiento(rs.getString("FECHANACIMIENTO"));
        	u.setTipousuario(rs.getString("TIPOUSUARIO"));
            return u;
        }
    });
	}

	@Override
	public boolean crearUsuario(Usuario us) {
		
		String sql = "INSERT INTO USUARIO VALUES ('" + us.getRun() + "','" + us.getNombre() + "', "
				+ "'" + us.getApellido() + "', '" + us.getFechanacimiento() + "','" + us.getTipousuario()+ "')"; 
				template.update(sql);
				return true;
	}

	@Override
	public boolean eliminarUsuario(Usuario us) {
		
		String sql = "DELETE FROM USUARIO WHERE RUN = ?";
        Object[] args = new Object[] {us.getRun()};
            return template.update(sql, args) == 1;
	}

	@Override
	public boolean editarUsuario(Usuario us) {
		
		String sql = "UPDATE USUARIO SET  NOMBRE  = '" + us.getNombre()
		+ "', APELLIDO = '" + us.getApellido() + "', FECHANACIMIENTO = '" + us.getFechanacimiento()
		+ "', TIPOUSUARIO = '" + us.getTipousuario()
		+ "' WHERE RUN = '" + us.getRun() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Usuario obtenerrun(String run) {
		
		String sql = "SELECT * FROM USUARIO WHERE RUN= ?";
		
		return template.queryForObject(sql, new Object[] {run}, (rs, rowNum) ->
		new Usuario(
				rs.getString("RUN"),
				rs.getString("NOMBRE"),
				rs.getString("APELLIDO"),
				rs.getString("FECHANACIMIENTO"),
				rs.getString("TIPOUSUARIO")
				));
	
	}

}
