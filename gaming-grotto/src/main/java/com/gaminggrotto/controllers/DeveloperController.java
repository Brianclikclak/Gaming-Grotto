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

import com.gaminggrotto.models.Developer;
import com.gaminggrotto.services.DeveloperService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("/api/developer")
public class DeveloperController {

    private final DeveloperService developerService;

    @GetMapping
    public List<Developer> getAllDevelopers() {
        return developerService.findAll();
    }

    @GetMapping("/{id}")
    public Developer getDeveloperById(@PathVariable Long id) {
        return developerService.findById(id);
    }

    @GetMapping("/name/{name}")
    public Developer getDeveloperByName(@PathVariable String name) {
        return developerService.findByName(name);
    }

    @PostMapping(value = "add", consumes = "application/json")
    public ResponseEntity<Developer> createDeveloper(@RequestBody Developer developer) {
        Developer savedDeveloper = developerService.save(developer);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedDeveloper);
    }

    @PutMapping("/updated/{id}")
    public Developer updateDeveloper(@PathVariable Long id, @RequestBody Developer developerDetails) {
        return developerService.updateDeveloper(id, developerDetails);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteDeveloper(@PathVariable Long id) {
        developerService.deleteById(id);
        return ResponseEntity.ok("Developer deleted Successfully");
    }

}
