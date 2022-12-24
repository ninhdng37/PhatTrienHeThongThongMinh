package com.example.demo4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.example.demo4.entity.Taikhoan;

import com.example.demo4.service.TaikhoanService;


public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private TaikhoanService taikhoanService;
	
	@Override
	public UserDetails loadUserByUsername(String tentk) throws UsernameNotFoundException {
		Taikhoan tk = taikhoanService.findByTaikhoan(tentk);
		if (tk == null) {
			throw new UsernameNotFoundException("User not found");
		}
		return new CustomUserDetails(tk);
	}

}
