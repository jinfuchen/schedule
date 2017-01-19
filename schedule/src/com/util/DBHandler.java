package com.util;

import java.sql.*;
/*
 * DBHandler class£¬connect mysql
 * root
 * lishen
 * preprocess SQL
 */
public class DBHandler {
	Connection conn;
	public DBHandler() {
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedule?characterEncoding=gb2312",
							"root", "lishen");
		} catch (SQLException e) {
			e.getStackTrace();
		}

	}

	public PreparedStatement getPrSt(String sql) throws SQLException {
		PreparedStatement prep = conn.prepareStatement(sql);
		return prep;
	}

	public void close() {
		if (null == conn) {
			try {
				conn.close();
			} catch (SQLException e) {
			} finally {
				conn = null;
			}
		}
	}

}
