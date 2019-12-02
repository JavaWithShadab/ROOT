package filters.admin;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import db.repo.ProductRepository;

@WebFilter(urlPatterns = { "/admin/showAds.jsp" })
public class ShowPostsFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		String idStr = req.getParameter("id");
		String userIdStr = req.getParameter("user_id");

		if (idStr != null) {
			long id = Long.parseLong(idStr);
			ProductRepository.deleteProduct(id);
		}

		else if (userIdStr != null) {
			long userId = Long.parseLong(userIdStr);
			req.setAttribute("posts", ProductRepository.getAllProduct(userId));
		} else {
			req.setAttribute("posts", ProductRepository.getAllProduct());
		}

		chain.doFilter(req, resp);

	}

}
