package com.example.ascents.repositories;

import com.example.ascents.entity.Alpinist;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;


public interface AlpinistRepository extends JpaRepository<Alpinist, Long> {


}
