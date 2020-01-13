package br.com.qintess.web.Questionario2.questionario.entidade;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Questionario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false, length = 200)
	private String tipoTrabalho;
	
	@Column(nullable = false, length = 200)
	private String atividadesExecuta;
	
	@Column(nullable = false, length = 200)
	private String conhecimentoOutraTecnologia;
	
	@Column(nullable = false, length = 200)
	private String formacaoAcademica;
	
	@Column(nullable = false, length = 200)
	private String certificacao;
	
	@Column(nullable = false, length = 200)
	private String tempoExperiencia;
	
	@Column(nullable = false, length = 200)
	private String idioma;
	
	@Column(nullable = false, length = 100)
	private String filho;
	
	@Column(nullable = true)
	private int quantidadeFilho;
	
	@Column(nullable = true, length = 100)
	private String idadeFilho;
	
	@Column(nullable = false, length = 200)
	private String restriçãoLocalTrabalho;
	
	@Column(nullable = false, length = 200)
	private String areaInteresseTrabalhar;
	
	@Column(nullable = false, length = 200)
	private String beneficiosDesejados;
	
	@Column(nullable = false, length = 200)
	private String temasInteresseConhecer;
	
	@Column (nullable = true, length = 200)
	private String interesseConhecerIdiomas;
	
	@Column (nullable = true, length = 200)
	private String interesseConhecerTecnologias;
	
	@Column (nullable = true, length = 200)
	private String interesseConhecerComportamental;
	
	@Column (nullable = true, length = 200)
	private String interesseConhecerOfftopic;
	
	@Column(nullable = false, length = 200)
	private String temasInteresseEnsinar;
	
	@Column (nullable = true, length = 200)
	private String interesseEnsinarIdiomas;
	
	@Column (nullable = true, length = 200)
	private String interesseEnsinarTecnologias;
	
	@Column (nullable = true, length = 200)
	private String interesseEnsinarComportamental;
	
	@Column (nullable = true, length = 200)
	private String interesseEnsinarOfftopic;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTipoTrabalho() {
		return tipoTrabalho;
	}

	public void setTipoTrabalho(String tipoTrabalho) {
		this.tipoTrabalho = tipoTrabalho;
	}

	public String getAtividadesExecuta() {
		return atividadesExecuta;
	}

	public void setAtividadesExecuta(String atividadesExecuta) {
		this.atividadesExecuta = atividadesExecuta;
	}

	public String getConhecimentoOutraTecnologia() {
		return conhecimentoOutraTecnologia;
	}

	public void setConhecimentoOutraTecnologia(String conhecimentoOutraTecnologia) {
		this.conhecimentoOutraTecnologia = conhecimentoOutraTecnologia;
	}

	public String getFormacaoAcademica() {
		return formacaoAcademica;
	}

	public void setFormacaoAcademica(String formacaoAcademica) {
		this.formacaoAcademica = formacaoAcademica;
	}

	public String getCertificacao() {
		return certificacao;
	}

	public void setCertificacao(String certificacao) {
		this.certificacao = certificacao;
	}

	public String getTempoExperiencia() {
		return tempoExperiencia;
	}

	public void setTempoExperiencia(String tempoExperiencia) {
		this.tempoExperiencia = tempoExperiencia;
	}

	public String getIdioma() {
		return idioma;
	}

	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}

	public String getFilho() {
		return filho;
	}

	public void setFilho(String filho) {
		this.filho = filho;
	}
	

	public int getQuantidadeFilho() {
		return quantidadeFilho;
	}

	public void setQuantidadeFilho(int quantidadeFilho) {
		this.quantidadeFilho = quantidadeFilho;
	}

	public String getIdadeFilho() {
		return idadeFilho;
	}

	public void setIdadeFilho(String idadeFilho) {
		this.idadeFilho = idadeFilho;
	}

	public String getRestriçãoLocalTrabalho() {
		return restriçãoLocalTrabalho;
	}

	public void setRestriçãoLocalTrabalho(String restriçãoLocalTrabalho) {
		this.restriçãoLocalTrabalho = restriçãoLocalTrabalho;
	}

	public String getAreaInteresseTrabalhar() {
		return areaInteresseTrabalhar;
	}

	public void setAreaInteresseTrabalhar(String areaInteresseTrabalhar) {
		this.areaInteresseTrabalhar = areaInteresseTrabalhar;
	}

	public String getBeneficiosDesejados() {
		return beneficiosDesejados;
	}

	public void setBeneficiosDesejados(String beneficiosDesejados) {
		this.beneficiosDesejados = beneficiosDesejados;
	}

	public String getTemasInteresseConhecer() {
		return temasInteresseConhecer;
	}

	public void setTemasInteresseConhecer(String temasInteresseConhecer) {
		this.temasInteresseConhecer = temasInteresseConhecer;
	}

	public String getTemasInteresseEnsinar() {
		return temasInteresseEnsinar;
	}

	public void setTemasInteresseEnsinar(String temasInteresseEnsinar) {
		this.temasInteresseEnsinar = temasInteresseEnsinar;
	}

	public String getInteresseConhecerIdiomas() {
		return interesseConhecerIdiomas;
	}

	public void setInteresseConhecerIdiomas(String interesseConhecerIdiomas) {
		this.interesseConhecerIdiomas = interesseConhecerIdiomas;
	}

	public String getInteresseConhecerTecnologias() {
		return interesseConhecerTecnologias;
	}

	public void setInteresseConhecerTecnologias(String interesseConhecerTecnologias) {
		this.interesseConhecerTecnologias = interesseConhecerTecnologias;
	}

	public String getInteresseConhecerComportamental() {
		return interesseConhecerComportamental;
	}

	public void setInteresseConhecerComportamental(String interesseConhecerComportamental) {
		this.interesseConhecerComportamental = interesseConhecerComportamental;
	}

	public String getInteresseConhecerOfftopic() {
		return interesseConhecerOfftopic;
	}

	public void setInteresseConhecerOfftopic(String interesseConhecerOfftopic) {
		this.interesseConhecerOfftopic = interesseConhecerOfftopic;
	}

	public String getInteresseEnsinarIdiomas() {
		return interesseEnsinarIdiomas;
	}

	public void setInteresseEnsinarIdiomas(String interesseEnsinarIdiomas) {
		this.interesseEnsinarIdiomas = interesseEnsinarIdiomas;
	}

	public String getInteresseEnsinarTecnologias() {
		return interesseEnsinarTecnologias;
	}

	public void setInteresseEnsinarTecnologias(String interesseEnsinarTecnologias) {
		this.interesseEnsinarTecnologias = interesseEnsinarTecnologias;
	}

	public String getInteresseEnsinarComportamental() {
		return interesseEnsinarComportamental;
	}

	public void setInteresseEnsinarComportamental(String interesseEnsinarComportamental) {
		this.interesseEnsinarComportamental = interesseEnsinarComportamental;
	}

	public String getInteresseEnsinarOfftopic() {
		return interesseEnsinarOfftopic;
	}

	public void setInteresseEnsinarOfftopic(String interesseEnsinarOfftopic) {
		this.interesseEnsinarOfftopic = interesseEnsinarOfftopic;
	}
	
}
