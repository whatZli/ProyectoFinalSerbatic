package modelDAO;

import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import hibernate.HibernateUtil;
import model.CabeceraPedido;
import model.Productos;

public class CabeceraPedidoDAO {

	public static int crearPedido(int id_cliente, int importeTotal) {

		int idCabeceraPedido = 0;

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		CabeceraPedido cp = new CabeceraPedido(id_cliente, 1, importeTotal);

		session.beginTransaction();

		session.save(cp); // <|--- Aqui guardamos el objeto en la base de datos.

		idCabeceraPedido = cp.getId();

		session.getTransaction().commit();

		return idCabeceraPedido;

	}

	public static LinkedList<CabeceraPedido> obtenerCabeceraDeCliente(int id_cliente) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		LinkedList<CabeceraPedido> lcp = new LinkedList();

		session.beginTransaction();

		String hql = "FROM CabeceraPedido CP WHERE CP.idCliente= :id_cliente";
		Query query = session.createQuery(hql);
		query.setParameter("id_cliente", id_cliente);

		List<CabeceraPedido> results = query.list();

		if (!results.isEmpty()) {
			for (CabeceraPedido cp : results) {
				lcp.add(cp);
			}
		}

		return lcp;

	}

	public static void borrarCabeceraPedido(int id_pedido) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		Transaction transaction = session.beginTransaction();
		try {
			// your code
			String hql = "DELETE FROM CabeceraPedido WHERE id= :id";
			Query query = session.createQuery(hql);
			query.setParameter("id", id_pedido);

			query.executeUpdate();
			// your code end

			transaction.commit();
		} catch (Throwable t) {
			transaction.rollback();
			throw t;
		}

	}

	public static LinkedList<CabeceraPedido> obtenerTodosLosPedidos() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		LinkedList<CabeceraPedido> lcp = new LinkedList();

		session.beginTransaction();

		String hql = "FROM CabeceraPedido CP";
		Query query = session.createQuery(hql);

		List<CabeceraPedido> results = query.list();

		if (!results.isEmpty()) {
			for (CabeceraPedido cp : results) {
				lcp.add(cp);
			}
		}

		return lcp;
	}

}
