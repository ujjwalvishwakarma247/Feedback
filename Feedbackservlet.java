import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/first")
public class Feedbackservlet extends HttpServlet {
    private  static  final String url="jdbc:mysql://localhost:3306/feedbackdata";
    private  static  final String username="root";
    private  static  final String password="uvmysql@2006";




    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
         String parameter = req.getParameter("feedback-message");
        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();
        writer.println("<h1>Feedback servlet working</h1>");
        writer.println("<h2>Email : "+email+"</h2>");
        writer.println("<h2>Phone : "+phone+"</h2>");
        writer.println("<h2>your feedback : "+parameter+"</h2>");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        try{
            Connection connection = DriverManager.getConnection(url,username,password);
            String query=String.format("INSERT INTO feedback(email, phone, message) VALUES('%s', '%s', '%s')",email ,phone,parameter);
            Statement statement = connection.createStatement();
            statement.executeUpdate(query);

            String query2="select * FROM feedback";
            ResultSet resultSet = statement.executeQuery(query2);
            while (resultSet.next()){
                writer.println("<h3>id: "+resultSet.getInt("id")+"</h3>");
                writer.println("<h3>email: "+resultSet.getString("email")+"</h3>");
                writer.println("<h3>phone: "+resultSet.getString("phone")+"</h3>");
                writer.println("<h3>message: "+resultSet.getString("message")+"</h3>");
            }



        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();
        writer.println("Feedback servlet working");
    }





}
