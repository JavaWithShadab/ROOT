package filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import beans.Product;
import db.repo.ProductRepository;

@WebFilter(urlPatterns = { "/home/single.jsp" })
public class SinglePageFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		long productId = Long.parseLong(req.getParameter("id"));

		Product product = ProductRepository.findProduct(productId);

		req.setAttribute("product", product);

		chain.doFilter(req, resp);

	}

}
