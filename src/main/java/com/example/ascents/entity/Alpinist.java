package com.example.ascents.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "alpinists")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Alpinist {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "a_id")
    private Long aId;
    @Column(name = "a_name")
    private String aName;
    @Column(name = "a_adress")
    private String aAdress;
}
