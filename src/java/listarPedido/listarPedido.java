package listarPedido;

import Conn.Conn;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;

public class listarPedido extends HttpServlet {

    public ArrayList<Dados> listar(Integer id){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        try{
            String sqlListarPedido = "SELECT * FROM pedido WHERE id_cliente = '" + id + "'";       
            Connection conn = Conn.Conectar();
            Statement stListarPedido = conn.createStatement();
            ResultSet rsListarPedido = stListarPedido.executeQuery(sqlListarPedido);
            
            while(rsListarPedido.next()){
                Dados dados = new Dados();
                dados.setNumero_pedido(rsListarPedido.getInt("numero_pedido"));
                dados.setStatus_pedido(rsListarPedido.getString("status_pedido"));
                Conteudo.add(dados);
            }
        }catch(Exception e){
            System.out.print("ListarPedido::ERRO");
            System.out.print(e.getMessage());
        }
        return Conteudo;
    }
}
