package com.example.demo4.controller;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.demo4.entity.Taikhoan;


public class CustomUserDetails implements UserDetails {

    private Taikhoan user;
	
	public CustomUserDetails(Taikhoan user) {
		this.user = user;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return null;
	}

	@Override
	public String getPassword() {
		return user.getMatkhau();
	}

	@Override
	public String getUsername() {
		return user.getTentk();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
	
	public String getFullName() {
		return user.getTentk();
	}

}
