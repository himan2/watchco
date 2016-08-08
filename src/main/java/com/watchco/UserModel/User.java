package com.watchco.UserModel;
import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Email;


@Entity
@Embeddable
public class User implements Serializable
{
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long ID;
	
	private String Email;
	
	private String Username;
	
	private String Password;
	
	@Transient
	private String CPassword;
	
	private String Phone;

	private int Role = 1;
	private boolean Active = true;
	
	public int getRole() {
		return Role;
	}

	public void setRole(int role) {
		Role = role;
	}

	public boolean isActive() {
		return Active;
	}

	public void setActive(boolean active) {
		Active = active;
	}
	
	
	@NotEmpty(message="Confirm Password field is mandatory.")
	public String getCPassword() {
		return CPassword;
	}
	public void setCPassword(String cPassword) {
		CPassword = cPassword;
	}
	
	
	public Long getID() {
		return ID;
	}
	public void setID(Long iD) {
		ID = iD;
	}
	
	@NotEmpty(message="Email field is mandatory.")
    @Email(message="Invalid Email Format")
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	@NotEmpty(message="Username field is mandatory.")
	public String getUsername() {
		return Username;
	}
	
	public void setUsername(String username) {
		Username = username;
	}

	@NotEmpty(message="Password field is mandatory.")
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	@NotEmpty(message="Phone Number field is mandatory.")
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	
	public User(){
		
	}
	@Override
	public String toString() {
		return "User [ID=" + ID + ", Email=" + Email + ", Username=" + Username + ", Password=" + Password
				+ ", CPassword=" + CPassword + ", Phone=" + Phone + "]";
	}
	
	
}
