package tientran.com.dao;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tientran.com.model.Account;

public interface AccountDAO extends JpaRepository<Account, String> {

	Optional<Account> findByUsername(String username);

	@Query("SELECT o FROM Account o WHERE o.fullname LIKE ?1")
	Page<Account> findByKeywords(String keywords, Pageable pageable);

	@Query("SELECT o FROM Account o")
	Page<Account> findAll(Pageable pageable);

}
