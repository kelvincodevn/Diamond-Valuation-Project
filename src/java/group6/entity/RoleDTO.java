/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.entity;

/**
 *
 * @author DELL
 */
public class RoleDTO {
    private String roleID;
    private String roleName;
    private String roleDescription;

    public RoleDTO() {
    }
    
    public RoleDTO(String roleID, String roleName, String roleDescription) {
        this.roleID = roleID;
        this.roleName = roleName;
        this.roleDescription = roleDescription;
    }

    public String getRoleID() {
        return roleID;
    }

    public void setRoleID(String roleID) {
        this.roleID = roleID;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleDescription() {
        return roleDescription;
    }

    public void setRoleDescription(String roleDescription) {
        this.roleDescription = roleDescription;
    }
}
