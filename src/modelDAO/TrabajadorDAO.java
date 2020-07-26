package modelDAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import hibernate.HibernateUtil;
import model.Personas;

public class TrabajadorDAO {
	public static ArrayList<Personas> devolverTodosLosTrabajadores() {


		ArrayList personas = new ArrayList();
		
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();


		String hql = "FROM Personas P WHERE P.tipoPersona='TV' OR P.tipoPersona='TC'";
 		Query query = session.createQuery(hql);
		List<Personas> results = query.list();
     
		if (!results.isEmpty()) {
			for (Personas c : results) {
				personas.add(c);
			}
		}

		return personas;
		
	}
}
