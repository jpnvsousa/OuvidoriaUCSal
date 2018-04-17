package br.ucsal.edu.ouvidoria;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MensagemController
 */
@WebServlet("/MensagemController")
public class MensagemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public MensagemController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mensagemTextArea = request.getParameter("mensagemTextArea");
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
		Mensagem mensagem = new Mensagem();
		mensagem.setFrom(usuario);
		mensagem.setConteudo(mensagemTextArea);
		mensagem.setStatus(StatusMensagem.PENDENTE_NAO_LIDA);
		mensagem.adicionarMensagemNaLista(mensagem);
		request.getSession().setAttribute("mensagemJS", true);
		request.getServletContext().setAttribute("listaMensagens", Mensagem.getListaMensagens());
		response.sendRedirect("user.jsp");
	}

}
