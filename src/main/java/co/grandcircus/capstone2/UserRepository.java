package co.grandcircus.capstone2;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer>{
	public Optional<User> findFirstByEmail(String email);
}
