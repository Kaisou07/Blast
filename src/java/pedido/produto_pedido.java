package pedido;

import Conn.Conn;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;

public class produto_pedido extends HttpServlet {

    public ArrayList<Dados> listar(Integer id_produto){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        try{
                String sqlProduto = "SELECT * FROM produto WHERE id_produto = '" + id_produto + "'";
            Connection conn = Conn.Conectar();
            Statement stPedido = conn.createStatement();
            ResultSet rsPedido = stPedido.executeQuery(sqlProduto);
            
            while(rsPedido.next()){
               Dados dados = new Dados();
                dados.setId_produto(rsPedido.getInt("id_produto"));
                dados.setUrl_img(rsPedido.getString("url_img"));
                dados.setNome_produto(rsPedido.getString("nome_produto"));
                dados.setPreco_produto(rsPedido.getString("preco_produto"));
                dados.setDescricao_produto(rsPedido.getString("descricao_produto"));
             
                
                Conteudo.add(dados);
            }
        }catch(Exception e){
            System.out.print("Pedido::ERRO");
            System.out.print(e.getMessage());
        }
        return Conteudo;
    }
}
