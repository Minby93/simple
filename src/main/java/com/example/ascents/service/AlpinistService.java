package com.example.ascents.service;

import com.example.ascents.entity.Alpinist;
import com.example.ascents.repositories.AlpinistRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class AlpinistService {
    private final AlpinistRepository alpinistRepository;

    public List<Alpinist> listAlpinists() {
        return alpinistRepository.findAll();
    }

    public void saveAlpinist(Alpinist alpinist){
        alpinistRepository.save(alpinist);
    }

    public void deleteAlpinist(Long id) {
        alpinistRepository.deleteById(id);
    }

    public Alpinist getAlpinistById(Long id){
       return alpinistRepository.findById(id).orElse(null);
    }

}
