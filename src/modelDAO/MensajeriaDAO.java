package modelDAO;

import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import hibernate.HibernateUtil;
import model.CabeceraPedido;
import model.DetallePedido;
import model.Mensajeria;
import model.Productos;

public class MensajeriaDAO {

	public static LinkedList<Mensajeria> listaMensajesTrabajador(int id_trabajador) {

		LinkedList<Mensajeria> lm = new LinkedList<Mensajeria>();

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();

		String hql = "FROM Mensajeria M WHERE M.idDestinatario = :id_trabajador";
		Query query = session.createQuery(hql);
		query.setParameter("id_trabajador", id_trabajador);

		List<Mensajeria> results = query.list();

		if (!results.isEmpty()) {
			for (Mensajeria m : results) {
				lm.add(m);
			}
		}

		System.out.println(lm.size());

		return lm;

	}

	public static void guardarMensaje(Mensajeria m) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		session.beginTransaction();

		session.save(m); // <|--- Aqui guardamos el objeto en la base de datos.

		session.getTransaction().commit();

	}

	public static Mensajeria obtenerUnMensaje(int id_mensaje) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		session.beginTransaction();

		String hql = "FROM Mensajeria M WHERE M.id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id_mensaje);
		List<Mensajeria> results = query.list();

		if (!results.isEmpty()) {
			for (Mensajeria m : results) {
				return m;
			}
		}

		session.getTransaction().commit();

		return null;
	}

	public static void borrarUnMensaje(int id_mensaje) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		session.beginTransaction();

		String hql = "DELETE FROM Mensajeria WHERE id= :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id_mensaje);

		query.executeUpdate();

		session.getTransaction().commit();

	}

	public static void leerMensaje(int id_mensaje) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		session.beginTransaction();

		String hql = " update Mensajeria M set M.leido=1 where M.id=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id_mensaje);

		query.executeUpdate();

		session.getTransaction().commit();

	}
	
	public static void contestarMensaje(int id_mensaje) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		session.beginTransaction();

		String hql = "UPDATE Mensajeria M set M.contestado=1 where M.id=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id_mensaje);

		query.executeUpdate();

		session.getTransaction().commit();

	}

}
