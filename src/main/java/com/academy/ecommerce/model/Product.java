package com.academy.ecommerce.model;

import jakarta.persistence.*;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String codice;
    private String nome;
    private String marca;
    private String categoria;
    private String descrizione;
    private Float costo;
    private String immagine;
}
