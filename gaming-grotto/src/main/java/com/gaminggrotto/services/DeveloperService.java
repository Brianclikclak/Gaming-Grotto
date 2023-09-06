package com.gaminggrotto.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.gaminggrotto.exception.DeveloperNotFoundException;
import com.gaminggrotto.models.Developer;
import com.gaminggrotto.repositories.DeveloperRepository;

import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class DeveloperService implements BaseService<Developer> {

    private final DeveloperRepository developerRepository;

    @Override
    public List<Developer> findAll() {
        return developerRepository.findAll();
    }

    @Override
    public Page<Developer> findAll(Pageable pageable) {
        return developerRepository.findAll(pageable);
    }

    @Override
    public Developer findById(Long id) {
        return developerRepository.findById(id)
                .orElseThrow(() -> new DeveloperNotFoundException("Developer not found whit id: " + id));
    }

    @Override
    @Transactional
    public Developer save(Developer developer) {
        return developerRepository.save(developer);
    }

    @Transactional
    public Developer updateDeveloper(Long id, Developer developerDetails) {
        Developer developer = findById(id);
        developer.setName(developerDetails.getName());
        developer.setCountry(developerDetails.getCountry());
        developer.setDescription(developerDetails.getDescription());
        developer.setGames(developerDetails.getGames());
        developer.setWebsite_url(developerDetails.getWebsite_url());
        return save(developer);
    }

    @Override
    @Transactional
    public void deleteById(Long id) {
        Developer developerDeleted = findById(id);
        developerRepository.deleteById(developerDeleted.getId());
    }

}
