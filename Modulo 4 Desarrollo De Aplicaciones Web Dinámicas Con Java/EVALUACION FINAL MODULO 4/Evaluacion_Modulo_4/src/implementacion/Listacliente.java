package implementacion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import conexion.conecOracle;
import interfaces.Listaintcliente;

import modelo.Cliente;


public class Listacliente implements Listaintcliente {

	
	@Override
	public boolean insertar(Cliente cliente) {
		
		boolean insertar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO CLIENTE values ('" 
				+ cliente.getRun() + "','" 
				+ cliente.getNombre() + "','" 
				+ cliente.getApellido() + "','" 
				+ cliente.getTelefono() + "','" 
				+ cliente.getAfp() + "','" 
				+ cliente.getSalud() + "','" 
				+ cliente.getDireccion() + "','" 
				+ cliente.getComuna() + "','" 
				+ cliente.getEdad() + "','"
				+ cliente.getRun() + "')";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			insertar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listacliente, "
					+ "método insertar");
			e.printStackTrace();
		}
		
		return insertar;
		
	}

	@Override
	public List<Cliente> obtener() {
		
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "CLIENTE ORDER BY RUTCLIENTE";
		List<Cliente> listacliente = new ArrayList<Cliente>();
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Cliente c = new Cliente();
				c.setRunusuario(rs.getString(1));
				c.setNombre(rs.getString(2));
				c.setApellido(rs.getString(3));
				c.setTelefono(rs.getString(4));
				c.setAfp(rs.getString(5));
				c.setSalud(rs.getInt(6));
				c.setDireccion(rs.getString(7));
				c.setComuna(rs.getString(8));
				c.setEdad(rs.getInt(9));
				listacliente.add(c);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listacliente, "
					+ "método obtener");
			e.printStackTrace();
		}		
		
		return listacliente;
	}

	@Override
	public boolean actualizar(Cliente cliente) {
		
		Connection con = null;
		Statement stm = null;

		boolean actualizar = false;

		String sql = "UPDATE CLIENTE SET "
				+ "CLINOMBRES = '" + cliente.getNombre() + "', "
				+ "CLIAPELLIDOS = '" + cliente.getApellido() + "', "
				+ "CLITELEFONO = '" + cliente.getTelefono() + "', "
				+ "CLIAFP = '" + cliente.getAfp() + "', "
				+ "CLISISTEMASALUD = '" + cliente.getSalud() + "', "
				+ "CLIDIRECCION = '" + cliente.getDireccion() + "', "
				+ "CLICOMUNA = '" + cliente.getComuna() + "', "
				+ "CLIEDAD = '" + cliente.getEdad() + "' "
				+ "WHERE RUTCLIENTE = '" + cliente.getRunusuario() + "'";
		
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			actualizar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listacliente, "
					+ "método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public boolean eliminar(Cliente cliente) {
		
		Connection con = null;
		Statement stm = null;

		boolean eliminar = false;

		String sql = "DELETE FROM CLIENTE "
				+ "WHERE RUTCLIENTE = '" + cliente.getRun() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listacliente, "
					+ "método eliminar");
			e.printStackTrace();
		}
		
		return eliminar;
	}


	@Override
	public Cliente obteneRuncli(Cliente cliente) {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		Cliente q = new Cliente();
		
		String sql = "SELECT * FROM "
				+ "CLIENTE WHERE RUTCLIENTE = '" + cliente.getRunusuario() + "'";
		
		try {
			con = conecOracle.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				q.setRunusuario(rs.getString(1));
				q.setNombre(rs.getString(2));
				q.setApellido(rs.getString(3));
				q.setTelefono(rs.getString(4));
				q.setAfp(rs.getString(5));
				q.setSalud(rs.getInt(6));
				q.setDireccion(rs.getString(7));
				q.setComuna(rs.getString(8));
				q.setEdad(rs.getInt(9));
				
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase Listacliente, "
					+ "método ObtenerRuncli");
			e.printStackTrace();
		}
		
		return q;
	}

	
}
