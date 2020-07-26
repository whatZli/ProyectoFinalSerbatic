package modelDAO;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import hibernate.HibernateUtil;
import model.CabeceraPedido;
import model.DetallePedido;
import model.Productos;

public class DetallePedidoDAO {

	public static void insertarDetallePedido(int idCabeceraPedido, LinkedList<Productos> productos) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		session.beginTransaction();

		for (Productos pros : productos) {

			DetallePedido dp = new DetallePedido(idCabeceraPedido, pros, 1, pros.getPrecioUnitarioSinIva() * 1);

			session.save(dp); // <|--- Aqui guardamos el objeto en la base de datos.
		}

		session.getTransaction().commit();

	}

	public static LinkedList<DetallePedido> buscarDetallesPedido(int id_pedido) {

		LinkedList<DetallePedido> ldp = new LinkedList<DetallePedido>();

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();

		String hql = "FROM DetallePedido DP WHERE DP.cabeceraPedido = :id_pedido";
		Query query = session.createQuery(hql);
		query.setParameter("id_pedido", id_pedido);

		List<DetallePedido> results = query.list();

		if (!results.isEmpty()) {
			for (DetallePedido p : results) {
				ldp.add(p);
			}
		}

		System.out.println(ldp.size());

		return ldp;

	}
	
	public static void borrarLineaID(int id_linea) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		Transaction transaction = session.beginTransaction();
		try {
			// your code
			String hql = "DELETE FROM DetallePedido WHERE id= :id";
			Query query = session.createQuery(hql);
			query.setParameter("id", id_linea);

			query.executeUpdate();
			// your code end

			transaction.commit();
		} catch (Throwable t) {
			transaction.rollback();
			throw t;
		}
	}

}
