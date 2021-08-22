package br.pedro.movieflix.repositories;

import br.pedro.movieflix.entities.Genre;
import br.pedro.movieflix.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {
}
