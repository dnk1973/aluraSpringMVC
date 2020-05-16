package br.com.casadocodigo.loja.conf;

import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

//@EnableWebMvcSecurity --> Deprecated
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

}
