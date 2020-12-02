package pedido;

import Conn.Conn;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;

public class pedido_detalhe extends HttpServlet {

    public ArrayList<Dados> listard(Integer numero){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        try{
                String sqlPedido = "SELECT * FROM pedido WHERE numero_pedido = '" + numero + "'";
            Connection conn = Conn.Conectar();
            Statement stPedido = conn.createStatement();
            ResultSet rsPedido = stPedido.executeQuery(sqlPedido);
            
            while(rsPedido.next()){
                Dados dados = new Dados();
                dados.setNumero_pedido(rsPedido.getInt("numero_pedido"));
                dados.setStatus_pedido(rsPedido.getString("status_pedido"));
                dados.setPreco_total(rsPedido.getFloat("preco_total"));
                dados.setData_pedido(rsPedido.getString("data_pedido"));
                dados.setForma_pagamento(rsPedido.getString("forma_pagamento"));
                dados.setId_cliente(rsPedido.getInt("id_cliente"));
                dados.setId_endereco(rsPedido.getInt("id_endereco"));
             
                
                Conteudo.add(dados);
            }
        }catch(Exception e){
            System.out.print("Pedido::ERRO");
            System.out.print(e.getMessage());
        }
        return Conteudo;
    }
}
