package com.gaminggrotto.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gaminggrotto.exception.GenreNotFoundException;
import com.gaminggrotto.models.Genre;
import com.gaminggrotto.repositories.GenreRepository;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class GenreService {

    private final GenreRepository genreRepository;

    public Genre findByTitle(String name) {
        return genreRepository.findByName(name)
                .orElseThrow(() -> new GenreNotFoundException("Genre not found whit title: " + name));
    }

    public Genre findById(Long id) {
        return genreRepository.findById(id)
                .orElseThrow(() -> new GenreNotFoundException("Genre not found whit id: " + id));
    }

    public List<Genre> findAll() {
        return genreRepository.findAll();
    }

}
