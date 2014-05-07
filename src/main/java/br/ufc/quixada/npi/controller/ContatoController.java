package br.ufc.quixada.npi.controller;

import javax.inject.Inject;
import javax.inject.Named;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.ufc.quixada.npi.service.ContatoService;

@Named
@RequestMapping("/")
public class ContatoController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Inject
	private ContatoService cs;
 
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String listarContatos(ModelMap model) {
		cs.insere();
		model.addAttribute("contatos", cs.findAll());
		return "contato/listar_contatos";
	}

	@RequestMapping(value="/hello", method = RequestMethod.GET)
	public String hello(ModelMap model) {
		model.addAttribute("nome", "João");
		return "contato/ola";
	}

	@RequestMapping(value="/form", method = RequestMethod.GET)
	public String form() {
		return "contato/form";
	}
	
	@RequestMapping(value="/processa", method = RequestMethod.GET)
	public @ResponseBody String processa() {
		log.info("okokokokok");
		return "ok";
	}
	
	
	
}
