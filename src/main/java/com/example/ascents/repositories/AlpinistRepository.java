package com.example.ascents.repositories;

import com.example.ascents.entity.Alpinist;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AlpinistRepository extends JpaRepository<Alpinist, Long> {

}
