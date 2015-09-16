package be.vdab.dao;

import java.util.List;

import be.vdab.entities.Brouwer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BrouwerDAO extends JpaRepository<Brouwer, Long> {
	
	List <Brouwer> findByNaamStartsWithOrderByNaamAsc(String beginNaam);

}
