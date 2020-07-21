package chap20;

import java.sql.DriverManager;


import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

/**
 * Application Lifecycle Listener implementation class MyAppListener
 *
 */
@WebListener
public class MyAppListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public MyAppListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 	// application 종료 되면 실행
         System.out.println("어플리케이션 종료됨");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { // application이 실행 준비가 되자마자 실행, 항상 먼저 시작되어야 할일을 적어주면 된다
        ServletContext app = sce.getServletContext();
        app.setAttribute("rootPath", app.getContextPath());
    	System.out.println("어플리케이션 시작됨");				  
    	
    	System.out.println(app.getInitParameter("logEnabled"));
    	System.out.println(app.getInitParameter("debugLevel"));
    	
    	initConnectionPool();
    }
    
    private void initConnectionPool() {
    	try {
    		String jdbcUrl = "jdbc:mysql://localhost/test1" + "?serverTimezone=Asia/Seoul";
    		String usename = "root";
    		String pw = "rootpw";
    		
    		ConnectionFactory connFactory = new DriverManagerConnectionFactory(jdbcUrl, usename, pw);
    		
    		PoolableConnectionFactory poolableConnFactory = new PoolableConnectionFactory(connFactory, null);
    		poolableConnFactory.setValidationQuery("select 1");
    		
    		GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
    		poolConfig.setTimeBetweenEvictionRunsMillis(1000 * 60L * 5L);
    		poolConfig.setTestWhileIdle(true);
    		poolConfig.setMinIdle(4);
    		poolConfig.setMaxTotal(50);
    		
    		GenericObjectPool<PoolableConnection> connectionPool = new GenericObjectPool<>(poolableConnFactory, poolConfig);
    		poolableConnFactory.setPool(connectionPool);
    		
    		Class.forName("org.apache.commons.dbcp2.PoolingDriver");
    		PoolingDriver driver = (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
    		driver.registerPool("test1", connectionPool);
    	} catch (Exception e) {
    		throw new RuntimeException();
    	}
    }
	
}
