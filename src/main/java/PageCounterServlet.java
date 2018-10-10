import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "PageCounterServlet", urlPatterns ="/counter")
public class PageCounterServlet extends HttpServlet {

    private int counter;

    protected void doGet(HttpServletRequest request,HttpServletResponse response)
        throws ServletException, IOException {

        boolean reset = Boolean.valueOf(request.getParameter("reset"));

        if(reset){
            counter = 0;
        }

        counter++;
        response.getWriter().println("<h1>This page has a counter</h1>");
        response.getWriter().println(counter);

    }


    //Everything the site refreshes or visited the counter will count up by 1.


}
