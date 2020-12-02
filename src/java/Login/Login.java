package Login;

import Conn.Conn;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try{
            
            String email = request.getParameter("inputEMail");
            String senha = request.getParameter("inputSenha");

            HttpSession session = request.getSession();

            String sqlLogin = "SELECT * FROM cliente WHERE email_cliente = '" + email + "' AND senha_cliente = '" + senha + "'";

            Connection conexao = Conn.Conectar();
            Statement stLogin = conexao.createStatement();
            ResultSet rsLogin = stLogin.executeQuery(sqlLogin);

            if (rsLogin.next()){
                //criando uma sessao chamado logado
                session.setAttribute("erro",0);
                session.setAttribute("logado","TRUE");
                session.setAttribute("nome",rsLogin.getString("nome_cliente"));
                session.setAttribute("id",rsLogin.getInt("id_cliente"));
                response.sendRedirect("_clieconta.jsp");
            }
            else{
                //criando uma sessao chamado erro
                session.setAttribute("erro",1);
                session.setAttribute("logado","FALSE");
                response.sendRedirect("login.jsp");
            }
        } catch(SQLException e){
            out.print("Erro na conexão: " + e);
        }
    }
}
/*
package Senha;

 

import java.math.BigInteger;
import java.security.*;

 

public class Senha {
    public static String passMD5(String password) throws 
        NoSuchAlgorithmException{      
        String hashMD5 = "";
        String plainText = password;
        MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
        mdAlgorithm.update(plainText.getBytes());
        byte[] digest = mdAlgorithm.digest();
        StringBuilder hexString = new StringBuilder();
        for (int i = 0; i < digest.length; i++) {
            plainText = Integer.toHexString(0xFF & digest[i]);
            if (plainText.length() < 2) {
                plainText = "0" + plainText;
            }
            hexString.append(plainText);
        }
        hashMD5 = hexString.toString();
        return hashMD5;
    }

 

    public static String passSHA512(String passwordToHash) throws NoSuchAlgorithmException{
            MessageDigest md = MessageDigest.getInstance("SHA-512"); 
            byte[] messageDigest = md.digest(passwordToHash.getBytes()); 
            BigInteger no = new BigInteger(1, messageDigest); 
            String hashSHA512 = no.toString(16); 
            while (hashSHA512.length() < 32) { 
                hashSHA512 = "0" + hashSHA512; 
            } 
            return hashSHA512;
    }
}
*/