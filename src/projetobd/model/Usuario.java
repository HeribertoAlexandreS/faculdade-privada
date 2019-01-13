/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetobd.model;

import java.time.LocalDate;

/**
 *
 * @author bella
 */
public class Usuario {
    private String cpf;
    private String login;
    private String senha;
    private String email;
    private String nome;
    private Byte cv_lattes;
    private LocalDate dt_nasc;
    private int idade;
    private EnumGenero sexo;
    private String RG;
    private String telefone;
    private String cep_endereco;
    private String num_end;
    
    public Usuario (String cpf, String login, String senha, String email,
            String nome, LocalDate dt_nasc, int idade, EnumGenero sexo, String RG,
            String telefone, String cep_endereco, String num_end) {
        this.cpf = cpf;
        this.login = login;
        this.senha = senha;
        this.email = email;
        this.nome = nome;
        this.dt_nasc = dt_nasc;
        this.idade = idade;
        this.sexo = sexo;
        this.RG = RG;
        this.telefone = telefone;
        this.cep_endereco = cep_endereco;
        this.num_end = num_end;
    }
    
    public Usuario (String cpf, String login, String senha, String email,
            String nome, String cep_endereco) {
        this.cpf = cpf;
        this.login = login;
        this.senha = senha;
        this.email = email;
        this.nome = nome;
        this.cep_endereco = cep_endereco;
    }
}
