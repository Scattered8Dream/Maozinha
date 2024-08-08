package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.MaozinhaDtls;


public class MaozinhaDAOImplement implements MaozinhaDAO {

	private Connection conn;

	public MaozinhaDAOImplement(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addMaozinha(MaozinhaDtls maozinha) {

		boolean f = false;

		try {

			String slq = "insert into maozinha_dtls(maozinha_name,req_name,total_value,min_value,maozinha_category,status,photo,user_email) values (?,?,?,?,?,?,?,?)";
			

			PreparedStatement ps = conn.prepareStatement(slq);
			ps.setString(1, maozinha.getMaozinha_name());
			ps.setString(2, maozinha.getReq_name());
			ps.setString(3, maozinha.getTotal_value());
			ps.setString(4, maozinha.getMin_value());
			ps.setString(5, maozinha.getCategory());
			ps.setString(6, maozinha.getStatus());
			ps.setString(7, maozinha.getPhotoName());
			ps.setString(8, maozinha.getUser_email());

			int i = ps.executeUpdate();

			if (i == 1) {

				f = true;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	};
	
	@Override
	public List<MaozinhaDtls> getAllMaozinhas() {
		
		List<MaozinhaDtls> list=new ArrayList<MaozinhaDtls>();
		MaozinhaDtls m=null;
		
		try {
			
			String sql="select * from maozinha_dtls";
			PreparedStatement ps= conn.prepareStatement(sql);
			
			ResultSet rs= ps.executeQuery();
			
			while (rs.next()) {
				
				m = new MaozinhaDtls();
				m.setMaozinha_id( rs.getInt(1));
				m.setMaozinha_name( rs.getString(2));
				m.setReq_name(rs.getString(3));
				m.setTotal_value(rs.getString(4));
				m.setMin_value(rs.getString(5));
				m.setCategory(rs.getString(6));
				m.setStatus(rs.getString(7));
				m.setPhotoName(rs.getString(8));
				m.setUser_email(rs.getString(9));
				list.add(m);
				
				System.out.println(m);
				
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}

	@Override
	public MaozinhaDtls getMaozinhaById(int id) {
		
		MaozinhaDtls m = null;
		
		try {
			
			String sql="select * from maozinha_dtls where id_maozinha=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			
			while (rs.next()) {

				m= new MaozinhaDtls();
				m.setMaozinha_id( rs.getInt(1));
				m.setMaozinha_name( rs.getString(2));
				m.setReq_name(rs.getString(3));
				m.setTotal_value(rs.getString(4));
				m.setMin_value(rs.getString(5));
				m.setCategory(rs.getString(6));
				m.setStatus(rs.getString(7));
				m.setPhotoName(rs.getString(8));
				m.setUser_email(rs.getString(9));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return m;
	}

	
	
}
