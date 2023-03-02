package com.academy.ecommerce.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
@Entity
@Table(name="addresses")
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String citta;
    private String provincia;
    private String via;
    private int nCiv;
    private int cap;
    @ManyToOne
    @JoinColumn(name = "id_customer")
    private Customer customer;

}
