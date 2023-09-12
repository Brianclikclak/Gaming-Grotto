package com.gaminggrotto.controllers;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gaminggrotto.models.Game;
import com.gaminggrotto.services.GameService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("api/games")
public class GameController {

    private final GameService gameService;

    @GetMapping
    public List<Game> getAllGames() {
        return gameService.findAll();
    }

    @GetMapping("/{id}")
    public Game getGameById(@PathVariable Long id) {
        return gameService.findById(id);
    }

    @GetMapping("title/{title}")
    public Game getGameByTitle(@PathVariable String title) {
        return gameService.findByTitle(title);
    }

    @GetMapping("/genre/{genreName}")
    public List<Game> getGamesByGenre(@PathVariable String genreName) {
        return gameService.findByGenre(genreName);
    }

    @PostMapping(value = "add", consumes = "application/json")
    public ResponseEntity<Game> createGame(@RequestBody Game game) {
        Game savedGame = gameService.save(game);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedGame);
    }

    @PutMapping("/update/{id}")
    public Game updatGame(@PathVariable Long id, @RequestBody Game gameDetails) {
        return gameService.updateGame(id, gameDetails);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteGame(@PathVariable Long id) {
        gameService.deleteById(id);
        return ResponseEntity.ok("Game deleted succesfully");
    }
}
