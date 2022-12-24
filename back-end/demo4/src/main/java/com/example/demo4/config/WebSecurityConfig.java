package com.example.demo4.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.demo4.controller.CustomUserDetailsService;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private DataSource dataSource;
	
	@Bean
	public UserDetailsService userDetailsService() {
		return new CustomUserDetailsService();
	}
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	@Bean
	public DaoAuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
		authProvider.setUserDetailsService(userDetailsService());
		authProvider.setPasswordEncoder(passwordEncoder());
		
		return authProvider;
	}
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authenticationProvider());
	}
	@Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
            .antMatchers("/list_users").authenticated()
            .anyRequest().permitAll()
            .and()
            .formLogin()
                 .loginPage("/login")
                .usernameParameter("tentk")
                .defaultSuccessUrl("/list_users",true)
                .permitAll()
            .and()
            .logout().logoutSuccessUrl("/").permitAll()
            .and().rememberMe().and().logout().permitAll();     
		/*
		 * http.authorizeRequests().antMatchers("/").permitAll().antMatchers("/user/**")
		 * .hasRole("USER")
		 * .antMatchers("/nhanvien/**").hasRole("EMPLOYEE").antMatchers("/veXe/**").
		 * hasAnyRole("USER,EMPLOYEE")
		 * .antMatchers("/quanly/**").hasAnyRole("MANAGER").and().formLogin().loginPage(
		 * "/showLoginPage")
		 * .loginProcessingUrl("/authenticateTheUser").defaultSuccessUrl(
		 * "/loginSuccessful", true).permitAll() .and().logout().permitAll();
		 */
    }
}
