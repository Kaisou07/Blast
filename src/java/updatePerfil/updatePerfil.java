package updatePerfil;

import Conn.Conn;
import senha.Senha;
import java.io.*;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class updatePerfil extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String nome = request.getParameter("txtNome");
            String email = request.getParameter("txtEmail");
            String cpf = request.getParameter("txtCPF");

            if ((request.getParameter("txtSenha").isEmpty())) {
                String sqlUpdate = "UPDATE cliente SET nome_cliente = '" + nome + "' ,email_cliente = '" + email + "', cpf_cliente = '" + cpf + "' WHERE id_cliente = " + id;
                Connection con = Conn.Conectar();
                Statement stUpdate = con.prepareStatement(sqlUpdate);
                stUpdate.execute(sqlUpdate);
            } else {
                String senha = request.getParameter("txtSenha");
                String hashMD5 = Senha.passMD5(senha);
                String passSHA512 = Senha.passSHA512(hashMD5);
                String sqlUpdate = "UPDATE cliente SET nome_cliente = '" + nome + "' ,email_cliente = '" + email + "', cpf_cliente = '" + cpf + "', senha_cliente = '" + passSHA512 + "' WHERE id_cliente = " + id;
                Connection con = Conn.Conectar();
                Statement stUpdate = con.prepareStatement(sqlUpdate);
                stUpdate.execute(sqlUpdate);
                response.sendRedirect("_clieconta.jsp");       
            }

        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(updatePerfil.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(updatePerfil.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
