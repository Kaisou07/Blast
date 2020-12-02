package searchProduto;

import Conn.Conn;
import Model.Dados;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class searchProduto extends HttpServlet {

    public ArrayList<Dados> procurar(String search){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        
        try{
           String sqlSearchProduto = "SELECT * FROM produto WHERE nome_produto LIKE '%" + search + "%'";
            Connection conn = Conn.Conectar();
            Statement stSearchProduto = conn.createStatement();
            ResultSet rsSearchProduto = stSearchProduto.executeQuery(sqlSearchProduto);
            
            while(rsSearchProduto.next()){
                Dados dados = new Dados();
              //  dados.setId_produto(rsListarProduto.getInt("id_produto"));
                dados.setUrl_img(rsSearchProduto.getString("url_img"));
                dados.setNome_produto(rsSearchProduto.getString("nome_produto"));
                dados.setPreco_produto(rsSearchProduto.getString("preco_produto"));
                dados.setDescricao_produto(rsSearchProduto.getString("descricao_produto"));
                
                Conteudo.add(dados);
            }
            rsSearchProduto.close();
            conn.close();
            
            return Conteudo;
        }
        catch(Exception e){
            System.out.print("Erro ao editar dados do Cliente: ");
            System.out.print(e.getMessage());
        }
        return null;
    }



    public ArrayList<Dados> procurarCategoria(String cat){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        
        try{
           String sqlSearchCategoria = "SELECT * FROM produto WHERE categoria_produto=" + cat;
            Connection conn = Conn.Conectar();
            Statement stSearchCategoria = conn.createStatement();
            ResultSet rsSearchCategoria = stSearchCategoria.executeQuery(sqlSearchCategoria);
            
            while(rsSearchCategoria.next()){
                Dados dados = new Dados();
              //  dados.setId_produto(rsListarProduto.getInt("id_produto"));
                dados.setUrl_img(rsSearchCategoria.getString("url_img"));
                dados.setNome_produto(rsSearchCategoria.getString("nome_produto"));
                dados.setPreco_produto(rsSearchCategoria.getString("preco_produto"));
                dados.setDescricao_produto(rsSearchCategoria.getString("descricao_produto"));
                
                Conteudo.add(dados);
            }
            rsSearchCategoria.close();
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
