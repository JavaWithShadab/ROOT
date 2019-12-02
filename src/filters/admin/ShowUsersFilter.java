package filters.admin;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import db.repo.UserRepository;

@WebFilter(urlPatterns = { "/admin/showUsers.jsp" })
public class ShowUsersFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		String idStr = req.getParameter("id");
		if (idStr != null) {
			long id = Long.parseLong(idStr);
			UserRepository.deleteUser(id);
		}

		req.setAttribute("users", UserRepository.getAllUser());

		chain.doFilter(req, resp);

	}

}
