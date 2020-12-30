package implementacion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.conecOracle;
import interfaces.Listaintusuario;

import modelo.Usuario;

public class Listausuario implements Listaintusuario {

	@Override
	public boolean insertar(Usuario usuario) {
		boolean insertar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO USUARIOS values ('" 
				+ usuario.getRun() + "','" 
				+ usuario.getNombre() + "','" 
				+ usuario.getApellido() + "','" 
				+ usuario.getFechanacimiento() + "','" 
				+ usuario.getTipousuario() + "')";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			insertar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listausuario, "
					+ "método insertar");
			e.printStackTrace();
		}
		
		return insertar;
	}

	@Override
	public List<Usuario> obtener() {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "USUARIOS ORDER BY TIPOUSUARIO";
		List<Usuario> listausuario = new ArrayList<Usuario>();
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Usuario u = new Usuario();
				u.setRun(rs.getString(1));
				u.setNombre(rs.getString(2));
				u.setApellido(rs.getString(3));
				u.setFechanacimiento(rs.getString(4));
				u.setTipousuario(rs.getString(5));
				listausuario.add(u);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listausuario, "
					+ "método obtener");
			e.printStackTrace();
		}		
		
		return listausuario;
	}

	@Override
	public boolean actualizar(Usuario usuario) {
		Connection con = null;
		Statement stm = null;

		boolean actualizar = false;

		String sql = "UPDATE USUARIOS SET "
				+ "NOMBRE = '" + usuario.getNombre() + "', "
				+ "APELLIDO = '" + usuario.getApellido() + "', "
				+ "FECHANACIMIENTO = '" + usuario.getFechanacimiento() + "', "
				+ "TIPOUSUARIO = '" + usuario.getTipousuario() + "' "
				+ "WHERE RUN = '" + usuario.getRun() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			actualizar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listausuario, "
					+ "método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public boolean eliminar(Usuario usuario) {
		Connection con = null;
		Statement stm = null;

		boolean eliminar = false;

	
		
		String sql = "DELETE FROM USUARIOS "
				+ "WHERE RUN = '" + usuario.getRun() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listausuario, "
					+ "método eliminar");
			e.printStackTrace();
		}
		
		return eliminar;
	}

	@Override
	public Usuario obtenerRun(Usuario usuario) {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		Usuario q = new Usuario();
		
		String sql = "SELECT * FROM "
				+ "USUARIOS WHERE RUN = '" + usuario.getRun() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				q.setRun(rs.getString(1));
				q.setNombre(rs.getString(2));
				q.setApellido(rs.getString(3));
				q.setFechanacimiento(rs.getString(4));
				q.setTipousuario(rs.getString(5));
			
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listausuario, "
					+ "método ObtenerRun");
			e.printStackTrace();
		}
		
		return q;
	}

}
