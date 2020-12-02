package produto_detalhe;
import Conn.Conn;
import Model.Dados;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class produto_detalhe extends HttpServlet {

    public ArrayList<Dados> listar(Integer id){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        
        try{
            String sqllistaProduto = "SELECT * FROM produto WHERE id_produto =" + id;
            Connection conn = Conn.Conectar();
            Statement stlistaProduto = conn.createStatement();
            ResultSet rslistaProduto = stlistaProduto.executeQuery(sqllistaProduto);
            
            if(rslistaProduto.next()){
                   Dados dados = new Dados();
                dados.setId_produto(rslistaProduto.getInt("id_produto"));
                dados.setUrl_img(rslistaProduto.getString("url_img"));
                dados.setNome_produto(rslistaProduto.getString("nome_produto"));
                dados.setPreco_produto(rslistaProduto.getString("preco_produto"));
                dados.setDescricao_produto(rslistaProduto.getString("descricao_produto"));
                
                Conteudo.add(dados);
            }
            rslistaProduto.close();
            conn.close();
            
            return Conteudo;
        }
        catch(Exception e){
            System.out.print("Erro ao encontrar Produto: ");
            System.out.print(e.getMessage());
        }
        return null;
    }

}
