package com.nttdata.jjm_jdbc_taller1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Dual NTT-DATA - JDBC.
 * 
 * @author Javier Jiménez Montesino.
 *
 */

public class NttDataJDBCMain {
	/*
	 * Clase main de la aplicacion.
	 */
	public static void main(String[] args) {

		stablishODBCConenction();

	}

	/*
	 * Establece conexión con la base de datos Mysql.
	 */
	
	public static void stablishODBCConenction() {
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			// Conector con la base de datos
			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/nttdata_database", "root",
					"rootroot");

			// Preparación de la consulta
			Statement sentencia = conexion.createStatement();
			String sql = "SELECT * FROM asignature ";
			ResultSet resul = sentencia.executeQuery(sql);

			while (resul.next()) {
				System.out.println(
						"Asignature Code : " + resul.getString(1) + ", " + "Asignature : " + resul.getString(2));
			}

			resul.close();
			sentencia.close();
			conexion.close();

		} catch (ClassNotFoundException e) {

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
