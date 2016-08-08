package com.watchco.UserRoleModel;

import java.util.List;

public interface UserRoleService 

{

	
	
	
	public void insertUserRole(UserRole p);
	public void deleteUserRole(long p);
	public void updateUserRole(UserRole p);
	public UserRole getUserRole(int p);
    public List<UserRole> getAllUsers();
	public void generateUserRoles();
	
	
	

	
	
}