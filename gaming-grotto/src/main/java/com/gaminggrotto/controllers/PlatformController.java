package com.gaminggrotto.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gaminggrotto.exception.PlatformNotFoundException;
import com.gaminggrotto.models.Platform;
import com.gaminggrotto.repositories.PlatformRepository;

@RestController
@RequestMapping("api//platforms")
public class PlatformController {

    private PlatformRepository platformRepository;

    @GetMapping
    public List<Platform> getAllPlatforms() {
        return platformRepository.findAll();
    }

    @GetMapping("/{id}")
    public Platform getPlatformById(@PathVariable Long id) {
        return platformRepository.findById(id)
                .orElseThrow(() -> new PlatformNotFoundException("Platform not found by id " + id));
    }

    @PostMapping(value = "add", consumes = "application/json")
    public Platform createPlatform(@RequestBody Platform platform) {
        return platformRepository.save(platform);
    }

    @PutMapping("/{id}")
    public Platform updatePlatform(@PathVariable Long id, @RequestBody Platform updatedPlatform) {
        return platformRepository.findById(id)
                .map(platform -> {
                    platform.setName(updatedPlatform.getName());
                    // Puedes actualizar otras propiedades si es necesario
                    return platformRepository.save(platform);
                })
                .orElseThrow(() -> new PlatformNotFoundException("Platform not found by id " + id));
    }

    @DeleteMapping("/{id}")
    public void deletePlatform(@PathVariable Long id) {
        platformRepository.deleteById(id);
    }
}
