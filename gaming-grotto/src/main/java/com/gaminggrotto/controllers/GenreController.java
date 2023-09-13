package com.gaminggrotto.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gaminggrotto.models.Genre;
import com.gaminggrotto.services.GenreService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("/api/genres")
public class GenreController {

    private GenreService genreService;

    @GetMapping()
    public List<Genre> getAllGenres() {
        return genreService.findAll();
    }
}
