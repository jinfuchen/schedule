package com.search;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;

import com.bean.Doctor;
import com.bean.Request;
import com.bean.requestMap;
import com.dao.DoctorDao;
import com.dao.RequestDao;
import com.dao.ScheduleDao;

public class scheduleRequest {

	public scheduleRequest() {

	}

//	public static void main(String[] args) {
//		(new scheduleRequest()).scheduleProcess(0);
//	}

	public void scheduleProcess(int process) {
		// get all the services doctor issued
		DoctorDao doctordao = new DoctorDao();
		List<Doctor> selectdoctors = doctordao.SelectAllDoctors();
		// get all the patient requests
		RequestDao requestdao = new RequestDao();
		List<Request> selectrequests = requestdao.selectAllRequest(process);
		// sort doctors by service time flexible
		sortDoctors(selectdoctors);
		// sort request by date
		sortRequests(selectrequests);
		// schedule request
		StringtoHashset(selectdoctors.get(0).getTime());
		List<requestMap> requestMap = new ArrayList<requestMap>();
		for (Doctor doctor : selectdoctors) {
			// string doctor time convert to hashset
			List<String> doctortimeList = StringtoHashset(doctor.getTime());
			for (Request request : selectrequests) {
				//if the request no process
				if (request.getProcess() == 0) {
					List<String> tempdoctime = new ArrayList<String>(doctortimeList);
					//patient request time
					List<String> requesttimeList = StringtoHashset(request.getTime());
					// if doctor time contain the same element compared to
					tempdoctime.retainAll(requesttimeList);//return true forever
					if (tempdoctime.size()>0) {
						// start map request
						request.setDoctorname(doctor.getName());
						request.setProcess(1);
						// handle task map
						requestMap taskrequest = new requestMap();
						taskrequest.setDoctorname(doctor.getName());
						taskrequest.setPatientname(request.getName());
						taskrequest.setProcess(0);
						taskrequest.setTime(tempdoctime.get(0));
						requestMap.add(taskrequest);
						// remove the corresponding doctor time
						HashSet<String> tempSet = new HashSet<String>(doctortimeList);
						tempSet.remove(tempdoctime.get(0));
						doctortimeList = new ArrayList<String>(tempSet);
						//doctortimeList.remove(tempdoctime.get(0));//why this does not work
						//doctortime = doctortime.replace(tempdoctime.get(0), "");
					}
				}
			}
		}
		insertschedule(requestMap);
	}

	/*
	 * sort the doctor according to time flexible
	 */
	public void sortDoctors(List<Doctor> doctors) {
		// Sort time by dec
		Comparator<Doctor> comparator = new Comparator<Doctor>() {
			public int compare(Doctor doctor1, Doctor doctor2) {
				return doctor2.getTime().length() - doctor1.getTime().length();
			}
		};
		Collections.sort(doctors, comparator);
	}

	/*
	 * sort the patient request by date
	 */
	public void sortRequests(List<Request> requests) {
		// Sort request date by dec
		Comparator<Request> comparator = new Comparator<Request>() {
			public int compare(Request request1, Request request2) {
				return request2.getTime().length()
						- request1.getTime().length();
			}
		};
		Collections.sort(requests, comparator);
	}

	/*
	 * String convert to HashSet
	 */
	public List<String> StringtoHashset(String str) {
		// delete char [ and ]
		str = str.replace("[", "");
		str = str.replace("]", "");
		// String convert to list
		List<String> list = Arrays.asList(str.split("\\s*,\\s*"));
		// list convert to set
		// HashSet<String> set = new HashSet<String>(list);
		return list;
	}
	/*
	 * insert all the schedules
	 */
	public boolean insertschedule(List<requestMap> reqschedules) {
		ScheduleDao scheduledao = new ScheduleDao();
		try {
			for (requestMap reqschedule : reqschedules) {
				scheduledao.InsertSchedule(reqschedule);
			}
		} catch (Exception sqle) {
			//sqle.printStackTrace();
			return false;
		}
		return true;
	}
}
