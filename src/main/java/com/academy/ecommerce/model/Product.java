package com.academy.ecommerce.model;

import jakarta.persistence.*;
import lombok.*;
import org.jetbrains.annotations.NotNull;

@Entity
@Table(name = "product")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    private String codice;
    @NotNull
    private String nome;
    @NotNull
    private String marca;
    @NotNull
    private String descrizione;
    @NotNull
    private Float costo;
}
