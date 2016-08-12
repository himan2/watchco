package com.watchco;
	
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;

import com.watchco.CartModel.Cart;
import com.watchco.CartModel.CartService;
import com.watchco.ProductModel.Product;
import com.watchco.ProductModel.ProductService;
import com.watchco.UserModel.UserService;
import com.watchco.UserRoleModel.UserRoleService;
import com.watchco.UserModel.User;

@CrossOrigin(origins = "http://localhost:8080", maxAge = 3600)
@RestController
public class RESTwatchcocontroller {
	
	@Autowired
	ProductService ps;
	
	@Autowired
	UserService us;
	
	@Autowired
	UserRoleService	urs;
	
	@Autowired
	ServletContext context;
	
	@Autowired
	CartService cs;
	
		
	@CrossOrigin
    @RequestMapping(value = "/flows/fetchAllItems/", method = RequestMethod.POST)
    public ResponseEntity<String> fetchAllItems(HttpServletRequest request, HttpServletResponse response, UriComponentsBuilder ucBuilder) {
        
		List<Cart> list = cs.getAllProducts();
		
		JSONArray jarr = new JSONArray();
		
		String user = "";
		
		System.out.println("In Fetch All Items");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	user = auth.getName();
	    }
		
		for( Cart item:list )
		{
			
			if( item.getUserID().equals(user) )
			{
				JSONObject jobj = new JSONObject();
				
				jobj.put("ProductID", item.getProductID() );
				jobj.put("ProductName", item.getName() );
				jobj.put("ProductPrice", item.getPrice() );
				
				System.out.println("PID: "+item.getProductID());
				
				Product p = ps.getProduct( Integer.parseInt(item.getProductID()) );
				
				/*test when product not found*/
				
				if( p == null || p.getProductImage() == null )
					jobj.put("ProductImage", "");
				else
					jobj.put("ProductImage", p.getProductImage());
				
				
				jobj.put("ProductQty", item.getQty());
				 
				jarr.add(jobj);
			}
			
		 }
		 
		System.out.println(jarr);
		
        return new ResponseEntity<String>(jarr.toString(), HttpStatus.CREATED);
    }
	
}