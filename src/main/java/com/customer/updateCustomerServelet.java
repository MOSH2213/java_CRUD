package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;



public class updateCustomerServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("cusid");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String username=request.getParameter("uname");
		String password=request.getParameter("pass");
		//the above values inside the getparameter methos id from newfile.jsp from line 46-51
		
		boolean isTrue;
		isTrue=CustomerDbUtil.updatecustomer(id, name, email, phone, username, password);
		if(isTrue==true) {
			
			List<Customer> cusDetails=CustomerDbUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis= request.getRequestDispatcher("NewFile.jsp");
			dis.forward(request, response);
		}
		else {
			List<Customer> cusDetails=CustomerDbUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
