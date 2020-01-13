package br.com.qintess.web.Questionario2.questionario.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.qintess.web.Questionario2.questionario.dao.QuestionarioDao;
import br.com.qintess.web.Questionario2.questionario.entidade.Questionario;

@Controller
@RequestMapping("/questionario")
public class QuestionarioController {
	@Autowired
	private QuestionarioDao questionarioDao;
	
	@RequestMapping("")
	public String carrega(Model model) {
		
		model.addAttribute("questionarios", questionarioDao.buscaQuestionarioOrdenado());
		model.addAttribute("questionario", new Questionario());
		
		return "questionario";
		
	}
	
	@RequestMapping("/salva")
	public String salva(@ModelAttribute Questionario questionario) {
		
		questionarioDao.save(questionario);
		
		return "redirect:/";
		
	}
	
	@RequestMapping("/altera/{id}")
	public String carregaAltera (@PathVariable int id, Model model){
		
		model.addAttribute("questionarios", questionarioDao.buscaQuestionarioOrdenado());
		model.addAttribute("questionario", questionarioDao.findById(id).get());
		
		return "questionario";
		
	}
	
	@RequestMapping("/deleta/{id}")
	public String deleta(@PathVariable int id) {
		
		questionarioDao.deleteById(id);
		
		return "redirect:/questionario";
		
	}
	
	@RequestMapping("/cancela/{id}")
	public String cancela(@PathVariable int id) {
		
		questionarioDao.existsById(id);
		
		return "redirect:/questionario";
		
	}
	

}
