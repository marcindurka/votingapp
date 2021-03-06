package pl.votingapp.entity;

import lombok.*;
import javax.persistence.*;
import java.sql.Date;

@Data
@Entity
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "votings", schema = "public")

public class Voting {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "buildindId")
    private Long buildingId;

    @Column(name = "adres")
    private String adres;

    @Column(name = "date")
    private Date date;

    @Column(name = "resolution")
    private String resolution;

    @Column(name = "title")
    private String title;

    @Column(name = "content")
    private String content;

    @Column(name = "votes_for")
    private float votesFor;

    @Column(name = "votes_against")
    private float votesAgainst;

    @Column(name = "votes_abstain")
    private float votesAbstain;

    @Column(name = "moderator")
    private String moderator;

    @Column(name = "secretary")
    private String secretary;

    @Column(name = "result")
    private boolean result;

    @Column(name = "result_content")
    private String resultContent;
}
