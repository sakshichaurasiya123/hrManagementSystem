package com.nagarro.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.nagarro.dao.UserDao;
import com.nagarro.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	static ApplicationContext context = new ClassPathXmlApplicationContext("Bean.xml");
	private HibernateTemplate hTemplate;

	public HibernateTemplate gethTemplate() {
		return hTemplate;
	}

	public void sethTemplate(HibernateTemplate hTemplate) {
		this.hTemplate = hTemplate;
	}

	public void addLoginDetails(User user) {
		System.out.println(user);
		try {
			hTemplate = context.getBean("hibernateTemplate", HibernateTemplate.class);
			Session session = hTemplate.getSessionFactory().openSession();
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
			session.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	public boolean isValidateUser(String username, String password) {
		System.out.println(username + " " + password);
		hTemplate = context.getBean("hibernateTemplate", HibernateTemplate.class);

		List<User> userList = (List<User>) this.hTemplate.find("from User where username=?", username);
		System.out.println(userList);
		if (!userList.isEmpty()) {
			for (User user : userList) {

				if (BCrypt.checkpw(password, user.getPassword())) {

					return true;
				}

			}

		}

		return false;
	}

}
