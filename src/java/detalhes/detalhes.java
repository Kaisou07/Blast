package detalhes;

import Conn.Conn;
import Model.Dados;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class detalhes extends HttpServlet {

    public ArrayList<Dados> listar(Integer id){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        
        try{
            String sqldetalhes = "SELECT * FROM produto WHERE id_produto =" + id;
            Connection conn = Conn.Conectar();
            Statement stdetalhes = conn.createStatement();
            ResultSet rsdetalhes = stdetalhes.executeQuery(sqldetalhes);
            
            
            if(rsdetalhes.next()){
                Dados dados = new Dados();
                dados.setId_produto(rsdetalhes.getInt("id_produto"));
                dados.setUrl_img(rsdetalhes.getString("url_img"));
                dados.setNome_produto(rsdetalhes.getString("nome_produto"));
                dados.setPreco_produto(rsdetalhes.getString("preco_produto"));
                dados.setDescricao_produto(rsdetalhes.getString("descricao_produto"));
                Conteudo.add(dados);      
            }
            rsdetalhes.close();
            conn.close();
            
            return Conteudo;
        }
        catch(Exception e){
            System.out.print("Erro ao mostrar detalhes do produto: ");
            System.out.print(e.getMessage());
        }
        return null;
    }

}
