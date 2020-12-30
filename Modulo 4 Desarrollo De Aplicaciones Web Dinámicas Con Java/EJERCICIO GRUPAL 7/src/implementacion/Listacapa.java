package implementacion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import conexion.conecOracle;
import interfaces.Listaintcapa;
import modelo.Capacitacion;

public class Listacapa implements Listaintcapa {

	@Override
	public boolean insertar(Capacitacion capacitacion) {
		
		boolean insertar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO CAPACITACION1 values ('" 
				+ capacitacion.getIdcapa() + "','" 
				+ capacitacion.getDia() + "','" 
				+ capacitacion.getHora() + "','" 
				+ capacitacion.getLugar() + "','" 
				+ capacitacion.getDuracion() + "')";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			insertar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listacapa, "
					+ "método insertar");
			e.printStackTrace();
		}
		
		return insertar;
	}

	@Override
	public List<Capacitacion> obtener() {
		
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "CAPACITACION1 ORDER BY IDCAPACITACION";
		List<Capacitacion> listaCapacitacion = new ArrayList<Capacitacion>();
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Capacitacion c = new Capacitacion();
				c.setIdcapa(rs.getInt(1));
				c.setDia(rs.getString(2));
				c.setHora(rs.getString(3));
				c.setLugar(rs.getString(4));
				c.setDuracion(rs.getString(5));
				listaCapacitacion.add(c);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listacapa, "
					+ "método obtener");
			e.printStackTrace();
		}		
		
		return listaCapacitacion;
	}

	@Override
	public boolean actualizar(Capacitacion capacitacion) {
		
		Connection con = null;
		Statement stm = null;

		boolean actualizar = false;

		String sql = "UPDATE CAPACITACION1 SET "
				+ "dia = '" + capacitacion.getDia() + "', "
				+ "hora = '" + capacitacion.getHora() + "', "
				+ "lugar = '" + capacitacion.getLugar() + "' "
				+ "duracion = '" + capacitacion.getDuracion() + "' "
				+ "WHERE id = '" + capacitacion.getIdcapa() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			actualizar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listacapa, "
					+ "método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public boolean eliminar(Capacitacion capacitacion) {
		
		Connection con = null;
		Statement stm = null;

		boolean eliminar = false;

		String sql = "DELETE FROM CAPACITACION1 "
				+ "WHERE id = '" + capacitacion.getIdcapa() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listacapa, "
					+ "método eliminar");
			e.printStackTrace();
		}
		
		return eliminar;
	}
}