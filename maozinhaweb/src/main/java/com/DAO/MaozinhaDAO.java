package com.DAO;

import java.util.List;

import com.entity.MaozinhaDtls;

public interface MaozinhaDAO {

	public boolean addMaozinha(MaozinhaDtls maozinha);
	
	public List<MaozinhaDtls> getAllMaozinhas();
	
	public MaozinhaDtls getMaozinhaById(int id);
	
	public boolean updateEditMaozinha(MaozinhaDtls maozinha);
	
}
