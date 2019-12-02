package filters.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import beans.Product;
import beans.User;
import db.repo.ProductRepository;
import enums.Category;

@WebFilter(urlPatterns = { "/home/showMyAds.jsp" })
public class ShowMyAdsFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest httpReq = (HttpServletRequest) req;

		HttpSession session = httpReq.getSession(false);

		if (session != null) {

			User user = (User) session.getAttribute("User");

			if (user != null) {

				List<Product> userProducts = ProductRepository.getAllProduct(user.getId());

				req.setAttribute("userProducts", userProducts);
			}

			chain.doFilter(req, resp);

		} else {
			req.setAttribute("msg", "Login failed..");
			req.getRequestDispatcher("/signin.jsp").forward(req, resp);
		}

		req.setAttribute("categories", Category.values());

		chain.doFilter(req, resp);

	}
}
