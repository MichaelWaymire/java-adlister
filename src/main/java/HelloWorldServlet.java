import javax.servlet.Filter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

class siteHitCounter {
    private int hitCount;

    public void init(){
        hitCount = 0;
    }
}



@WebServlet (name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//        Finish up the Hello World Servlet Create a page that displays
//        "Hello World!" when a user visits /hello

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String searchedName = req.getParameter("name");

        if(searchedName == null ) {
            searchedName = "World";
        }

        out.println("<h1>Hello, " + searchedName + "</h1>");





//        Create a page view counter
//        Create a page that displays a number that goes up by 1
//        everytime the /count page is viewed.




    }
}
