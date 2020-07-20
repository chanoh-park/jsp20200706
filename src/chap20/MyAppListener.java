package chap20;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

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
    }
	
}
