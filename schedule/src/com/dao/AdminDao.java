package com.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.util.*;
import com.bean.*;

public class AdminDao {
	private DBHandler dbhandler = null;
	private PreparedStatement ps = null;
	public AdminDao()
	{
		dbhandler = new DBHandler();
	}
	/*
	 * �����û��������룬�����ݿ��м���û��Ƿ����
	 */
	public Admin MakeSure(String username,String password)
	{
		try {
			ps = dbhandler.getPrSt(PreSql.admin_makesure);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			Admin admin = new Admin();
			while(rs.next())
			{
				admin.setUsername(rs.getString(2));
				admin.setPassword(rs.getString(3));
				admin.setCategory(rs.getString(4));
				return admin;
			}
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	/*
	 * �������й���Ա��Ϣ�����ع���Ա�б�
	 */
	public List<Admin> SelectAlladmin()
	{
	List<Admin> adminlist = new ArrayList<Admin>();
	 try {
			ps = dbhandler.getPrSt(PreSql.admin_search); 
			ResultSet rs = ps.executeQuery();
		      while (rs.next()) {
		        Admin admin = new Admin();
		        admin.setUsername((rs.getString(2)));
		        admin.setPassword(rs.getString(3));
		        admin.setCategory(rs.getString(4));
		        adminlist.add(admin);
		      }
		   return adminlist;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return null;
		}
	}
	/*
	 * �������Ա��Ϣ
	 */
	public boolean InsertAdmin(Admin admin)
	{
		try {
			ps = dbhandler.getPrSt(PreSql.admin_register);
			ps.setString(1, admin.getUsername());
			ps.setString(2, admin.getPassword());
			ps.setString(3, admin.getCategory());
			ps.setString(4, admin.getEmail());
			ps.setString(5, admin.getPhone());
			ps.executeUpdate();
		    ps.close();
		    return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
