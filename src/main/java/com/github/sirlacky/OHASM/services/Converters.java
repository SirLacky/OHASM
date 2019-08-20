package com.github.sirlacky.OHASM.services;

import com.github.sirlacky.OHASM.domain.model.User;
import com.github.sirlacky.OHASM.dtos.RegistrationFormDTO;
import com.github.sirlacky.OHASM.dtos.UserDTO;

public class Converters {

    public static UserDTO convertToUserDTO(User user) {
        UserDTO userDTO = new UserDTO();
        userDTO.setUserName(user.getUsername());
        return userDTO;
    }

    public static User convertToUser(RegistrationFormDTO form) {
        User user = new User();
        user.setUsername(form.getUsername());
        user.setPassword(form.getPassword());
        return user;
    }

}
