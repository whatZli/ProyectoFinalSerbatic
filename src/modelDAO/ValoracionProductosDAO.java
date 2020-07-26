package modelDAO;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import hibernate.HibernateUtil;
import model.Productos;
import model.ValoracionesProductos;

public class ValoracionProductosDAO {

	public static ArrayList<ValoracionesProductos> listadoComentariosUnProducto(Integer id_producto){
		
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		ArrayList comentarios = new ArrayList();
		
		String hql = "FROM ValoracionesProductos VP WHERE VP.idProducto = :id_producto"; 
		Query query = session.createQuery(hql);
		query.setParameter("id_producto", id_producto);
		List<ValoracionesProductos> results = query.list();

		if (!results.isEmpty()) {
			for (ValoracionesProductos vp : results) {
				comentarios.add(vp);
			}
		}
		
		return comentarios;
	}
	
	public static Object valoracionMedia(int id_producto) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		String hql = "select AVG(valoracion) FROM ValoracionesProductos WHERE id_producto= :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id_producto);
		return  query.getSingleResult();
		
	}
	
	public static void guardarValoracion(ValoracionesProductos vp) {


		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();
		
		session.beginTransaction();
		
		session.save(vp); //<|--- Aqui guardamos el objeto en la base de datos.
		 
		session.getTransaction().commit();
		
	}
	
}
