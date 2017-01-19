package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Request;
import com.util.DBHandler;
import com.util.PreSql;

public class RequestDao {
	private DBHandler dbhandler = null;
	private PreparedStatement ps = null;
	public RequestDao()
	{
		dbhandler = new DBHandler();
	}
	/*
	 * insert doctor info when doctor register
	 */
	public boolean InsertRequest(Request request)
	{
		try {
			ps = dbhandler.getPrSt(PreSql.request_insert);
			ps.setString(1, request.getName());
			ps.setString(2, request.getDate());
			ps.setString(3, request.getGender());
			ps.setString(4, request.getLanguage());
			ps.setString(5, request.getService());
			ps.setString(6, request.getTime());
			ps.setString(7, request.getCity());
			ps.setInt(8, request.getProcess());
			ps.setString(9, request.getDoctorname());
			ps.executeUpdate();
		    ps.close();
		    return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	//select request based on the username
	public List<Request> selectRequest(String name)
	{
	List<Request> requestlist = new ArrayList<Request>();
	 try {
			ps = dbhandler.getPrSt(PreSql.request_search); 
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
		      while (rs.next()) {
		    	Request request = new Request();
		    	request.setName((rs.getString(1)));
		    	request.setDate((rs.getString(2)));
		    	request.setGender((rs.getString(3)));
		    	request.setLanguage((rs.getString(4)));
		    	request.setService((rs.getString(5)));
		    	request.setTime((rs.getString(6)));
		    	request.setCity((rs.getString(7)));
		    	request.setProcess(rs.getInt(8));
		    	request.setDoctorname(rs.getString(9));
		        requestlist.add(request);
		      }
		   return requestlist;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return null;
		}
	}
	//select request based on the username
	public List<Request> selectAllRequest(int process)
	{
	List<Request> requestlist = new ArrayList<Request>();
	 try {
			ps = dbhandler.getPrSt(PreSql.allrequest_search); 
			ps.setInt(1, process);
			ResultSet rs = ps.executeQuery();
		      while (rs.next()) {
		    	Request request = new Request();
		    	request.setName((rs.getString(1)));
		    	request.setDate((rs.getString(2)));
		    	request.setGender((rs.getString(3)));
		    	request.setLanguage((rs.getString(4)));
		    	request.setService((rs.getString(5)));
		    	request.setTime((rs.getString(6)));
		    	request.setCity((rs.getString(7)));
		    	request.setProcess(rs.getInt(8));
		    	request.setDoctorname(rs.getString(9));
		        requestlist.add(request);
		      }
		   return requestlist;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return null;
		}
	}
}
