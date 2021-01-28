package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IChequeosDao;
import cl.cabrera.grupal6modelo.Chequeos;

public class ChequeosDao implements IChequeosDao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Chequeos> obtenerChequeos() {
		String query = "SELECT IDCHEQUEO, IMPLEMENTOSEGURIDAD, PROTOCOLOSEGURIDAD, VESTIMENTASEGURIDAD, MANUALSEGURIDAD, INITCAP(OBSERVACIONES), VISITA_IDVISITA FROM CHEQUEOS ORDER BY IDCHEQUEO ASC";
		
    	return template.query(query,new RowMapper<Chequeos>(){    
        public Chequeos mapRow(ResultSet rs, int row) throws SQLException {    
        	Chequeos c=new Chequeos();
            c.setIdchequeo(rs.getInt("IDCHEQUEO"));
            c.setImplementoseguridad(rs.getString("IMPLEMENTOSEGURIDAD"));
            c.setProtocoloseguridad(rs.getString("PROTOCOLOSEGURIDAD"));
            c.setVestimentaseguridad(rs.getString("VESTIMENTASEGURIDAD"));
            c.setManualseguridad(rs.getString("MANUALSEGURIDAD"));
            c.setObservaciones(rs.getString("INITCAP(OBSERVACIONES)"));
            c.setVisita_idvisita(rs.getInt("VISITA_IDVISITA"));
            return c;
        }
    });
	}

	@Override
	public boolean crearChequeos(Chequeos ch) {

		String sql = "INSERT INTO CHEQUEOS VALUES ('" + ch.getIdchequeo() + "','" + ch.getImplementoseguridad() + "', "
				+ "'" + ch.getProtocoloseguridad() + "', '" + ch.getVestimentaseguridad() + "','" + ch.getManualseguridad() 
				+ "', '" + ch.getObservaciones() + "','" + ch.getVisita_idvisita() + "')"; 
				template.update(sql);
				return true;
	}

	@Override
	public boolean eliminarChequeos(Chequeos ch) {
		String sql = "DELETE FROM CHEQUEOS WHERE IDCHEQUEO=" + ch.getIdchequeo();
		template.update(sql);
		return true;
	}

	@Override
	public boolean editarChequeos(Chequeos ch) {
		String sql = "UPDATE CHEQUEOS SET  IMPLEMENTOSEGURIDAD  = '" + ch.getImplementoseguridad()
		+ "', PROTOCOLOSEGURIDAD = '" + ch.getProtocoloseguridad() + "', VESTIMENTASEGURIDAD = '" + ch.getVestimentaseguridad()
		+ "', MANUALSEGURIDAD = '" + ch.getManualseguridad() + "', OBSERVACIONES = '" + ch.getObservaciones() + "', VISITA_IDVISITA = '" + ch.getVisita_idvisita() 
		+ "' WHERE IDCHEQUEO = '" + ch.getIdchequeo() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Chequeos obteneridchequeo(int idchequeo) {
		
		String sql = "SELECT * FROM CHEQUEOS WHERE IDCHEQUEO = ?";
		
		return template.queryForObject(sql, new Object[] {idchequeo}, (rs, rowNum) ->
		new Chequeos(
				rs.getInt("IDCHEQUEO"),
				rs.getString("IMPLEMENTOSEGURIDAD"),
				rs.getString("PROTOCOLOSEGURIDAD"),
				rs.getString("VESTIMENTASEGURIDAD"),
				rs.getString("MANUALSEGURIDAD"),
				rs.getString("OBSERVACIONES"),
				rs.getInt("VISITA_IDVISITA")
				));
	}

	
	  @Override 
	  public Chequeos obtenerid(int idchequeo) { 
		  
		  Chequeos chek = null;
			try {
		 
				chek = template.queryForObject(
						"SELECT IMPLEMENTOSEGURIDAD, PROTOCOLOSEGURIDAD,VESTIMENTASEGURIDAD,MANUALSEGURIDAD FROM CHEQUEOS WHERE VISITA_IDVISITA = ?",
						new Object[] { idchequeo }, new BeanPropertyRowMapper<Chequeos>(
								Chequeos.class));
			} catch (EmptyResultDataAccessException e) {
				return null;
			}
		 
			return chek;
		}
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
			/*
			 * String sql
			 * ="SELECT IMPLEMENTOSEGURIDAD, PROTOCOLOSEGURIDAD,VESTIMENTASEGURIDAD,MANUALSEGURIDAD FROM CHEQUEOS WHERE VISITA_IDVISITA = ?"
			 * ;
			 * 
			 * return template.queryForObject(sql, new Object[] {idchequeo}, (rs, rowNum) ->
			 * new Chequeos( rs.getString("IMPLEMENTOSEGURIDAD"),
			 * rs.getString("PROTOCOLOSEGURIDAD"), rs.getString("VESTIMENTASEGURIDAD"),
			 * rs.getString("MANUALSEGURIDAD") ));
			 */
	  
}	