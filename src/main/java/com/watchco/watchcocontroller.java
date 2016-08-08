package com.watchco;
	
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.watchco.ProductModel.Product;
import com.watchco.ProductModel.ProductService;
import com.watchco.UserModel.UserService;
import com.watchco.UserRoleModel.UserRoleService;
import com.watchco.UserModel.User;


@Controller
public class watchcocontroller {
	
	@Autowired
	ProductService ps;
	
	@Autowired
	UserService us;
	
	@Autowired
	UserRoleService	urs;
	
	@Autowired
	ServletContext context;
	
	@RequestMapping(value="/")	
	public String home()
	{	
		urs.generateUserRoles();
		return "index";
	}
	@RequestMapping(value="/index")	
	public String index()
	{	
		return "index";
	}	
	@RequestMapping("/products") 
	 public ModelAndView abc() 
	 { 
		 
		 ModelAndView mav = new ModelAndView("products");
		 
        JSONArray jarr = new JSONArray();
		 
		 List<Product> list = ps.getAllProducts();
		 
		 for( Product p:list )
		 {
			 JSONObject jobj = new JSONObject();
			 
			 jobj.put("ProductID", p.getProductId());
			 jobj.put("ProductName", p.getProductName());
			 jobj.put("ProductPrice", p.getProductPrice());
			 jobj.put("ProductPrice", p.getProductPrice());
			 jobj.put("ProductImage", p.getProductImage());
			 
			 jarr.add(jobj);
		 }
		 
		 mav.addObject("data", jarr.toJSONString());
		 
		 return mav;
		 
	 }
	
	
	@RequestMapping(value="/signup")
	public ModelAndView signup()
	{
		 
	 ModelAndView mav = new ModelAndView("signup");
     mav.addObject("newuser",new User());	 
     	return mav;
	}
	
	@RequestMapping(value="/insertuser", method = RequestMethod.POST)
	public ModelAndView insertuser( @Valid @ModelAttribute ("newuser") User i , BindingResult bind)
	{
		ModelAndView mav = new ModelAndView("signup");
		
		System.out.println(i);
		
		if( bind.hasErrors() )
		{
			mav.addObject("newuser", i);
		}
		else
		{
			if( i.getPassword().equals(i.getCPassword()) )
			{
				List<User> list = us.getAllUsers();
				
				boolean usermatch= false;
				
				for( User u : list )
				{
					System.out.println(u.getUsername());
					System.out.println(i.getUsername());
					
					if( u.getUsername().equals(i.getUsername()) )
					{
						usermatch= true;
						break;
					}
				}
				
				if( usermatch == false )
				{
					us.insertUser(i);
					
					mav.addObject("newuser", new User());
					
					mav.addObject("success", "success");
				}	
				else
				{
					mav.addObject("newuser", i);
					
					mav.addObject("useralreadyexists", "useralreadyexists");
				}
			}
			else
			{	
				mav.addObject("newuser", i);
				
				mav.addObject("passwordmismatch", "passwordmismatch");
			}
				
		}
		
		return mav ;
	}
	
	
	@RequestMapping(value="/AddProduct", method = RequestMethod.GET)
	public ModelAndView AddProduct()
	{
		ModelAndView mav = new ModelAndView("AddProduct");
	    mav.addObject("newproduct",new Product());	 
	    return mav;
	}
		 
		 @RequestMapping(value="/viewproduct/{productID}")
			public ModelAndView addproduct1(@PathVariable("productID") int prodid)
			{
			 ModelAndView mav = new ModelAndView("viewproduct");
		     
			 System.out.println(prodid);
			 
			 Product p = ps.getProduct(prodid);
			 if(p != null)
			 {
				 mav.addObject("ProductName", p.getProductName()); 
				 mav.addObject("ProductDescription", p.getProductDescription()); 
				 mav.addObject("ProductCategory", p.getProductCategory()); 
				 mav.addObject("ProductPrice", p.getProductPrice()); 
				 mav.addObject("ProductQty", p.getProductQty()); 
				 mav.addObject("ProductImage", p.getProductImage()); 
				 
			 }
			 
		     	return mav;
			}

