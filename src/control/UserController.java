/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import projetobd.model.UserRepository;
import projetobd.model.Usuario;

/**
 *
 * @author bella
 */
public class UserController {
    private UserRepository repositorio;
    
    public UserController() {
        this.repositorio = UserRepository.getInstancia(); 
    }
    
    public void addUser(Usuario user) {
        repositorio.addUser(user);
    }
}
