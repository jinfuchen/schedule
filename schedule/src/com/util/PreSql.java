package com.util;

public final class PreSql {
	/*
	 * insert , delete, update, select
	 */
	//查询数据库中是否有某个account
	public static final String admin_makesure = "select * from user where username=? and password=?";
	/*
	 * admin sql
	 */
	//user register
	public static final String admin_register = "insert into user (username, password,category,email,phone) values (?,?,?,?,?)";
	//search all user
	public static final String admin_search = "select * from user";
	
	/*
	 * doctor sql
	 */
	//search doctor service based on the geander and language
	public static final String doctor_search = "select * from doctor where gender=? and language=?";
	//search all the doctor services
	public static final String alldoctor_search = "select * from doctor";
	//insert doctor service
	public static final String doctor_insert = "insert into doctor values (?,?,?,?,?,?)";
	
	/*
	 * request sql
	 */
	//insert patient request
	public static final String request_insert = "insert into patientrequest values (?,?,?,?,?,?,?,?,?)";
	//select request by username
	public static final String request_search = "select * from patientrequest where name=?";
	//select all the requests
	public static final String allrequest_search = "select * from patientrequest where process=?";
	//schedule request insert
	public static final String reqschedule_insert = "insert into schedule (doctorname, patientname,process,time) values (?,?,?,?)";
	//select the schedule by process=0 and doctorname
	public static final String  reqschedule_search = "select * from schedule where process=? and doctorname=?";
	//select the schedule by doctorname
	public static final String docschedule_search = "select * from schedule where doctorname=?";
	//select all the schedules
	public static final String allschedule_search = "select * from schedule";
}
