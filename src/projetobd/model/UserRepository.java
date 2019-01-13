/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetobd.model;

import java.util.ArrayList;

/**
 *
 * @author bella
 */
public class UserRepository {
    private ArrayList<Usuario> users;
    private static UserRepository instancia;

    public static UserRepository getInstancia() {
        if (instancia == null) {
            instancia = new UserRepository();
        }
        return instancia;
    }

    private UserRepository() {
        this.users = new ArrayList<>();
    }
    
    public void addUser (Usuario user) {
        users.add(user);
    }
}
