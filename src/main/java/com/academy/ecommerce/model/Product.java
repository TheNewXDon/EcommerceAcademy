package com.academy.ecommerce.model;

import jakarta.persistence.*;
import lombok.*;
import org.jetbrains.annotations.NotNull;
import java.text.DecimalFormat;

@Entity
@Table(name = "products")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Products {
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
    private Float[] costo;
}
