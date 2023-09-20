package com.gaminggrotto.models.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class RawgGame {

    private String title;
    private Integer releaseYear;
    private String description;
    private String image;
    private String back_image;
}
