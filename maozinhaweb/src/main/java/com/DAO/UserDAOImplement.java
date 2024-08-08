package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class  UserDAOImplement implements UserDAO {

	private Connection conn;
	
	
	
	public UserDAOImplement(Connection conn) {
		super();
		this.conn = conn;
	}



	@Override
	public User login(String email, String password) {
		
		User user= null;
			
		try {
			String sql="select * from user where email=? and password=? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			
			ResultSet rs= ps.executeQuery();
			
			while(rs.next()) {
				user= new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPhone(rs.getString(4));
				user.setPassword(rs.getString(5));
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}



	@Override
	public boolean userRegister(User user) {
		
		boolean f = false;
		
		try {
			String sql= "insert into user (name, email, phone, password) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPhone());
			ps.setString(4, user.getPassword());
			
			int i = ps.executeUpdate();
			if (i == 1) {
				
				f=true;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

}