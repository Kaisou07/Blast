package listarProduto;

import Conn.Conn;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;

public class listarProduto extends HttpServlet {

    public ArrayList<Dados> listar(){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        try{
            String sqlListarProduto = "SELECT * FROM produto WHERE ativo_produto = 1";
            Connection conn = Conn.Conectar();
            Statement stListarProduto = conn.createStatement();
            ResultSet rsListarProduto = stListarProduto.executeQuery(sqlListarProduto);
            
            while(rsListarProduto.next()){
                Dados dados = new Dados();
                dados.setId_produto(rsListarProduto.getInt("id_produto"));
                dados.setUrl_img(rsListarProduto.getString("url_img"));
                dados.setNome_produto(rsListarProduto.getString("nome_produto"));
                dados.setPreco_produto(rsListarProduto.getString("preco_produto"));
                dados.setDescricao_produto(rsListarProduto.getString("descricao_produto"));
             
                
                Conteudo.add(dados);
            }
        }catch(Exception e){
            System.out.print("ListarProduto::ERRO");
            System.out.print(e.getMessage());
        }
        return Conteudo;
    }
}
