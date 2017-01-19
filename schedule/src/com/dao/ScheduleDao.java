package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bean.requestMap;
import com.util.DBHandler;
import com.util.PreSql;

public class ScheduleDao {
	private DBHandler dbhandler = null;
	private PreparedStatement ps = null;
	public ScheduleDao()
	{
		dbhandler = new DBHandler();
	}
	/*
	 * insert doctor info when doctor register
	 */
	public boolean InsertSchedule(requestMap taskrequest)
	{
		try {
			ps = dbhandler.getPrSt(PreSql.reqschedule_insert);
			ps.setString(1, taskrequest.getDoctorname());
			ps.setString(2, taskrequest.getPatientname());
			ps.setInt(3, taskrequest.getProcess());
			ps.setString(4, taskrequest.getTime());
			ps.executeUpdate();
		    ps.close();
		    return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(taskrequest.getDoctorname()+"\t"+taskrequest.getPatientname()+"\tfail");
			//e.printStackTrace();
			return false;
		}
	}
	//select schedule request based on process and doctorname
	public List<requestMap> selectSchedule(int process,String name)
	{
	List<requestMap> schedulelist = new ArrayList<requestMap>();
	 try {
			ps = dbhandler.getPrSt(PreSql.reqschedule_search); 
			ps.setInt(1, process);
			ps.setString(2, name);
			ResultSet rs = ps.executeQuery();
		      while (rs.next()) {
		    	requestMap schedule = new requestMap();
		    	schedule.setDoctorname(rs.getString(2));
		    	schedule.setPatientname(rs.getString(3));
		    	schedule.setProcess(rs.getInt(4));
		    	schedule.setTime(rs.getString(5));
		    	schedulelist.add(schedule);
		      }
		   return schedulelist;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return null;
		}
	}
	//select schedule request by doctorname
	public List<requestMap> selectDoctorSchedule(String name)
	{
	List<requestMap> schedulelist = new ArrayList<requestMap>();
	 try {
			ps = dbhandler.getPrSt(PreSql.docschedule_search); 
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
		      while (rs.next()) {
		    	requestMap schedule = new requestMap();
		    	schedule.setDoctorname(rs.getString(2));
		    	schedule.setPatientname(rs.getString(3));
		    	schedule.setProcess(rs.getInt(4));
		    	schedule.setTime(rs.getString(5));
		    	schedulelist.add(schedule);
		      }
		   return schedulelist;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return null;
		}
	}
	//select schedule request by doctorname
	public List<requestMap> selectAllSchedules()
	{
	List<requestMap> schedulelist = new ArrayList<requestMap>();
	 try {
			ps = dbhandler.getPrSt(PreSql.allschedule_search); 
			ResultSet rs = ps.executeQuery();
		      while (rs.next()) {
		    	requestMap schedule = new requestMap();
		    	schedule.setDoctorname(rs.getString(2));
		    	schedule.setPatientname(rs.getString(3));
		    	schedule.setProcess(rs.getInt(4));
		    	schedule.setTime(rs.getString(5));
		    	schedulelist.add(schedule);
		      }
		   return schedulelist;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return null;
		}
	}
}