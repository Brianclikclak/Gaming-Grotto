package com.gaminggrotto.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gaminggrotto.models.Genre;
import java.util.Optional;

public interface GenreRepository extends JpaRepository<Genre, Long> {

    Optional<Genre> findByName(String name);

}
