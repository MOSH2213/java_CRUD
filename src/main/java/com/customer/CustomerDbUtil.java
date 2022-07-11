package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDbUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Customer> validate(String username,String password){
		
		//====================================
		ArrayList<Customer> cus = new ArrayList<>();
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql= "Select * FROM customer WHERE username='"+username+"' AND password='"+password+"' ";
			rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userU=rs.getString(5);
				String passwordU=rs.getString(6);
				
				Customer c = new Customer(id,name,email,phone,userU,passwordU);
				cus.add(c);
			}

			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		//validate after connection 
		
		return cus;
	}
	public static boolean insertcustomer(String name,String email,String phone,String username,String password) {
		
		boolean isSucess=false;

		
		try {
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
			String sql=" INSERT into customer VALUES(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"') ";
			
			int sr=stmt.executeUpdate(sql);	//execute update eken 0,1 return wee
			if(sr>0) {
				isSucess=true;
			}
			else {
				isSucess=false;
			}
		}	
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSucess;
	}
	public static boolean updatecustomer(String id,String name,String email,String phone,String username,String password) {
		
		
		boolean isSucess = false;
		try {
		
			con=DBconnect.getConnection();
			stmt=con.createStatement();
			String sql="UPDATE customer SET name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"' WHERE id='"+id+"' ";
			int sr=stmt.executeUpdate(sql);
			
			if(sr>0) {
				isSucess=true;
			}
			else {
				isSucess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
				
		return isSucess;
	}
}
