package cl.cabrera.grupal6dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.cabrera.grupal6idao.IVisitaDao;
import cl.cabrera.grupal6modelo.Visita;

public class VisitaDao implements IVisitaDao {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Visita> obtenerVisita() {
		
		String query = "SELECT IDVISITA, VISFECHA,VISHORA,INITCAP(VISLUGAR),INITCAP(VISCOMENTARIOS),CLIENTE_RUTCLIENTE FROM VISITA ORDER BY IDVISITA ASC";
		
    	return template.query(query,new RowMapper<Visita>(){    
        public Visita mapRow(ResultSet rs, int row) throws SQLException {    
        	Visita v=new Visita();
        	v.setIdvisita(rs.getInt("IDVISITA"));
        	v.setVisfecha(rs.getString("VISFECHA"));
        	v.setVishora(rs.getString("VISHORA"));
        	v.setVislugar(rs.getString("INITCAP(VISLUGAR)"));
        	v.setViscomentarios(rs.getString("INITCAP(VISCOMENTARIOS)"));
        	v.setCliente_rutcliente(rs.getString("CLIENTE_RUTCLIENTE"));
            return v;
        }
    });
	}

	@Override
	public boolean crearVisita(Visita vi) {
		String sql = "INSERT INTO VISITA VALUES ('" + vi.getIdvisita() + "','" + vi.getVisfecha() + "', "
				+ "'" + vi.getVishora() + "', '" + vi.getVislugar() + "','" + vi.getViscomentarios() + "', '" + vi.getCliente_rutcliente() + "')"; 
				template.update(sql);
				return true;
	}

	@Override
	public boolean eliminarVisita(Visita vi) {
		String sql = "DELETE FROM VISITA WHERE IDVISITA=" + vi.getIdvisita();
		template.update(sql);
		return true;
	}

	@Override
	public boolean editarVisita(Visita vi) {
		String sql = "UPDATE VISITA SET  VISFECHA  = '" + vi.getVisfecha()
		+ "', VISHORA = '" + vi.getVishora() + "', VISLUGAR = '" + vi.getVislugar()
		+ "', VISCOMENTARIOS = '" + vi.getViscomentarios() + "', CLIENTE_RUTCLIENTE = '" + vi.getCliente_rutcliente()
		+ "' WHERE IDVISITA = '" + vi.getIdvisita() + "'";
		template.update(sql);
		return true;
	}

	@Override
	public Visita obteneridvisita(int idvisita) {
String sql = "SELECT * FROM VISITA WHERE IDVISITA = ?";
		
		return template.queryForObject(sql, new Object[] {idvisita}, (rs, rowNum) ->
		new Visita(
				rs.getInt("IDVISITA"),
				rs.getString("VISFECHA"),
				rs.getString("VISHORA"),
				rs.getString("VISLUGAR"),
				rs.getString("VISCOMENTARIOS"),
				rs.getString("CLIENTE_RUTCLIENTE")
				));
	}

	@Override
	public List<Visita> listarid() {
		
		String query = "SELECT * FROM VISITA V WHERE NOT EXISTS (SELECT * FROM CHEQUEOS C WHERE V.IDVISITA=C.VISITA_IDVISITA) ORDER BY IDVISITA ASC";
		
    	return template.query(query,new RowMapper<Visita>(){    
        public Visita mapRow(ResultSet rs, int row) throws SQLException {    
        	Visita v=new Visita();
        	v.setIdvisita(rs.getInt("IDVISITA"));
            return v;
        }
    });
	}

}
