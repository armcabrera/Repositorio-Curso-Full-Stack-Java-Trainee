package implementacion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.conecOracle;
import interfaces.Listaintadm;
import modelo.Administrativo;



public class Listaadministrativo implements Listaintadm {

	@Override
	public boolean insertar(Administrativo administrativo) {
		
		boolean insertar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO ADMINISTRATIVO values ('" 
				+ administrativo.getRun() + "','" 
				+ administrativo.getNombre() + "','" 
				+ administrativo.getApellido() + "','" 
				+ administrativo.getCorreo() + "','" 
				+ administrativo.getArea() + "','" 
				+ administrativo.getRun() + "')";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			insertar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listaadministrativo, "
					+ "método insertar");
			e.printStackTrace();
		}
		
		return insertar;
	}

	@Override
	public List<Administrativo> obtener() {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "ADMINISTRATIVO ORDER BY RUN";
		List<Administrativo> listaadmin = new ArrayList<Administrativo>();
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Administrativo a = new Administrativo();
				a.setRunusuario(rs.getString(1));
				a.setNombre(rs.getString(2));
				a.setApellido(rs.getString(3));
				a.setCorreo(rs.getString(4));
				a.setArea(rs.getString(5));
				listaadmin.add(a);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listaadministrativo, "
					+ "método obtener");
			e.printStackTrace();
		}		
		
		return listaadmin;
	}

	@Override
	public boolean actualizar(Administrativo administrativo) {
		Connection con = null;
		Statement stm = null;

		boolean actualizar = false;
		
		String sql = "UPDATE ADMINISTRATIVO SET "
				+ "NOMBRES = '" + administrativo.getNombre() + "', "
				+ "APELLIDOS = '" + administrativo.getApellido() +  "', "
				+ "CORREO = '" + administrativo.getCorreo() +  "', "
				+ "AREA = '" + administrativo.getArea() + "' "
				+ "WHERE RUN = '" + administrativo.getRunusuario() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			
			actualizar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listaadministrativo, "
					+ "método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public boolean eliminar(Administrativo administrativo) {
		Connection con = null;
		Statement stm = null;

		boolean eliminar = false;

		String sql = "DELETE FROM ADMINISTRATIVO "
				+ "WHERE RUN = '" + administrativo.getRun() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listaadministrativo, "
					+ "método eliminar");
			e.printStackTrace();
		}
		
		return eliminar;
	}

	@Override
	public Administrativo obtenerRunadm(Administrativo administrativo) {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		Administrativo q = new Administrativo();
		
		String sql = "SELECT * FROM "
				+ "ADMINISTRATIVO WHERE RUN = '" + administrativo.getRunusuario() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				q.setRunusuario(rs.getString(1));
				q.setNombre(rs.getString(2));
				q.setApellido(rs.getString(3));
				q.setCorreo(rs.getString(4));
				q.setArea(rs.getString(5));
			
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listaadministrativo, "
					+ "método ObtenerRunadm");
			e.printStackTrace();
		}
		
		return q;
	}

}
