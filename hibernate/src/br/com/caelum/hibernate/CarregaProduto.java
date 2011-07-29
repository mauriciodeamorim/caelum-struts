package br.com.caelum.hibernate;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;

public class CarregaProduto {
	public static void main(String[] args) {
		AnnotationConfiguration	cfg = new AnnotationConfiguration();
		cfg.addAnnotatedClass(Produto.class);
		
		SessionFactory factory = cfg.buildSessionFactory();
		Session session = factory.openSession();
		
		Produto p = (Produto)session.load(Produto.class, 1L);
		
		System.out.println("Nome do produto: " + p.getNome());
		session.close();
	}
}
