/*This class sets up Hibernate to get data from the database*/

package com.aptappteam.configuration;

import java.util.Properties;

import javax.sql.DataSource;
 
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
 
@Configuration
@EnableTransactionManagement
@ComponentScan({ "com.aptappteam.configuration" })
@PropertySource(value = { "classpath:application.properties" })
public class HibernateConfiguration {
 
    @Autowired
    private Environment environment;
 
    /* Name: sessionFactory
	 * Purpose: Sets up Hibernate to know what models the data will map to.
	 * Arguments: None
	 * Returns: A SessionFactoryBean
	 * */
    @Bean
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(new String[] { "com.aptappteam.model" });
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
     }
    /* Name: dataSource
	 * Purpose: Sets up Hibernate to use the database
	 * Arguments: None
	 * Returns: the Data Source for Hibernate to pull from.
	 * */
    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driverClassName"));
        dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
        dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
        dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
        return dataSource;
    }
     
    /* Name: hibernateProperties
	 * Purpose: Sets up Hibernate to work with SQL.
	 * Arguments: None
	 * Returns: returns the properties
	 * */
    private Properties hibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
        properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
        properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
        return properties;        
    }
     
    /* Name: transactionManager
	 * Purpose: Sets up Hibernate to make transactions to the database.
	 * Arguments: A sessionfactory that will hold the sessions from the database after retrieving and before storing.
	 * Returns: A transaction manager object
	 * */
    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory s) {
       HibernateTransactionManager txManager = new HibernateTransactionManager();
       txManager.setSessionFactory(s);
       return txManager;
    }
}