package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IContactoDao;
import cl.cabrera.grupal6modelo.Contacto;

public class ContactoDao implements IContactoDao {
		
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	@Override
	public List<Contacto> obtenerContacto() {
		// TODO Auto-generated method stub
		
		
String query = "SELECT IDCONTACTO,INITCAP(NOMBRE),LOWER(EMAIL),TELEFONO,INITCAP(SELUSUARIO),INITCAP(COMENTARIOS) FROM CONTACTO ORDER BY IDCONTACTO ASC";
		
    	return template.query(query,new RowMapper<Contacto>(){    
        public Contacto mapRow(ResultSet rs, int row) throws SQLException {    
        	Contacto c=new Contacto();
            c.setIdcontacto(rs.getInt("IDCONTACTO"));
            c.setNombre(rs.getString("INITCAP(NOMBRE)"));
            c.setEmail(rs.getString("LOWER(EMAIL)"));
            c.setTelefono(rs.getString("TELEFONO"));
            c.setTipousuario(rs.getString("INITCAP(SELUSUARIO)"));
            c.setComentarios(rs.getString("INITCAP(COMENTARIOS)"));
            return c;
        }
    });
	}

	@Override
	public boolean crearContacto(Contacto co) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO CONTACTO VALUES ('" + co.getIdcontacto() + "','" + co.getNombre() + "', "
				+ "'" + co.getEmail() + "', '" + co.getTelefono() + "','" + co.getTipousuario() + "', '" + co.getComentarios() + "')"; 
				template.update(sql);
				return true;
	}

	@Override
	public boolean eliminarContacto(Contacto co) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM CONTACTO WHERE IDCONTACTO=" + co.getIdcontacto();
		template.update(sql);
		return true;
	}

	@Override
	public boolean editarContacto(Contacto co) {
		// TODO Auto-generated method stub
		String sql = "UPDATE CONTACTO SET  NOMBRE  = '" + co.getNombre()
		+ "', EMAIL = '" + co.getEmail() + "', TELEFONO = '" + co.getTelefono()
		+ "', SELUSUARIO = '" + co.getTipousuario() + "', COMENTARIOS = '" + co.getComentarios()
		+ "' WHERE IDCONTACTO = '" + co.getIdcontacto() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Contacto obteneridContacto(int idcontacto) {
		// TODO Auto-generated method stub
String sql = "SELECT * FROM CONTACTO WHERE IDCONTACTO = ?";
		
		return template.queryForObject(sql, new Object[] {idcontacto}, (rs, rowNum) ->
		new Contacto(
				rs.getInt("IDCONTACTO"),
				rs.getString("NOMBRE"),
				rs.getString("EMAIL"),
				rs.getString("TELEFONO"),
				rs.getString("SELUSUARIO"),
				rs.getString("COMENTARIOS")
				));
	}

}
