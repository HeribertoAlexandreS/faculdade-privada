/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetobd.model;

/**
 *
 * @author bella
 */
public enum EnumGenero {
    FEMININO("F"), MASCULINO("M");
    
    private final String nome;
    private EnumGenero (String nome) {
        this.nome = nome;
    }

    public String getNome(){
        return this.nome;
    }

    @Override
    public String toString() {
        return this.nome;
    }
}
