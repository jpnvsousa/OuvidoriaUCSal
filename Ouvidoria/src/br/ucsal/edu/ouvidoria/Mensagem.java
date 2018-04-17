package br.ucsal.edu.ouvidoria;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class Mensagem {
	private String conteudo;
	private Usuario from;
	private LocalDateTime date;
	private StatusMensagem status;
	
	private static List<Mensagem> ListaMensagens = new ArrayList<>();
	
	public Mensagem() {
		this.date = LocalDateTime.now();
	}
	
	public StatusMensagem getStatus() {
		return status;
	}
	public void setStatus(StatusMensagem status) {
		this.status = status;
	}
	public static List<Mensagem> getListaMensagens() {
		return ListaMensagens;
	}
	
	public void adicionarMensagemNaLista(Mensagem mensagem) {
		ListaMensagens.add(mensagem);
	}
	
	public void removerMensagemDaLista(Mensagem mensagem) {
		ListaMensagens.remove(mensagem);
	}
	
	public Mensagem getMensagemDaLista(int posicao) {
		return ListaMensagens.get(posicao);
	}
	
	public String getConteudo() {
		return conteudo;
	}
	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}
	public Usuario getFrom() {
		return from;
	}
	public void setFrom(Usuario from) {
		this.from = from;
	}
	public LocalDateTime getDate() {
		return date;
	}
	public void setDate(LocalDateTime date) {
		this.date = date;
	}
	
	
}
