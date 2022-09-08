package com.database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public  class Connect {
private static Connection con = null;
static {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://sql6.freemysqlhosting.net/sql6518238", "sql6518238", "6d959z65eZ");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public static Connection getConnection() {
	return con;
}

//public static void main(String[] args) throws SQLException {
////	int abc = Database.totalAmount();
//		Connection con = Connect.getConnection();
//	System.out.println("Connection" + con);
//	}
}
