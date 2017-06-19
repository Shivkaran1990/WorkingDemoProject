package com.karan.hbr.HibernetDemo;

import javax.transaction.Transaction;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
        Session session=sessionfactory.openSession();
        session.beginTransaction();
        Employee e1=new Employee();
        e1.setName("Ritu");
        e1.setSurname("Sharma");
        
        session.save(e1);
        session.getTransaction().commit();
    }
}
