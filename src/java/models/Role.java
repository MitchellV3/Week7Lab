/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.beans.*;
import java.io.Serializable;

/**
 *
 * @author Mitchell
 */
public class Role implements Serializable {
    private int roleID;
    private String roleName;

    public Role() {
        roleID = 2;
        roleName = "";
    }

    public Role(int roleID, String roleName) {
        this.roleID = roleID;
        this.roleName = roleName;
    }

    public Role(int roleID) {
        this.roleID = roleID;
    }

    public Role(String roleName) {
        this.roleName = roleName;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return roleName;
    }
    
}
