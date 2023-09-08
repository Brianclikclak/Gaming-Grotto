package com.gaminggrotto.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gaminggrotto.exception.PlatformNotFoundException;
import com.gaminggrotto.models.Game;
import com.gaminggrotto.models.Platform;
import com.gaminggrotto.repositories.PlatformRepository;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class PlatformService {

    private final PlatformRepository platformRepository;

    public List<Game> getGamesByPlatform(String PlatformName) {
        Platform platform = platformRepository.findByName(PlatformName)
                .orElseThrow(() -> new PlatformNotFoundException("Platform not found by name " + PlatformName));
        return platform.getGames();
    }
}
