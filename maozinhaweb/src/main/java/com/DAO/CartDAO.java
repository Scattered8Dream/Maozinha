package com.DAO;

import java.util.List;

import com.entity.Cart;
import com.entity.MaozinhaDtls;

public interface CartDAO {

	public boolean addCart(Cart c);
	
	public List <Cart> getMaozinhaByUser(int userId);
	
	public boolean deleteMaozinhaCart(int mid, int uid);
	
}
