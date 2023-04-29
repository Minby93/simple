package com.example.ascents.repositories;

import com.example.ascents.entity.Alpinist;
import org.springframework.data.jpa.repository.JpaRepository;



public interface AlpinistRepository extends JpaRepository<Alpinist, Long> {

}
