package br.com.caelum.hibernate;

import org.hibernate.classic.Session;

public class AdicionaProduto {
	public static void main(String[] args) {
		Produto p = new Produto();
		p.setNome("Bola");
		p.setDescricao("vermelha e branca");
		p.setPreco(10.21);
		
		Session session = new HibernateUtil().getSession();
		
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
		
		System.out.println("ID do produto: " + p.getId());
		session.close();
	}
}
