package endereco;

import Conn.Conn;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.http.*;

public class listarendereco extends HttpServlet {

    public ArrayList<Dados> listarend(Integer id) {

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        try {
            
            String sqlEndereco = "SELECT * FROM endereco WHERE id_cliente = '" + id + "'";
            Connection conn = Conn.Conectar();
            Statement stEndereco = conn.createStatement();
            ResultSet rsEndereco = stEndereco.executeQuery(sqlEndereco);

            while (rsEndereco.next()) {
                Dados dados = new Dados();
                dados.setId_endereco(rsEndereco.getInt("id_endereco"));
                dados.setCep_endereco(rsEndereco.getInt("cep_endereco"));
                dados.setEstado_endereco(rsEndereco.getString("estado_endereco"));
                dados.setCidade_endereco(rsEndereco.getString("cidade_endereco"));
                dados.setRua_endereco(rsEndereco.getString("rua_endereco"));
                dados.setNumero_endereco(rsEndereco.getInt("numero_endereco"));
                Conteudo.add(dados);
            }
        } catch (Exception e) {
            System.out.print("Endereco::ERRO");
            System.out.print(e.getMessage());
        }
        return Conteudo;
    }
}
