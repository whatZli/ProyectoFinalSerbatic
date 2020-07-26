package modelDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import hibernate.HibernateUtil;
import model.Personas;

public class LoginDAO {

	public static Personas comprobarUsuarioCliente(String usuario, String password) {
		
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		String hql = "FROM Personas P WHERE P.dni= :usuario AND P.pass= :password AND ( P.tipoPersona = :tipoPersonaCN OR P.tipoPersona = :tipoPersonaCP)";
		Query query = session.createQuery(hql);
		query.setParameter("usuario", usuario);
		query.setParameter("password", password);
		query.setParameter("tipoPersonaCN", "CN");
		query.setParameter("tipoPersonaCP", "CP");
		List<Personas> results = query.list();

		if (!results.isEmpty()) {
			for (Personas p : results) {
				return p; 	
			}
		}
		
		return null;
	}
	
public static Personas comprobarUsuarioTrabajador(String usuario, String password) {
		
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

		Session session = sessionFactory.openSession();

		String hql = "FROM Personas P WHERE P.dni= :usuario AND P.pass= :password AND ( P.tipoPersona = :tipoPersonaTV OR P.tipoPersona = :tipoPersonaTC OR P.tipoPersona = :tipoPersonaAD)";
		Query query = session.createQuery(hql);
		query.setParameter("usuario", usuario);
		query.setParameter("password", password);
		query.setParameter("tipoPersonaTV", "TV");
		query.setParameter("tipoPersonaTC", "TC");
		query.setParameter("tipoPersonaAD", "AD");
		
		List<Personas> results = query.list();

		if (!results.isEmpty()) {
			for (Personas p : results) {
				return p; 	
			}
		}
		
		return null;
	}
	
}
