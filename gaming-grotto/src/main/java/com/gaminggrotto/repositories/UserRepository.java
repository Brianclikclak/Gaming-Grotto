package com.gaminggrotto.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.gaminggrotto.models.UserEntity;

public interface UserRepository extends CrudRepository<UserEntity, Long> {

    Optional<UserEntity> findByUsername(String username);
}
