package excluirCliente;

import Conn.Conn;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class excluirCliente extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();        
            try{           
                 
                int id = Integer.parseInt(request.getParameter("id"));
                
                String sqlExcluir = "DELETE FROM cliente WHERE id_cliente = " + id;
                
                Connection con = Conn.Conectar();
                Statement stExculir = con.prepareStatement(sqlExcluir);
                stExculir.execute(sqlExcluir);
                
                //session.setAttribute("erro", 2);
                response.sendRedirect("login.jsp");
            }
            catch(SQLException e){
                out.print("Erro ao excluir os dados no banco" + e);
            }
    }
}
