package service;

import java.util.ArrayList;

import dao.PaisDAO;
import model.Pais;

public class PaisService {

	PaisDAO dao = new PaisDAO();
	
	public int criar(Pais pais) {
		return dao.criar(pais);
	}
	
	public void atualizar(Pais pais) {
		dao.atualizar(pais);
	}
	
	public void excluir(int id) {
		dao.excluir(id);
	}
	
	public Pais carregar(int id) {
		return dao.carregar(id);
	}
	
	public PaisService(){
		dao = new PaisDAO();
	}
	public ArrayList<Pais> listarPaises(){
		return dao.listarPaises();
	}
	public ArrayList<Pais> listarPaises(String chave){
		return dao.listarPaises(chave);
	}
}
