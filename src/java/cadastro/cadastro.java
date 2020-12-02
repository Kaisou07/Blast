
package cadastro;

import Conn.Conn;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class cadastro extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try{
            String nome = request.getParameter("inputNome");
            String email = request.getParameter("inputEMail");
            String cpf = request.getParameter("inputCPF");
            String senha = request.getParameter("inputSenha");
            
            String sqlInsert = "INSERT INTO cliente (nome_cliente, email_cliente, cpf_cliente, senha_cliente) VALUES ('" + nome + "','" + email + "','" + cpf + "','" + senha + "')";
        
            Connection con = Conn.Conectar();
            Statement stInsert = con.prepareStatement(sqlInsert);
            stInsert.execute(sqlInsert);
            
            response.sendRedirect("login.jsp");
        } catch(SQLException e){
            out.print("Erro ao inserir os dados no banco" + e);
                    
        }
       
    }
}
