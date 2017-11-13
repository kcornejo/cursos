package Manejador;

import Objeto.Alumno;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class ManejadorAlumno {

    public static List getData() {
        SessionFactory sessionFactory
                = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        List result = null;
        try {
            session.beginTransaction();
            Query query = session.createQuery("from Alumno where activo = 1");
            result = query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static int AgregarAlumno(Alumno alu) {
        int status = 0;
        SessionFactory sessionFactory
                = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            session.beginTransaction();
            session.save(alu);
            session.flush();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            status = 1;
        }
        return status;
    }

    public static int EditarAlumno(Alumno alu) {
        int status = 0;
        SessionFactory sessionFactory
                = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            session.beginTransaction();
            session.update(alu);
            session.flush();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            status = 1;
        }
        return status;
    }

    public static Alumno getAlumnoPorId(int id) {
        Alumno alumno;
        alumno = null;
        SessionFactory sessionFactory
                = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            session.beginTransaction();
            alumno = (Alumno) session.get(Alumno.class, id);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return alumno;
    }

    public static void EliminarAlumno(int id) {
        Alumno alumno;
        alumno = ManejadorAlumno.getAlumnoPorId(id);
        alumno.setActivo(false);
        ManejadorAlumno.EditarAlumno(alumno);
    }
}
