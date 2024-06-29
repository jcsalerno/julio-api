package br.com.julio.api.services;
import br.com.julio.api.domain.User;

import java.util.List;

public interface UserService {

    User findById(Integer id);
    List<User> findAll();
}
