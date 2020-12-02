package pedido;

import Conn.Conn;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.http.*;

public class itens_pedido extends HttpServlet {

    public ArrayList<Dados> listarp(Integer numero){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        try{
                String sqlPedido = "SELECT * FROM itens_pedido WHERE id_pedido = '" + numero + "'";
            Connection conn = Conn.Conectar();
            Statement stPedido = conn.createStatement();
            ResultSet rsPedido = stPedido.executeQuery(sqlPedido);
            
            while(rsPedido.next()){
                Dados dados = new Dados();
                dados.setValor_unitario(rsPedido.getFloat("itensped_valor_unitario"));
                dados.setPreco_total(rsPedido.getFloat("itensped_valor_total"));
                dados.setQuantidade_pedido(rsPedido.getInt("itensped_quantidade"));
                dados.setNumero_pedido(rsPedido.getInt("id_pedido"));
                dados.setId_produto(rsPedido.getInt("id_produto"));
             
                
                Conteudo.add(dados);
            }
        }catch(Exception e){
            System.out.print("Pedido::ERRO");
            System.out.print(e.getMessage());
        }
        return Conteudo;
    }
}
