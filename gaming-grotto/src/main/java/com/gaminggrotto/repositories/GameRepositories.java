package com.gaminggrotto.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gaminggrotto.models.Game;
import java.util.List;

public interface GameRepositories extends JpaRepository<Game, Long> {

    Optional<Game> findByTitle(String title);

    List<Game> findByGenre_Name(String genreName);

}
