package aula02;

import static org.junit.Assert.assertEquals;    

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
 

 


@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class PaisTest {
	Pais pais, copia,pais1;
	static int id = 0;
	
	
	
	@Before
	public void setUp() throws Exception {
		System.out.println("setup");
		pais = new Pais(id, "Brasil",23000,50000);
		pais1 = new Pais(id, "Venezuela",23000,60000);
		copia = new Pais(id, "Brasil", 23000, 50000);
		System.out.println(pais);
		System.out.println(copia);
		System.out.println(id);
	}
	
	
	@Test 
	public void test00Carregar() {
		System.out.println("carregar");
		Pais fixture = new Pais(1,"Suica", 10000,543965);
		Pais novo = new Pais(1,null,0.0,0.0);
		novo.carregar();
		assertEquals("testa inclusao", novo, fixture);
	}
	
	@Test 
	public void test01Criar() {
		System.out.println("criar");
		pais.criar();
		id = pais.getId();
		System.out.println(id);
		copia.setId(id);
		assertEquals("testa criacao", pais, copia);
	}
	
	
	@Test
	public void test02Atualizar() {
		System.out.println("atualizar");
		pais.setPopulacao(40000);
		copia.setPopulacao(40000);		
		pais.atualizar();
		pais.carregar();
		assertEquals("testa atualizacao", pais, copia);
	}
	
	@Test
	public void test03Excluir() {
		System.out.println("excluir");
		copia.setId(-1);
		copia.setNome(null);
		copia.setPopulacao(0);
		copia.setArea(0);
		pais.excluir();
		pais.carregar();
		assertEquals("testa exclusao", pais, copia);
	}

	
		
}
	
		
		

