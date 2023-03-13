/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataaccess;

import models.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mitchell
 */
public class RoleDB {
    public List<Role> getAll() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;

        try {
            String query = "SELECT * FROM role";
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            List<Role> roles = new ArrayList<>();
            while (rs.next()) {
                Role role = new Role();
                role.setRoleID(rs.getInt("roleID"));
                role.setRoleName(rs.getString("roleName"));
                roles.add(role);
            }
            return roles;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }


    }
    
}
