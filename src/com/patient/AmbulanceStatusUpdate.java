package com.patient;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;
@WebServlet("/AmbulanceStatusUpdate")
public class AmbulanceStatusUpdate {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String avn=request.getParameter("avn");
		String status = request.getParameter("status");
		try {
			int addAmbulance=DatabaseConnection.insertUpdateFromSqlQuery("update tblambulance set status='"+status+"' where id='"+id+"' and ambulance_vehicle_no='"+avn+"'");
			if(addAmbulance>0) {
				response.sendRedirect("admin-view-ambulance.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}


}
