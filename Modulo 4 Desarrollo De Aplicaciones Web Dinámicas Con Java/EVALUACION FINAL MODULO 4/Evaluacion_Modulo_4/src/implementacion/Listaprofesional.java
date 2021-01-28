package implementacion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.conecOracle;
import interfaces.Listaintprof;

import modelo.Profesional;


public class Listaprofesional implements Listaintprof {

	@Override
	public boolean insertar(Profesional profesional) {
boolean insertar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO PROFESIONAL values ('" 
				+ profesional.getRun() + "','" 
				+ profesional.getNombre() + "','" 
				+ profesional.getApellido() + "','"  
				+ profesional.getTelefono() + "','" 
				+ profesional.getTitulo() + "','" 
				+ profesional.getProyecto() + "','" 
				+ profesional.getRun() + "')";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			insertar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listaprofesional, "
					+ "método insertar");
			e.printStackTrace();
		}
		
		return insertar;
	}

	@Override
	public List<Profesional> obtener() {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "PROFESIONAL ORDER BY RUN";
		List<Profesional> listaprofesional = new ArrayList<Profesional>();
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Profesional p = new Profesional();
				p.setRunusuario(rs.getString(1));
				p.setNombre(rs.getString(2));
				p.setApellido(rs.getString(3));
				p.setTelefono(rs.getString(4));
				p.setTitulo(rs.getString(5));
				p.setProyecto(rs.getString(6));
				listaprofesional.add(p);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Profesional, "
					+ "método obtener");
			e.printStackTrace();
		}		
		
		return listaprofesional;
	}

	@Override
	public boolean actualizar(Profesional profesional) {
		Connection con = null;
		Statement stm = null;

		boolean actualizar = false;

		String sql = "UPDATE PROFESIONAL SET "
				+ "NOMBRES = '" + profesional.getNombre() + "', "
				+ "APELLIDOS = '" + profesional.getApellido() + "', "
				+ "TELEFONO = '" + profesional.getTelefono() + "', "
				+ "TITULO = '" + profesional.getTitulo()+ "', "
				+ "PROYECTO = '" + profesional.getProyecto()+ "' "
				+ "WHERE RUN = '" + profesional.getRunusuario() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			actualizar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listaprofesional, "
					+ "método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public boolean eliminar(Profesional profesional) {
		Connection con = null;
		Statement stm = null;

		boolean eliminar = false;

	
		
		String sql = "DELETE FROM PROFESIONAL "
				+ "WHERE RUN = '" + profesional.getRun() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listaprofesional, "
					+ "método eliminar");
			e.printStackTrace();
		}
		
		return eliminar;
	}

	@Override
	public Profesional obtenerRunpro(Profesional profesional) {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		Profesional q = new Profesional();
		
		String sql = "SELECT * FROM "
				+ "PROFESIONAL WHERE RUN = '" + profesional.getRunusuario() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				q.setRunusuario(rs.getString(1));
				q.setNombre(rs.getString(2));
				q.setApellido(rs.getString(3));
				q.setTelefono(rs.getString(4));
				q.setTitulo(rs.getString(5));
				q.setProyecto(rs.getString(6));
				
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listaprofesional, "
					+ "método ObtenerRunpro");
			e.printStackTrace();
		}
		
		return q;
	}

	

}
