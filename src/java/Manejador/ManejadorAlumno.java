package Manejador;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class ManejadorAlumno {

    private static int pageSize = 3;

    public static List getData(int pageNumber) {
        SessionFactory sessionFactory
                = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        List result = null;
        try {
            session.beginTransaction();
            Query query = session.createQuery("from Alumno");
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);
            result = query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
