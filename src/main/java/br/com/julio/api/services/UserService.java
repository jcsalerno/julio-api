package br.com.julio.api.services;
import br.com.julio.api.domain.User;

public interface UserService {

    User findById(Integer id);
}
