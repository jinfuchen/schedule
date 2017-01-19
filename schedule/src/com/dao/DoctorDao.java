package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Doctor;
import com.util.DBHandler;
import com.util.PreSql;

public class DoctorDao {
	private DBHandler dbhandler = null;
	private PreparedStatement ps = null;
	public DoctorDao()
	{
		dbhandler = new DBHandler();
	}
	/*
	 * insert doctor info when doctor register
	 */
	public boolean InsertDoctor(Doctor doctor)
	{
		try {
			ps = dbhandler.getPrSt(PreSql.doctor_insert);
			ps.setString(1, doctor.getName());
			ps.setString(2, doctor.getGender());
			ps.setString(3, doctor.getLanguage());
			ps.setString(4, doctor.getService());
			ps.setString(5, doctor.getTime());
			ps.setString(6, doctor.getCity());
			ps.executeUpdate();
		    ps.close();
		    return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	/*
	 * select corresponding doctors
	 * return to patient
	 */
	public List<Doctor> SelectDoctors(String gender,String language)
	{
	List<Doctor> doctorlist = new ArrayList<Doctor>();
	 try {
			ps = dbhandler.getPrSt(PreSql.doctor_search); 
			ps.setString(1, gender);
			ps.setString(2, language);
			ResultSet rs = ps.executeQuery();
		      while (rs.next()) {
		    	Doctor doctor = new Doctor();
		    	doctor.setName(rs.getString(1));
		        doctor.setGender(rs.getString(2));
		        doctor.setLanguage(rs.getString(3));
		        doctor.setService(rs.getString(4));
		        doctor.setTime(rs.getString(5));
		        doctor.setCity(rs.getString(6));
		        doctorlist.add(doctor);
		      }
		   return doctorlist;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return null;
		}
	}
	/*
	 * select corresponding doctors
	 * return to patient
	 */
	public List<Doctor> SelectAllDoctors()
	{
	List<Doctor> doctorlist = new ArrayList<Doctor>();
	 try {
			ps = dbhandler.getPrSt(PreSql.alldoctor_search); 
			ResultSet rs = ps.executeQuery();
		      while (rs.next()) {
		    	Doctor doctor = new Doctor();
		    	doctor.setName(rs.getString(1));
		        doctor.setGender(rs.getString(2));
		        doctor.setLanguage(rs.getString(3));
		        doctor.setService(rs.getString(4));
		        doctor.setTime(rs.getString(5));
		        doctor.setCity(rs.getString(6));
		        doctorlist.add(doctor);
		      }
		   return doctorlist;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return null;
		}
	}
}
