package filters.admin;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import beans.User;
import db.repo.UserRepository;

@WebFilter(urlPatterns = { "/admin/editUser.jsp" })
public class EditUserFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		long id = Long.parseLong(req.getParameter("id"));

		User user = UserRepository.findUser(id);

		req.setAttribute("user", user);

		chain.doFilter(req, resp);

	}

}
