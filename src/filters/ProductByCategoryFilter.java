package filters;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import beans.Product;
import db.repo.ProductRepository;

@WebFilter(urlPatterns = { "/home/products.jsp" })
public class ProductByCategoryFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		String category = req.getParameter("category");
		String location = req.getParameter("city");

		if (category != null & location != null) {

			List<Product> products = ProductRepository.getAllProductByCategoryAndLocation(category, location);

			req.setAttribute("products", products);
		}

		else if (category != null) {

			List<Product> products = ProductRepository.getAllProductByCategory(category);

			req.setAttribute("products", products);
		}

		else if (location != null) {

			List<Product> products = ProductRepository.getAllProductByLocation(location);

			req.setAttribute("products", products);
		}

		chain.doFilter(req, resp);

	}

}
