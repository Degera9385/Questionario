package br.com.qintess.web.Questionario2.questionario.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.qintess.web.Questionario2.questionario.entidade.Questionario;

@Repository
public interface QuestionarioDao extends CrudRepository<Questionario, Integer>{
	
	@Query(value="select * from questionario order by id", nativeQuery=true)
	List<Questionario> buscaQuestionarioOrdenado();

}
