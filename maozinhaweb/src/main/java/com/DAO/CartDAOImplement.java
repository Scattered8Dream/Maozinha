package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Cart;
import com.entity.MaozinhaDtls;

public class CartDAOImplement implements CartDAO {

	private Connection conn;
	public CartDAOImplement(Connection conn) {
		
		this.conn=conn;
		
	};
	
	@Override
	public boolean addCart(Cart c) {
		
		boolean f =false;
		
		try {
			
			String sql ="insert into cart(maozinha_id, user_id, maozinha_name, Req_name, price, total_price) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, c.getMaozinha_id());
			ps.setInt(2, c.getUser_id());
			ps.setString(3, c.getMaozinha_name());
			ps.setString(4, c.getReq_name());
			ps.setDouble(5, c.getPrice());
			ps.setDouble(6, c.getTotal_price());
			
			int i = ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		
		
		} catch (Exception e){
			e.printStackTrace();
		}
		
		return f;
	}

	@Override
	public  List <Cart> getMaozinhaByUser(int userId) {
		List<Cart> list = new ArrayList<Cart>();
		Cart  c = null;
		double totalPrice = 0;
		
		try {
			
			String sql = "select * from cart where user_id =?";
			PreparedStatement ps =conn.prepareStatement(sql);
			ps.setInt(1, userId);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				c = new Cart();
				c.setCart_id(rs.getInt(1));
				c.setMaozinha_id(rs.getInt(2));
				c.setUser_id(rs.getInt(3));
				c.setMaozinha_name(rs.getString(4));
				c.setReq_name(rs.getString(5));
				c.setPrice(rs.getDouble(6));
				
				totalPrice = totalPrice + rs.getDouble(7);
				c.setTotal_price(totalPrice);
				
				list.add(c);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return list;
		
	}

	@Override
	public boolean deleteMaozinhaCart(int mid, int uid) {
		
		boolean f=false;
		
		try {
			String sql="delete from cart where maozinha_id=? and user_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, mid);
			ps.setInt(2, uid);
			
			int i = ps.executeUpdate();
			
			if(i == 1) {
				f=true;
			}
			
		}catch (SQLException e){
			
			e.printStackTrace();
			
		}
		return f;
	}
	
	
	
	

	
}
