package com.patient;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;



/**
 * Servlet implementation class ManagePatientsAmbulanceRequest
 */
@WebServlet("/ManagePatientsAmbulanceRequest")
public class ManagePatientsAmbulanceRequest extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int statusMode = 0;
			ResultSet rs1 =DatabaseConnection.getResultFromSqlQuery("select status from tblambulance where ambulance_vehicle_no='" + request.getParameter("id") + "'");
			ResultSet rs =DatabaseConnection.getResultFromSqlQuery("select ambulance_status from tblrequest where request_id='" + request.getParameter("requestId") + "'");
			
			while (rs.next()&&rs1.next()) {
				if (rs.getString("ambulance_status").equals("Pending")) {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblrequest set ambulance_status='Assigned' where request_id='" + request.getParameter("requestId") + "' and ambulance_vehicle_no='"+request.getParameter("id")+"'");
					/*System.out.println(statusMode);*/
				} else {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblrequest set ambulance_status='Pending' where request_id='" + request.getParameter("requestId") + "' and ambulance_vehicle_no='"+request.getParameter("id")+"'");
				}
				if (rs1.getString("status").equals("Added")) {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblambulance set status ='Busy' where  ambulance_vehicle_no='"+request.getParameter("id")+"'");
					/*System.out.println(statusMode);*/
				} else {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblambulance set status='Added' where  ambulance_vehicle_no='"+request.getParameter("id")+"'");
				}
			}
			if (statusMode > 0) {
				response.sendRedirect("patient-request-driver-for-ambulance.jsp");
			} else {
				response.sendRedirect("patient-request-driver-for-ambulance.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
