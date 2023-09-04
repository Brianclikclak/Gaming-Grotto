package com.gaminggrotto.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gaminggrotto.models.Developer;

public interface DeveloperRepositories extends JpaRepository<Developer, Long> {

    Optional<Developer> findByName(String name);
}
