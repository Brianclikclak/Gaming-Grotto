package com.gaminggrotto.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.gaminggrotto.exception.GameNotFoundException;
import com.gaminggrotto.models.Game;
import com.gaminggrotto.repositories.GameRepository;

import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class GameService implements BaseService<Game> {

    private final GameRepository gameRepository;

    @Override
    public List<Game> findAll() {
        return gameRepository.findAll();
    }

    @Override
    public Game findById(Long id) {
        return gameRepository.findById(id)
                .orElseThrow(() -> new GameNotFoundException("Game not found whit id: " + id));

    }

    public Game findByTitle(String title) {
        return gameRepository.findByTitle(title)
                .orElseThrow(() -> new GameNotFoundException("Game not found whit Title: " + title));
    }

    public List<Game> findByGenre(String genre) {
        return gameRepository.findByGenre_Name(genre);
    }

    @Override
    @Transactional
    public Game save(Game game) {
        return gameRepository.save(game);
    }

    @Transactional
    public Game updateGame(Long id, Game gameDetails) {
        Game game = findById(id);
        game.setTitle(gameDetails.getTitle());
        game.setReleaseYear(gameDetails.getReleaseYear());
        game.setDescription(gameDetails.getDescription());
        return save(game);

    }

    @Override
    public Page<Game> findAll(Pageable pageable) {
        return gameRepository.findAll(pageable);
    }

    @Override
    @Transactional
    public void deleteById(Long id) {
        gameRepository.deleteById(id);

    }

}
