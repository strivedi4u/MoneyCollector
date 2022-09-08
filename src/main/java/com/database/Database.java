package com.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;





public class Database {

	public static int save (Details d) throws SQLException {
		int flag = 0;
		System.out.println("Object " +  d);
		System.out.println("FLAG " +  flag);
		System.out.println("Object " +  d);
		Connection con = Connect.getConnection();
		PreparedStatement ps = con.prepareStatement("insert into donate(name , email, mobile, address, country, state, city, pincode, message, money, payment_id, order_id, signature, status) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		System.out.println("PreparedStatement Created");
		ps.setString(1, d.getName());
		ps.setString(2, d.getEmail());
		ps.setString(3, d.getMobile());
		ps.setString(4, d.getAddress());
        ps.setString(5, d.getCountry());
		ps.setString(6, d.getState());
		ps.setString(7, d.getCity());
		ps.setString(8, d.getPincode());
		ps.setString(9, d.getMessage());
		ps.setInt(10, d.getMoney());
		ps.setString(11, d.getPayment_id());
		ps.setString(12, d.getOrder_id());
		ps.setString(13, d.getSignature());
		ps.setString(14, d.getStatus());
		System.out.println("PreparedStatement Closed");
		flag = ps.executeUpdate();
		System.out.println("FLAG " +  flag);
		return flag;
	}
	
	public static Details getDetails(String payment_id) throws SQLException{
		Details d = null;;
		Connection con = Connect.getConnection();
		PreparedStatement ps = con.prepareStatement(" select * from donate where payment_id = ?");
		ps.setString(1, payment_id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			 d = new Details();
			d.setName(rs.getString("name"));
			d.setEmail(rs.getString("email"));
			d.setMobile(rs.getString("mobile"));
			d.setAddress(rs.getString("address"));
			d.setPincode(rs.getString("pincode"));
			d.setCountry(rs.getString("country"));
			d.setState(rs.getString("state"));
			d.setCity(rs.getString("city"));
			d.setMessage(rs.getString("message"));
			d.setMoney(rs.getInt("money"));
			d.setPayment_id(rs.getString("payment_id"));
			d.setOrder_id(rs.getString("order_id"));
			d.setSignature(rs.getString("signature"));
			d.setStatus(rs.getString("status"));

		}
		return d;
	}
	
    public static List<Details> getAllRecords() throws SQLException{
    	List<Details> list = new ArrayList<Details>();
    	Connection con = Connect.getConnection();
    	PreparedStatement ps = con.prepareStatement("select * from donate");
    	ResultSet rs = ps.executeQuery();
    	while(rs.next()) {
    		Details d = new Details();
			d.setName(rs.getString("name"));
			d.setEmail(rs.getString("email"));
			d.setMobile(rs.getString("mobile"));
			d.setAddress(rs.getString("address"));
			d.setPincode(rs.getString("pincode"));
			d.setCountry(rs.getString("country"));
			d.setState(rs.getString("state"));
			d.setCity(rs.getString("city"));
			d.setMessage(rs.getString("message"));
			d.setMoney(rs.getInt("money"));
			d.setPayment_id(rs.getString("payment_id"));
			d.setOrder_id(rs.getString("order_id"));
			d.setSignature(rs.getString("signature"));
			d.setStatus(rs.getString("status"));
			d.setId(rs.getInt("id"));;			
    		list.add(d);
    	}
    	return list;
    }
	
	
    public static int delete(int id) throws SQLException {
    	int flag =0;
    	Connection con = Connect.getConnection();
    	PreparedStatement ps = con.prepareStatement("delete from donate where id = ?");
    	ps.setInt(1, id);
    	flag = ps.executeUpdate();
    	return flag;
    }
	
    
    public static int totalAmount() throws SQLException {
    	int flag =0;
    	int sum =0;
    	Connection con = Connect.getConnection();
    	PreparedStatement ps = con.prepareStatement("SELECT money FROM donate WHERE status = ?");
    	ps.setString(1, "PAID");
    	System.out.println(ps);
    	ResultSet rs = ps.executeQuery();
    	System.out.println(flag);
        while(rs.next()) {    	
        flag = rs.getInt("money");
        sum = sum + flag;
         }
    	return sum;
       }
	
    

	
//	public static void main(String[] args) throws SQLException {
//	int abc = Database.totalAmount();
//		int a = Database.delete(1);
//		
//	Connection con = Connect.getConnection();
//	System.out.println(a);
//	}
}
