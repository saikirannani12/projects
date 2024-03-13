import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
import javax.servlet.annotation.*;
@MultipartConfig

public class UpdateServlet extends HttpServlet
{
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
    {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        ServletContext context = getServletContext();
        String driver= context.getInitParameter("DRIVER");
        String url= context.getInitParameter("URL");
        String user= context.getInitParameter("USERNAME");
        String pass= context.getInitParameter("PASSWORD");
		HttpSession session = request.getSession();
        try{
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,user,pass);
            PreparedStatement pst = con.prepareStatement("Insert into Student values(?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1,request.getParameter("ROLL"));
            pst.setString(2,request.getParameter("SNAME"));
            pst.setString(3,request.getParameter("FNAME"));
            pst.setString(4,(String)session.getAttribute("COLLEGE"));
            pst.setString(5,request.getParameter("MAJOR"));
            pst.setBinaryStream(6,request.getPart("PHOTO").getInputStream());
            pst.setBinaryStream(7,request.getPart("SIGN").getInputStream());
            pst.setDate(8,java.sql.Date.valueOf(request.getParameter("DOB")));
			pst.setInt(9,0);
			pst.setString(10,request.getParameter("SL"));
            pst.setString(11,request.getParameter("YEAR"));
            int n = pst.executeUpdate();
            out.print("<html><body><h2>Student details uploaded Successfully</h2>");
			out.print("<a href=admin.jsp>Click Here</a> to go back....");
        }
        catch(SQLException|ClassNotFoundException e)
        {
            out.print(e);
        }
    }
}