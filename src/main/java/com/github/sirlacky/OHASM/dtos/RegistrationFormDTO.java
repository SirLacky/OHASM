package com.github.sirlacky.OHASM.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RegistrationFormDTO {

    @NotNull
    @Size(min = 3,max = 20)
    private String username;
    @NotNull
    @Size(min = 3,max = 20)
    private String password;
    @NotNull
    @Size(min = 3,max = 20)
    private String confirmedPassword;

}
