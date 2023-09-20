package com.gaminggrotto.services;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.gaminggrotto.models.dto.RawgGame;

@Service
public class RawgService {
    private final RestTemplate restTemplate;

    public RawgService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<RawgGame> fetchGames() {
        String apiUrl = "https://api.rawg.io/api/games?key=376e19295edf49948e86dad1da853b22";
        ResponseEntity<RawgGame[]> responseEntity = restTemplate.getForEntity(apiUrl, RawgGame[].class);
        RawgGame[] rawgGamesArray = responseEntity.getBody();
        List<RawgGame> rawgGames = List.of(rawgGamesArray);
        return rawgGames;
    }
}
