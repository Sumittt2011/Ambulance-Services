package com.patient;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class BookAmbulance
 */
@WebServlet("/BookAmbulance")
public class BookAmbulance extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String rid = request.getParameter("request_id");
		String pid = request.getParameter("paitent_id");
		String pdisease = request.getParameter("pdisease");
		String avn = request.getParameter("vehicleNo");
		String scity = request.getParameter("scity");
		String dcity = request.getParameter("dcity");
		String ambulance_status = "Pending";
		HttpSession session = request.getSession();
		try {
			int bookAmbulance = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblrequest(request_id, patient_id, patient_disease, ambulance_vehicle_no, source_city, destination_city, ambulance_status)values('"+rid+"','"
					+ pid + "','" + pdisease + "','" + avn + "','" + scity + "','"
					+ dcity + "','" + ambulance_status + "')");
			if (bookAmbulance > 0) {
				String message="Ambulance booking successfully.";
				session.setAttribute("book-ambulance", message);
				response.sendRedirect("search-ambulance.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
