package com.gaminggrotto.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gaminggrotto.models.Platform;

public interface PlatformRepository extends JpaRepository<Platform, Long> {

    Optional<Platform> findByName(String name);
}
