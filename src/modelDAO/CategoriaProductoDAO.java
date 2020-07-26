package modelDAO;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import hibernate.HibernateUtil;
import model.CategoriasProducto;
import model.Productos;

public class CategoriaProductoDAO {

	public static void crearCategoria(String categoria) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		CategoriasProducto cp = new CategoriasProducto(categoria);
		session.beginTransaction();

		session.save(cp); // <|--- Aqui guardamos el objeto en la base de datos.

		session.getTransaction().commit();
	}
	
	public static ArrayList<CategoriasProducto> devolverTodosLasCategorias() {

		ArrayList categorias = new ArrayList();
		
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();


		String hql = "FROM CategoriasProducto";
		Query query = session.createQuery(hql);
		List<CategoriasProducto> results = query.list();

		if (!results.isEmpty()) {
			for (CategoriasProducto cp : results) {
				categorias.add(cp);
			}
		}

		return categorias;
	}

}
