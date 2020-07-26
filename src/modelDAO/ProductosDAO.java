package modelDAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.type.descriptor.sql.TinyIntTypeDescriptor;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import hibernate.HibernateUtil;
import model.Productos;

public class ProductosDAO {

	public static ArrayList<Productos> devolverTodosLosProductos() {

		ArrayList productos = new ArrayList();

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();

		String hql = "FROM Productos";
		Query query = session.createQuery(hql);
		List<Productos> results = query.list();

		if (!results.isEmpty()) {
			for (Productos p : results) {
				productos.add(p);
			}
		}

		return productos;

	}

	public static ArrayList<Productos> devolverTodosLosProductosPorCategoria(int categoria) {

		ArrayList productos = new ArrayList();

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();

		String hql = "FROM Productos P where P.categoriasProducto=:categoria";
		Query query = session.createQuery(hql);
		query.setParameter("categoria", categoria);
		List<Productos> results = query.list();

		if (!results.isEmpty()) {
			for (Productos p : results) {
				productos.add(p);
			}
		}

		return productos;

	}

	public static Productos buscarProducto(int id_producto) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		String hql = "FROM Productos P WHERE P.id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id_producto);
		List<Productos> results = query.list();

		if (!results.isEmpty()) {
			for (Productos p : results) {
				return p;
			}
		}
		return null;
	}

	public static void guardarProcuto(Productos p) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		session.beginTransaction();

		System.out.println(p.toString());

		session.save(p); // <|--- Aqui guardamos el objeto en la base de datos.

		session.getTransaction().commit();
	}

	public static ArrayList<Productos> devolverTresProductos() {

		ArrayList productos = new ArrayList();

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();

		String hql = "FROM Productos";
		Query query = session.createQuery(hql);
		query.setMaxResults(5);
		List<Productos> results = query.list();

		if (!results.isEmpty()) {
			for (Productos p : results) {
				productos.add(p);
			}
		}

		return productos;

	}

	public static void cambiarDescuentoProducto(int id_producto, Byte descuento) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		session.beginTransaction();

		String hql = "UPDATE Productos P set P.descuento = :descuento WHERE P.id= :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id_producto);
		query.setParameter("descuento", descuento);

		query.executeUpdate();

		session.getTransaction().commit();

	}

	
}
