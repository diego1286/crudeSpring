package com.crudeClase.CrudeClase.auth;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
@Configuration
public class SpringSecurityConfig {
    @Bean
    public BCryptPasswordEncoder PasswordEncoder(){
        return new BCryptPasswordEncoder();
    }
}
/*
verificar como se hace para que queden los comentarios en los codigos de alla 
*/
