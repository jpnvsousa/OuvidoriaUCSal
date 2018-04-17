package br.ucsal.edu.ouvidoria;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		if(!login.trim().equals("") && !senha.trim().equals("")) {
			
			Usuario usuario = new Usuario();
			usuario.setLogin(login);
			usuario.setSenha(senha);
			request.getSession().setAttribute("usuario", usuario);

			if(login.equals("admin") && senha.equals("admin")) {
				usuario.setTipoUsuario(TipoUsuario.ADMIN);
				response.sendRedirect("admin.jsp");
			}else {
				usuario.setTipoUsuario(TipoUsuario.ALUNO);
				response.sendRedirect("user.jsp");
			}
		}else {
			response.sendRedirect("login.jsp");
		}
		
	}

}
