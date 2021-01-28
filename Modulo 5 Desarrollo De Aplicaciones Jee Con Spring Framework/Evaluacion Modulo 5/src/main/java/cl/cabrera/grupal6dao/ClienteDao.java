package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IClientedao;

import cl.cabrera.grupal6modelo.Cliente;


public class ClienteDao implements IClientedao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Cliente> obtenerCliente() {
		
		String query = "SELECT RUTCLIENTE, INITCAP(CLINOMBRES), INITCAP(CLIAPELLIDOS),CLITELEFONO,INITCAP(CLIAFP),CLISISTEMASALUD,INITCAP(CLIDIRECCION),INITCAP(CLICOMUNA),CLIEDAD FROM CLIENTE ORDER BY CLIAPELLIDOS ASC";
		
    	return template.query(query,new RowMapper<Cliente>(){    
        public Cliente mapRow(ResultSet rs, int row) throws SQLException {    
        	Cliente c=new Cliente();
        	
        	c.setRunusuario(rs.getString("RUTCLIENTE"));
        	c.setNombre(rs.getString("INITCAP(CLINOMBRES)"));
        	c.setApellido(rs.getString("INITCAP(CLIAPELLIDOS)"));
        	c.setTelefono(rs.getString("CLITELEFONO"));
        	c.setAfp(rs.getString("INITCAP(CLIAFP)"));
        	c.setSalud(rs.getInt("CLISISTEMASALUD"));
        	c.setDireccion(rs.getString("INITCAP(CLIDIRECCION)"));
        	c.setComuna(rs.getString("INITCAP(CLICOMUNA)"));
        	c.setEdad(rs.getInt("CLIEDAD"));
        	
            return c;
        }
    });
	}

	@Override
	public boolean crearCliente(Cliente cl) {
	
		String sql = "INSERT INTO CLIENTE VALUES ('" + cl.getRun() + "','" + cl.getNombre() + "', "
				+ "'" + cl.getApellido() + "', '" + cl.getTelefono() + "','" + cl.getAfp() + "', '" + cl.getSalud() + "', "
				+ "'" + cl.getDireccion() + "', '" + cl.getComuna() + "','" + cl.getEdad() + "', '" + cl.getRunusuario() + "')"; 
				template.update(sql);
				return true;
	}

	
	@Override
	public boolean editarCliente(Cliente cl) {

		String sql = "UPDATE CLIENTE SET CLINOMBRES  = '" + cl.getNombre()
		+ "', CLIAPELLIDOS = '" + cl.getApellido() + "', CLITELEFONO = '" + cl.getTelefono()
		+ "', CLIAFP = '" + cl.getAfp() + "', CLISISTEMASALUD = '" + cl.getSalud()
		+ "', CLIDIRECCION = '" + cl.getDireccion() + "', CLICOMUNA = '" + cl.getComuna()
		+ "', CLIEDAD = '" + cl.getEdad() + "', USUARIORUN = '" + cl.getRunusuario()
		+ "' WHERE RUTCLIENTE = '" + cl.getRun() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Cliente obtenerRuncliente(String runusuario) {
		
		String sql = "SELECT * FROM CLIENTE WHERE RUTCLIENTE = ?";
		
		return template.queryForObject(sql, new Object[] {runusuario}, (rs, rowNum) ->
		new Cliente(
				rs.getString("RUTCLIENTE"),
				rs.getString("CLINOMBRES"),
				rs.getString("CLIAPELLIDOS"),
				rs.getString("CLITELEFONO"),
				rs.getString("CLIAFP"),
				rs.getInt("CLISISTEMASALUD"),
				rs.getString("CLIDIRECCION"),
				rs.getString("CLICOMUNA"),
				rs.getInt("CLIEDAD"),
				rs.getString("USUARIORUN")
				));
	
	}

}