		 @RequestMapping(value="/updateproduct/{productID}")  	 
			public ModelAndView update(@PathVariable("productID") int prodid)
			{
			 ModelAndView mav = new ModelAndView("updateproduct");
			 
			 System.out.println(prodid);
			 
			 Product p = ps.getProduct(prodid);
		
			 mav.addObject("newproduct3", p);
			 
			 return mav;
			 
			}
		
			@RequestMapping(value="/updateproduct", method = RequestMethod.POST)  	 
			public String insertproduct1( @ModelAttribute( "newproduct3" ) Product p  )
			{
				
				try
			    {
					String path = context.getRealPath("/");
			        
			        System.out.println(path);
			        
			        File directory = null;
			        
			        //System.out.println(ps.getProductWithMaxId());
			        
			        if (p.getProductFile().getContentType().contains("image"))
			        {
			            directory = new File(path + "\\resources\\images");
			            
			            System.out.println(directory);
			            
			            byte[] bytes = null;
			            File file = null;
			            bytes = p.getProductFile().getBytes();
			            
			            if (!directory.exists()) directory.mkdirs();
			            
			            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + p.getProductId() + ".jpg");
			            
			            System.out.println(file.getAbsolutePath());
			            
			            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
			            stream.write(bytes);
			            stream.close();

			        }
			        
			        p.setProductImage("resources/images/image_" + p.getProductId() + ".jpg");
			        
			        ps.updateProduct(p);
			    }
			    catch (Exception e)
			    {
			    	e.printStackTrace();
			    }
				
				return "redirect:products";
			}

			 

			@RequestMapping(value="/insertproduct", method = RequestMethod.POST)  	 
			public String insertproduct( @ModelAttribute( "newproduct" ) Product p  )
			{
				System.out.println( "Product Name: " + p.getProductName());
				
				ps.insertProduct( p );
				
				Product i1 = ps.getProductWithMaxId();
				
				System.out.println(i1.getProductId());
				
				try
			    {
					String path = context.getRealPath("/");
			        
			        System.out.println(path);
			        
			        File directory = null;
			        
			        //System.out.println(ps.getProductWithMaxId());
			        
			        if (p.getProductFile().getContentType().contains("image"))
			        {
			            directory = new File(path + "\\resources\\images");
			            
			            System.out.println(directory);
			            
			            byte[] bytes = null;
			            File file = null;
			            bytes = p.getProductFile().getBytes();
			            
			            if (!directory.exists()) directory.mkdirs();
			            
			            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + i1.getProductId() + ".jpg");
			            
			            System.out.println(file.getAbsolutePath());
			            
			            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
			            stream.write(bytes);
			            stream.close();

			        }
			        
			        i1.setProductImage("resources/images/image_" + i1.getProductId() + ".jpg");
			        
			        ps.updateProduct(i1);
			    }
			    catch (Exception e)
			    {
			    	e.printStackTrace();
			    }
				
				return "redirect:products";
			}
			

		 
		 @RequestMapping(value="/deleteproduct/{productID}")
			public String deleteproduct1(@PathVariable("productID") int prodid)
			{
			 
			 System.out.println(prodid);
			 
			 ps.deleteProduct(prodid);
			 return "redirect:http://localhost:8080/watchco/products";
			} 
		 
		 @RequestMapping(value="/loginpage" , method = RequestMethod.GET)
			public ModelAndView login() {
				
				ModelAndView mav = new ModelAndView("login");
				
				return mav ;
			}

		 
		 @RequestMapping(value="/logout", method = RequestMethod.GET)
			public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
			    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			    if (auth != null){    
			        
			    	System.out.println("In LogOut");
			    	new SecurityContextLogoutHandler().logout(request, response, auth);
			        
			        
			    }
			    
			    return "index";
			}
}	 
