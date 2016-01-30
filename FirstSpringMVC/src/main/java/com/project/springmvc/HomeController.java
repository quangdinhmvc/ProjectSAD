package com.project.springmvc;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.DAO.productDetailDAO;
import com.sad.entites.Productdetail;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session) {
		 productDetailDAO productDAO= new productDetailDAO();
		 List<Productdetail> productdetail=productDAO.getProduct();
		 session.setAttribute("BRAND",productdetail);
		
		return "home";
	}

	@RequestMapping(value = "/compare", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {

		return "compare";
	}

	@RequestMapping(value = "/searchBrand", method = RequestMethod.GET)
	public String search(HttpSession session,
			@RequestParam("searchBrand") String brand) {
		productDetailDAO productDAO = new productDetailDAO();
		List<Productdetail> productdetail = productDAO.searchBrand(brand);
		session.setAttribute("BRAND", productdetail);
		return "home";
	}

	@RequestMapping(value = "/addcompare", method = RequestMethod.GET)
	public String addcompare(HttpSession session,
			@RequestParam("searchName") String name) {
		productDetailDAO productDAO = new productDetailDAO();
		List<Productdetail> listCompare = new ArrayList<Productdetail>();
		if (session.getAttribute("ADDCOMPARE") == null) {
			session.setAttribute("ADDCOMPARE", listCompare);
		} else {
			listCompare = (List<Productdetail>) session.getAttribute("ADDCOMPARE");
		}
		Productdetail productdetail = productDAO.searchName(name);
		if (listCompare.size() == 4) {
			listCompare.remove(listCompare.size() - 1);
			listCompare.add(productdetail);
		} else {

			listCompare.add(productdetail);

		}
		session.setAttribute("ADDCOMPARE", listCompare);
		return "home";
	}

	@RequestMapping(value = "/deletecompare", method = RequestMethod.GET)
	public String deletecompare(HttpSession session,
			@RequestParam("location") int location) {
		productDetailDAO productDAO = new productDetailDAO();
		List<Productdetail> listCompare = new ArrayList<Productdetail>();
			listCompare = (List<Productdetail>) session.getAttribute("ADDCOMPARE");
			listCompare.remove(location);
		session.setAttribute("ADDCOMPARE", listCompare);
		return "home";
	}
	
	@RequestMapping(value = "/seecompare", method = RequestMethod.GET)
	public String seecompare(HttpSession session) {
		
		return "compare";
	}

}
