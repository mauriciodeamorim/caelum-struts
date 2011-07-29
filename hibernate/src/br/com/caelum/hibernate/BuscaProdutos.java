package br.com.caelum.hibernate;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;


public class BuscaProdutos {
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		AnnotationConfiguration	cfg = new AnnotationConfiguration();
		cfg.addAnnotatedClass(Produto.class);
		
		SessionFactory factory = cfg.buildSessionFactory();
		Session session = factory.openSession();
		
		String hql = "from Produto where preco > :preco";
		Query query = session.createQuery(hql);
		
		query.setParameter("preco", 10.0);
		List<Produto> lista = query.list();
		
		for (Produto p : lista){
			System.out.println(p.getNome());	
		}
		
		session.close();
	}
}
