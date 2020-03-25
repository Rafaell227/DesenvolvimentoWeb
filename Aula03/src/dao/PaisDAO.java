package dao;

import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import model.Pais;




public class PaisDAO extends Pais {

public int criar(Pais pais) {
	String sqlInsert = "INSERT INTO pais(nome, populacao, area) VALUES (?, ?, ?)";
	try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
		stm.setString(1, getNome());
		stm.setDouble(2, getPopulacao());
		stm.setDouble(3, getArea());
		stm.execute();
		String sqlQuery  = "SELECT LAST_INSERT_ID()";
		try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
			ResultSet rs = stm2.executeQuery();) {
			if(rs.next()){
				setId(rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return pais.getId();
}


public void atualizar(Pais pais) {
	String sqlUpdate = "UPDATE pais SET nome=?, populacao=?, area=? WHERE id=?";
	try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {
		stm.setString(1, getNome());
		stm.setDouble(2, getPopulacao());
		stm.setDouble(3, getArea());
		stm.setInt(4, getId());
		stm.execute();
	} catch (Exception e) {
		e.printStackTrace();
	}
}

public void excluir(int id) {
	String sqlDelete = "DELETE FROM pais WHERE id = ?";
	try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
		stm.setInt(1, getId());
		stm.execute();
	} catch (Exception e) {
		e.printStackTrace();
	}
}

public Pais carregar(int id) {
	Pais pais = new Pais();
	pais.setId(id);
	String sqlSelect = "SELECT nome, populacao, area FROM pais WHERE pais.id = ?";
	// usando o try with resources do Java 7, que fecha o que abriu
	try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
		stm.setInt(1, pais.getId()); 	
		try (ResultSet rs = stm.executeQuery();) {
			if (rs.next()) {
				pais.setNome(rs.getString("nome"));
				pais.setPopulacao(rs.getDouble("populacao"));
				pais.setArea(rs.getDouble("area"));
			} else {
				pais.setId(-1);
				pais.setNome(null); 
				pais.setPopulacao(0);
				pais.setArea(0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} catch (SQLException e1) {
		System.out.print(e1.getStackTrace());
		
	}
	return pais;
}

}