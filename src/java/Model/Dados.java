package Model;

public class Dados {

    private int id_endereco;
    private int cep_endereco;
    private String estado_endereco;
    private String cidade_endereco;
    private String rua_endereco;
    private int numero_endereco;

    /**
     * @return the cep_endereco
     */
    public int getCep_endereco() {
        return cep_endereco;
    }

    /**
     * @param cep_endereco the cep_endereco to set
     */
    public void setCep_endereco(int cep_endereco) {
        this.cep_endereco = cep_endereco;
    }

    /**
     * @return the estado_endereco
     */
    public String getEstado_endereco() {
        return estado_endereco;
    }

    /**
     * @param estado_endereco the estado_endereco to set
     */
    public void setEstado_endereco(String estado_endereco) {
        this.estado_endereco = estado_endereco;
    }

    /**
     * @return the cidade_endereco
     */
    public String getCidade_endereco() {
        return cidade_endereco;
    }

    /**
     * @param cidade_endereco the cidade_endereco to set
     */
    public void setCidade_endereco(String cidade_endereco) {
        this.cidade_endereco = cidade_endereco;
    }

    /**
     * @return the rua_endereco
     */
    public String getRua_endereco() {
        return rua_endereco;
    }

    /**
     * @param rua_endereco the rua_endereco to set
     */
    public void setRua_endereco(String rua_endereco) {
        this.rua_endereco = rua_endereco;
    }

    /**
     * @return the numero_endereco
     */
    public int getNumero_endereco() {
        return numero_endereco;
    }

    /**
     * @param numero_endereco the numero_endereco to set
     */
    public void setNumero_endereco(int numero_endereco) {
        this.numero_endereco = numero_endereco;
    }

    /**
     * @return the id_endereco
     */
    public int getId_endereco() {
        return id_endereco;
    }

    /**
     * @param id_endereco the id_endereco to set
     */
    public void setId_endereco(int id_endereco) {
        this.id_endereco = id_endereco;
    }

    //------------------------------------------------------------------------//
    private int numero_pedido;
    private int quantidade_pedido;
    private String status_pedido;
    private float preco_total;
    private float valor_unitario;
    private String data_pedido;
    private String forma_pagamento;

    /**
     * @return the forma_pagamento
     */
    public String getForma_pagamento() {
        return forma_pagamento;
    }

    /**
     * @param forma_pagamento the forma_pagamento to set
     */
    public void setForma_pagamento(String forma_pagamento) {
        this.forma_pagamento = forma_pagamento;
    }

    /**
     * @return the preco_total
     */
    public float getPreco_total() {
        return preco_total;
    }

    /**
     * @param preco_total the preco_total to set
     */
    public void setPreco_total(float preco_total) {
        this.preco_total = preco_total;
    }

    /**
     * @return the valor_unitario
     */
    public float getValor_unitario() {
        return valor_unitario;
    }

    /**
     * @param valor_unitario the valor_unitario to set
     */
    public void setValor_unitario(float valor_unitario) {
        this.valor_unitario = valor_unitario;
    }

    /**
     * @return the data_pedido
     */
    public String getData_pedido() {
        return data_pedido;
    }

    /**
     * @param data_pedido the data_pedido to set
     */
    public void setData_pedido(String data_pedido) {
        this.data_pedido = data_pedido;
    }

    /**
     * @return the numero_pedido
     */
    public int getNumero_pedido() {
        return numero_pedido;
    }

    /**
     * @param numero_pedido the numero_pedido to set
     */
    public void setNumero_pedido(int numero_pedido) {
        this.numero_pedido = numero_pedido;
    }

    /**
     * @return the quantidade_pedido
     */
    public int getQuantidade_pedido() {
        return quantidade_pedido;
    }

    /**
     * @param quantidade_pedido the quantidade_pedido to set
     */
    public void setQuantidade_pedido(int quantidade_pedido) {
        this.quantidade_pedido = quantidade_pedido;
    }

    /**
     * @return the status_pedido
     */
    public String getStatus_pedido() {
        return status_pedido;
    }

    /**
     * @param status_pedido the status_pedido to set
     */
    public void setStatus_pedido(String status_pedido) {
        this.status_pedido = status_pedido;
    }

    //------------------------------------------------------------------------//
    private int id_cliente;
    private String nome_cliente;
    private String email_cliente;
    private String cpf_cliente;
    private String senha_cliente;

    /**
     * @return the id_cliente
     */
    public int getId_cliente() {
        return id_cliente;
    }

    /**
     * @param id_cliente the id_cliente to set
     */
    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    /**
     * @return the nome_cliente
     */
    public String getNome_cliente() {
        return nome_cliente;
    }

    /**
     * @param nome_cliente the nome_cliente to set
     */
    public void setNome_cliente(String nome_cliente) {
        this.nome_cliente = nome_cliente;
    }

    /**
     * @return the email_cliente
     */
    public String getEmail_cliente() {
        return email_cliente;
    }

    /**
     * @param email_cliente the email_cliente to set
     */
    public void setEmail_cliente(String email_cliente) {
        this.email_cliente = email_cliente;
    }

    /**
     * @return the cpf_cliente
     */
    public String getCpf_cliente() {
        return cpf_cliente;
    }

    /**
     * @param cpf_cliente the cpf_cliente to set
     */
    public void setCpf_cliente(String cpf_cliente) {
        this.cpf_cliente = cpf_cliente;
    }

    /**
     * @return the senha_cliente
     */
    public String getSenha_cliente() {
        return senha_cliente;
    }

    /**
     * @param senha_cliente the senha_cliente to set
     */
    public void setSenha_cliente(String senha_cliente) {
        this.senha_cliente = senha_cliente;
    }

    //------------------------------------------------------------------------//
    private int id_produto;
    private String url_img;
    private String nome_produto;
    private String preco_produto;
    private String descricao_produto;
    private int categoria_produto;

    /**
     * @return the id_produto
     */
    public int getId_produto() {
        return id_produto;
    }

    /**
     * @param id_produto the id_produto to set
     */
    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    /**
     * @return the url_img
     */
    public String getUrl_img() {
        return url_img;
    }

    /**
     * @param url_img the url_img to set
     */
    public void setUrl_img(String url_img) {
        this.url_img = url_img;
    }

    /**
     * @return the nome_produto
     */
    public String getNome_produto() {
        return nome_produto;
    }

    /**
     * @param nome_produto the nome_produto to set
     */
    public void setNome_produto(String nome_produto) {
        this.nome_produto = nome_produto;
    }

    /**
     * @return the preco_produto
     */
    public String getPreco_produto() {
        return preco_produto;
    }

    /**
     * @param preco_produto the preco_produto to set
     */
    public void setPreco_produto(String preco_produto) {
        this.preco_produto = preco_produto;
    }

    /**
     * @return the descricao_produto
     */
    public String getDescricao_produto() {
        return descricao_produto;
    }

    /**
     * @param descricao_produto the descricao_produto to set
     */
    public void setDescricao_produto(String descricao_produto) {
        this.descricao_produto = descricao_produto;
    }

    /**
     * @return the categoria_produto
     */
    public int getCategoria_produto() {
        return categoria_produto;
    }

    /**
     * @param categoria_produto the categoria_produto to set
     */
    public void setCategoria_produto(int categoria_produto) {
        this.categoria_produto = categoria_produto;
    }

}
