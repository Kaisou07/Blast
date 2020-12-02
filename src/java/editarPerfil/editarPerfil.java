package editarPerfil;

import Conn.Conn;
import Model.Dados;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class editarPerfil extends HttpServlet {

    public ArrayList<Dados> listar(Integer id){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        
        try{
            String sqllistaCliente = "SELECT * FROM cliente WHERE id_cliente =" + id;
            Connection conn = Conn.Conectar();
            Statement stlistaCliente = conn.createStatement();
            ResultSet rslistaCliente = stlistaCliente.executeQuery(sqllistaCliente);
            
            if(rslistaCliente.next()){
                Dados dados = new Dados();
                dados.setId_cliente(rslistaCliente.getInt("id_cliente"));
                dados.setNome_cliente(rslistaCliente.getString("nome_cliente"));
                dados.setEmail_cliente(rslistaCliente.getString("email_cliente"));
                dados.setCpf_cliente(rslistaCliente.getString("cpf_cliente"));
                Conteudo.add(dados);
            }
            rslistaCliente.close();
            conn.close();
            
            return Conteudo;
        }
        catch(Exception e){
            System.out.print("Erro ao editar dados do Cliente: ");
            System.out.print(e.getMessage());
        }
        return null;
    }

}
