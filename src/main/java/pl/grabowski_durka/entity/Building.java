package pl.grabowski_durka.entity;

import javax.persistence.*;

/**
 * @author Marcin
 */

@Entity
@Table(name = "buildings")

public class Building {
    @Id
    @GeneratedValue
    private Long id;

    @Column(name = "adres")
    private String adres;

    @Column(name = "area")
    private float area;

    @Column(name = "flat_count")
    private int flatCount;

}
