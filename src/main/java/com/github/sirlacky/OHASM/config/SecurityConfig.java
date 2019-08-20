package com.github.sirlacky.OHASM.config;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

@Configuration
@EnableAutoConfiguration
@EnableGlobalMethodSecurity(securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private DataSource dataSource;

    public SecurityConfig(DataSource dataSource){
        this.dataSource = dataSource;
    }


    @Bean
    public PasswordEncoder passwordEncoder(){
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .passwordEncoder(passwordEncoder())
                //w ByUserQuery wstawiamy true zeby nie szukal w tabeli w bazie tabeli czy uzytkownik jest aktywny
                .usersByUsernameQuery("SELECT username, password, true FROM users WHERE username = ?")
                //Do szukania roli uzytkownika: SELECT username, role_name FROM users_roles WHERE username = ?
                .authoritiesByUsernameQuery("SELECT username, 'ROLE_USER' FROM users WHERE username = ?");
//                //dodanie użytkownika do celów developerskich
//                .withUser("admin").password(passwordEncoder().encode("admin"))
//                .roles("ADMIN", "USER");

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/media/**").permitAll()
                .antMatchers("/register").permitAll()
                .antMatchers("/homepage").permitAll()
                .antMatchers("/author").permitAll()
                .antMatchers("/").permitAll()
                .antMatchers("/login").anonymous()
                .antMatchers("/user", "/user/**").hasRole("USER")//do hasRole i hasAnyRole nazwy roli dajemy bez przedrostka "ROLE_"
                .antMatchers("/admin", "/admin/**").hasRole("ADMIN")//do hasAuthority i hasAnyAuthority dajemy pełną nazwę "ROLE_USER"
                .anyRequest().authenticated() // any request authenticated dajemy na ostatnim miejscu ZAWSZE!
                .and()
                .formLogin()
                .loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password")
                .defaultSuccessUrl("/main")
                .and()
                .logout()
                .logoutUrl("/logout")
//                    .logoutSuccessUrl("/logout")
                .and()
                .csrf()//wylacza potwierdzenie wylogowanie "czy napewno chcesz sie wylogowac"
                .disable()
                .rememberMe()//remember me pozwala logowac sie uzytkownikomi jesli byl wczesniej zalogowany
                .key("mójTajnyKluczRememberMe")//haslo do rozszyfrowania ciasteczka
                .rememberMeParameter("remember-me")//nazwa check boxa "zapamietaj" w formularzu logowania
                .tokenValiditySeconds(7*24*60*60);//czas zycia rememberme


    }

}
