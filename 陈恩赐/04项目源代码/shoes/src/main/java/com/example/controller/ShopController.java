package com.example.controller;


import io.lettuce.core.RedisFuture;
import io.lettuce.core.api.async.RedisAsyncCommands;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Manager;
import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.lettuce.RedisCli;
import com.example.mapper.ProductMapper;
import com.example.mapper.CartMapper;
import com.example.mapper.ManagerMapper;
import com.example.mapper.ProductMapper;
import com.example.mapper.UserinfoMapper;
import com.example.model.Author;
import com.example.model.Cart;
import com.example.model.Cart;
import com.example.model.Userinfo;
import com.example.model.Userinfo;
import com.example.model.Product;
import com.example.model.Userinfo;




@Controller
public class ShopController {
	
	
	Logger logger = LoggerFactory.getLogger(ShopController.class);
	@Autowired
	ProductMapper productMapper;
	@Autowired
	UserinfoMapper userinfoMapper;
	@Autowired
	CartMapper cartMapper;
	@Autowired
	ManagerMapper managerMapper;
	
	
	@GetMapping("/checkout")
	public String checkout(){
		return "checkout";
	}
	
	@GetMapping("/login")
	public String login(){
		return "login";
	}
	

	
	@GetMapping("/register")
	public String register(){
		return "register";
	}
	
	@GetMapping("/shop")
	public String shop(Model model, HttpServletRequest request){
		
		model.addAttribute("goods",productMapper.findAllProduct() );
		return "shop";
	}
	@GetMapping("/single")
	public String single(){
		return "single";
	}
	
	@GetMapping("/add")
	public String add(){
		return "admin/add";
	}
	@GetMapping("/manage_show")
	public String manage_show(Model model) throws Exception{
		
		logger.debug("----------runing.........-------------------");
		List<Product> Products = null;
		Products = readFromRedis();
		if(Products.size()==0){
			logger.debug("----------read from database-------------------");
			Products = productMapper.findAllProduct() ;
			writeToRedis(Products);
		}
		
		model.addAttribute("goods",Products);
		
		
		return "admin/manage_show";
	}
	
	
	//redis缓存
	//客户端的代码
	private List<Product> readFromRedis() throws Exception {
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
	
		final List<Product> Products = new ArrayList();
		RedisFuture<List<String>> futureKeys = asyncCommands.keys("Product*");
		
		List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
		
		if(keys.size()==0) return Products;
		
		for(String key: keys){
			RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
			Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
			Product Product = new Product(); 
			Product.setProductid(Integer.valueOf(map.get("id")));
			Product.setPrice(Float.valueOf(map.get("price")));
			Product.setPname(map.get("name"));
			Product.setPdescribe( map.get("desc"));
			Products.add(Product);
		}
		logger.debug("----------read from redis-------------------");
		return Products;
	}

	private void writeToRedis(List<Product> Products) {
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
		for(Product auth: Products){
			Map<String, String> map = new HashMap();
			map.put("id", String.valueOf(auth.getProductid()));
			map.put("name", auth.getPname());
			map.put("desc", auth.getPdescribe());
			map.put("price", String.valueOf(auth.getPrice()));
			asyncCommands.hmset("Product:"+auth.getProductid(), map);
			
		}
		
		
	}
	
	
	
	@GetMapping("/manage")
	public String manage(){
		return "admin/manage";
	}
	
	@GetMapping("/aindex")
	public String index(){
		return "admin/index";
	}
	
	@GetMapping("/adoLogin")
	public String doAdminLogin(HttpSession session, HttpServletRequest request, HttpServletResponse response,Model model ){
		String account = request.getParameter("account");
		String pwd = request.getParameter("pwd");
		System.out.println(account);
		System.out.println(pwd);
		com.example.model.Manager mgr=managerMapper.loginManager(account, pwd);
		System.out.println("**************************");
		System.out.println(mgr);
		
		
		if(mgr!=null){
			session.setAttribute("account", mgr.getAccount());
			session.setAttribute("userid",mgr.getPwd());
			return "admin/manage";
			
		}else{
			
			session.setAttribute("tip2", "用户名或密码错误");
			return "admin/index";
		}
	}
	
	@GetMapping("/adoUpdatePwd")
	public String doAdminUpdate(HttpSession session, HttpServletRequest request, HttpServletResponse response ){
		HttpSession se = request.getSession();
		
		String account = (String) se.getAttribute("account");
		String pwd = request.getParameter("pwd");
		System.out.println("---------------");
		System.out.println(account);
		System.out.println(pwd);
		int i =managerMapper.updatePwd(pwd, account);
		System.out.println("**************************");
		System.out.println(i);
		
		
		if(i==1){
			return "admin/manage";
			
		}else{
			
			session.setAttribute("tip2", "用户名或密码错误");
			return "admin/index";
		}
	}
	
	
	
	@GetMapping("/aloginOut")
	public String loginOut(HttpServletRequest request){
		HttpSession se = request.getSession();
		se.removeAttribute("account");
		return "admin/index";
	}
	
	@GetMapping("/user_show")
	public String user_show(Model model) throws Exception{
		
		
		logger.debug("----------runing.........-------------------");
		List<Userinfo> Userinfos = null;
		Userinfos = UserreadFromRedis();
		if(Userinfos.size()==0){
			logger.debug("----------read from database-------------------");
			Userinfos =  userinfoMapper.findAllUser();
			UserwriteToRedis(Userinfos);
		}
		model.addAttribute("goods",Userinfos);
		return "admin/user_show";
	}
	
	
	
	
	
	
	//客户端的代码
		private List<Userinfo> UserreadFromRedis() throws Exception {
			RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
			final List<Userinfo> Userinfos = new ArrayList();
			RedisFuture<List<String>> futureKeys = asyncCommands.keys("Userinfo*");
			
			List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
			
			if(keys.size()==0) return Userinfos;
			
			for(String key: keys){
				RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
				Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
				Userinfo Userinfo = new Userinfo(); 
				Userinfo.setUserid(Integer.valueOf(map.get("userid")));
				Userinfo.setAccount(map.get("account") );
				Userinfo.setTel( map.get("tel") );
				Userinfo.setEmail(map.get("email"));
				Userinfos.add(Userinfo);
			}
			logger.debug("----------read from redis-------------------");
			return Userinfos;
		}

		private void UserwriteToRedis(List<Userinfo> Userinfos) {
			RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
			
			for(Userinfo auth: Userinfos){
				Map<String, String> map = new HashMap();
				map.put("userid", String.valueOf(auth.getUserid()));
				map.put("account", auth.getAccount());
				map.put("tel", auth.getTel());
				map.put("email",auth.getEmail() );
				asyncCommands.hmset("Userinfo:"+auth.getUserid(), map);
				
			}
			
			
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping("/adoUserSearch")
	public String user_showSearch(Model model, HttpServletRequest request){
		String name = request.getParameter("uname");
		String uname = "%"+ name +"%";
		model.addAttribute("goods",userinfoMapper.doSearchByName(uname));
		return "admin/user_show";
	}
	
	@GetMapping("/doUserDelete")
	public String userDel(Model model, HttpServletRequest request){
		String name = request.getParameter("userid");
		int userid =  Integer.parseInt(name);
		int i =userinfoMapper.doUserDel(userid);
		System.out.println("------------");
		System.out.println(i);
		if(i==1){
			model.addAttribute("goods",userinfoMapper.findAllUser());
		}

		return "admin/user_show";
	}
	
	@GetMapping("/adoSearch")
	public String doSearch(Model model , HttpServletRequest request){
		String name = request.getParameter("pname");
		String pname = "%" +name +"%";
		model.addAttribute("goods", productMapper.doSearchProduct(pname));
		
		return "admin/manage_show";
	}
	
	@GetMapping("/doDelete")
	public String doDelete(Model model , HttpServletRequest request){
		String name = request.getParameter("productid");
		int productid = Integer.parseInt(name);
		System.out.println("******************");
		System.out.println(productid);
		int result_cart = 0;
		int result_product = 0;
		
		
			result_product  = productMapper.deletePro(productid);
			System.out.println("---------");
			System.out.println(result_product);
			if(result_product ==1){
				model.addAttribute("goods", productMapper.findAllProduct());
			
		}
		
		
		
		return "admin/manage_show";
	}
	
	
	@GetMapping("/adoAdd")
	public String doAdd(Model model,HttpServletRequest request){
		String name = request.getParameter("pname");
		String typeid=request.getParameter("ptypeid");
		String pmodel = request.getParameter("pmodel");
		String pdescripe = request.getParameter("pdescribe");
		float price = Float.parseFloat(request.getParameter("price"));
		String picture = request.getParameter("picture");
		int result = productMapper.doAdd(price, name, pmodel, typeid, pdescripe, picture);
		if(result == 1){
			HttpSession se = request.getSession();
			se.setAttribute("tip_add", "添加成功");
		}else{
			System.out.println("添加失败");
		}
		return "admin/add";	
	}
	
	
	@GetMapping("/checkout-1")
	
		public String checkout1(Model model, HttpServletRequest request) throws Exception{
			
		logger.debug("----------runing.........-------------------");
		List<Cart> authors = null;
		authors = CartreadFromRedis();
//		if(authors.size()==0){
//			logger.debug("----------read from database-------------------");
//			authors = cartMapper.findUserPro(userid);
//			CartwriteToRedis(authors);
//		}
//		
		
		
		
		
			int userid  ;
			HttpSession se = request.getSession();
			se.removeAttribute("tip_cart");
			se.removeAttribute("tip_cart_delete");
			if(se.getAttribute("userid")!=null){
				userid= (int)se.getAttribute("userid");
				if(authors.size()==0){
					logger.debug("----------read from database-------------------");
					authors = cartMapper.findUserPro(userid);
					CartwriteToRedis(authors);
				}
				model.addAttribute("goods",cartMapper.findUserPro(userid));
			}else{
				userid = 0;
				se.setAttribute("tip_cart", "购物车为空，前往购物");
			}
			
		return "checkout-1";
	}
	
	
	
	
	
	
	//客户端的代码
		private List<Cart> CartreadFromRedis() throws Exception {
			RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
			final List<Cart> Carts = new ArrayList();
			RedisFuture<List<String>> futureKeys = asyncCommands.keys("Cart*");
			
			List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
			
			if(keys.size()==0) return Carts;
			
			for(String key: keys){
				RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
				Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
				Cart Cart = new Cart(); 
				Cart.setCartid( Integer.valueOf(map.get("cartid")) );
				Cart.setUserid(Integer.valueOf(map.get("userid")));
				Cart.setProductid(Integer.valueOf(map.get("productid")));
				Cart.setPname( map.get("pname") );
				Cart.setPrice(Float.valueOf(map.get("price")));
				Cart.setPnum(Integer.valueOf(map.get("pnum")));
				Cart.setPicture( map.get("picture") );

				Cart.setPrice_total(Float.valueOf(map.get("price_total")));
				Carts.add(Cart);
			}
			logger.debug("----------read from redis-------------------");
			return Carts;
		}

		private void CartwriteToRedis(List<Cart> Carts) {
			RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
			
			for(Cart auth: Carts){
				Map<String, String> map = new HashMap();
				map.put("cartid", String.valueOf(auth.getCartid()));
				map.put("userid", String.valueOf(auth.getUserid()));
				map.put("productid", String.valueOf(auth.getProductid()));
				map.put("pname", auth.getPname());
				map.put("price", String.valueOf(auth.getPrice()));
				map.put("pnum", String.valueOf(auth.getPnum()));
				map.put("picture", auth.getPicture());

				map.put("price_total", String.valueOf(auth.getPrice_total()));



				asyncCommands.hmset("Cart:"+auth.getCartid(), map);
				
			}
			
			
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping("/shop/demo")
	public String demo(){
		return "demo";
	}
	
	@GetMapping("/shop/demo1")
	public String demo1(){
		return "demo1";
	}
	
	@GetMapping("/shop/demo2")
	public String demo2(){
		return "demo2";
	}
	
	@GetMapping("/shop/manager")
	public String manager(){
		return "manager";
	}
	
	

	
	@GetMapping(value="/doSort")
	public String findAllProductSort(Model model,@RequestParam String type,@RequestParam String way){
		String ptype ="%"+type+ "%" ;
		switch(way){
			case "desc":
				model.addAttribute("goods",productMapper.doSearchAllProductSort(ptype) );
				break;
			case "asc":
				model.addAttribute("goods",productMapper.doSearchAllProductSortAsc(ptype) );
		}
		
		return "shop";
	}
	
	@GetMapping(value="/index")
	public String findAllProduct(Model model,HttpServletRequest request){
 
	
		int pagestart = 0;
		int pagesize = 3;
		String page = request.getParameter("page");
		String size = request.getParameter("pagesize");
		if(page!=null){
			if("".equals(page)){
				pagestart = 0;
			}else{
				pagestart = Integer.parseInt(page);
			}
		}else{
			pagestart = 0;
		}
		
		if(size!=null)
		{
			pagesize = Integer.parseInt(size);
		}else{
			pagesize = 3;
		}


		 HttpSession session = request.getSession();
		 session.setAttribute("page", pagestart);
		 session.setAttribute("pageSize", pagesize);
//		 session.setAttribute("totalPage", totalPage);
//		 session.setAttribute("total", total);

			
			if(session.getAttribute("account")!=null){
				session.setAttribute("tip1", (String)session.getAttribute("account"));
			}else{
				session.setAttribute("tip1", "未登录");
			}
			session.setAttribute("tip2", "");
			session.setAttribute("tip3", "");
		
		model.addAttribute("goods",productMapper.doAllSearchByPageAsc(pagestart, pagesize));
		return "index";
	}
	

	
	@GetMapping(value="/doSearchByType")

	public String findTypeProduct(Model model,@RequestParam String type){

		String ptype ="%"+type+ "%" ;
		model.addAttribute("goods",productMapper.doSearchProductByType(ptype) );
		return "shop";
	}
	
	
	
	
	
	
	@PostMapping(value="/doSearch")

	public String doSearchProduct(Model model,@RequestParam String name,HttpSession session, HttpServletRequest request, HttpServletResponse response){
		String pname =  "%" +name +"%";
		System.out.println(name);
		model.addAttribute("goods",productMapper.doSearchProduct(pname) );
		return "shop";
	}
	
	
	
	
	
	@PostMapping(value="/dologin")

	public String doLogin(@Param("account") String account, @Param("pwd") String pwd,
			HttpSession session, HttpServletRequest request, HttpServletResponse response,Model model ){
		
		System.out.println(account);
		System.out.println(pwd);
		System.out.println("---------------");
		Userinfo user=userinfoMapper.loginUser(account, pwd);
		System.out.println("**************************");
		System.out.println(user);
		
		
		if(user!=null){
			session.setAttribute("account", user.getAccount());
			session.setAttribute("userid",user.getUserid());
		    session.setAttribute("tip1",user.getAccount());
			return "index";
			
		}else{
			
			session.setAttribute("tip2", "用户名或密码错误");
			return "login";
		}
	}
	
	
@PostMapping(value="/reg")	
	
	public String reg(@Param("account") String account, @Param("pwd") String pwd,@Param("sex") String sex,@Param("email") String email,@Param("tel") String tel,
			HttpSession session, HttpServletRequest request, HttpServletResponse response){
			
		
		
			Userinfo usered=userinfoMapper.loginUsed(account);
			if(usered!=null){
				session.setAttribute("tip3", "用户名已注册过，不能再注册");
				return "register";
			}else{
			Userinfo user=new Userinfo();
			user.setAccount(account);
			user.setEmail(email);
			user.setPwd(pwd);
			user.setSex(sex);
			user.setTel(tel);
			int i=userinfoMapper.insertUserinfo(user);
			
			if(i==1){
				session.setAttribute("tip2", "注册成功");
				return "login";
			}else{
				session.setAttribute("tip3", "注册失败");
				return "register";
			}
			}
	}
			
			
			
			@GetMapping(value="/update")	
			
			public String update(HttpSession session, HttpServletRequest request, HttpServletResponse response,Model model){
			    int userid=-1;
			    if(session.getAttribute("userid")!=null){
			    	userid=(int)session.getAttribute("userid");
			    	System.out.println(userid);
			    }
			    String account=(String)session.getAttribute("account");
			    System.out.println(account);
			    if(account!=null){
			    	Userinfo user=userinfoMapper.loginUsed(account);
			    	model.addAttribute("good", user);
			    	return "update";
			    }
			    
		
				return "login";
			}
			
			
			@PostMapping(value="/doupdate")	
			public String doupdate(@Param("account") String account, @Param("pwd") String pwd,@Param("sex") String sex,@Param("email") String email,@Param("tel") String tel,HttpSession session,HttpServletRequest request, HttpServletResponse response,Model model){
				Userinfo user=new Userinfo();
				user.setAccount(account);
				user.setEmail(email);
				user.setPwd(pwd);
				user.setSex(sex);
				user.setTel(tel);
				int i=userinfoMapper.updateUser(user);
				if(i==1){
					session.setAttribute("tip5"," 修改成功");
				}else{
					session.setAttribute("tip5", "修改失败");
				}
				
				
				return "index";
			}

			
			@GetMapping("/loginout")
			public String loginout(Model model, HttpServletRequest request, HttpServletResponse response){
				request.getSession().invalidate();
				int pagestart = 0;
				int pagesize = 3;
				String page = request.getParameter("page");
				String size = request.getParameter("pagesize");
				if(page!=null){
					if("".equals(page)){
						pagestart = 0;
					}else{
						pagestart = Integer.parseInt(page);
					}
				}else{
					pagestart = 0;
				}
				
				if(size!=null)
				{
					pagesize = Integer.parseInt(size);
				}else{
					pagesize = 3;
				}


				 HttpSession session = request.getSession();
				 session.setAttribute("page", pagestart);
				 session.setAttribute("pageSize", pagesize);
//				 session.setAttribute("totalPage", totalPage);
//				 session.setAttribute("total", total);
					session.setAttribute("tip1", "未登录");
					session.setAttribute("tip2", "");
					session.setAttribute("tip3", "");
				
				model.addAttribute("goods",productMapper.doAllSearchByPageAsc(pagestart, pagesize));
				return "index";
				
			}
			
			
			
			@GetMapping(value="/doAddCart")

			public String findUserPro(Model model, HttpServletRequest request){
				
				int userid =0  ;
				int productid =Integer.parseInt(request.getParameter("productid"));
				String pname = request.getParameter("pname");
				float price = Float.parseFloat(request.getParameter("price"));
				String picture = request.getParameter("picture");
				int pnum = 1;
				float price_total = price;
				HttpSession se = request.getSession();
				se.removeAttribute("tip_cart");
				se.removeAttribute("tip_cart_delete");
				if(se.getAttribute("userid")!=null){
					userid= (int)se.getAttribute("userid");
					userid=userid;
					System.out.println("-----"+userid);
					int i = cartMapper.insertCart(userid, productid, pname, price, pnum, picture, price_total);
					System.out.println("-----"+i);
					if(i == 1){
						model.addAttribute("goods",cartMapper.findUserPro(userid));
					}else{
						System.out.println("加入失败");
					}
				}else{
					System.out.println("尚未登录");
				}
				return "checkout-1";
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			@GetMapping(value="/doDeleteCart")

			public String deleteFromCart(Model model, HttpServletRequest request){
				
				int userid =0  ;
				int cartid =Integer.parseInt(request.getParameter("cartid"));

				HttpSession se = request.getSession();
				se.removeAttribute("tip_cart_delete");
				se.removeAttribute("tip_cart");
				if(se.getAttribute("userid")!=null){
					userid= (int)se.getAttribute("userid");
					System.out.println("-----"+userid);
					int i = cartMapper.deleteCart(cartid);
					System.out.println("-----"+i);
					if(i == 1){
						se.setAttribute("tip_cart_delete","删除成功！");
						model.addAttribute("goods",cartMapper.findUserPro(userid));
					}else{
						System.out.println("加入失败");
					}
				}else{
					System.out.println("尚未登录");
				}
				return "checkout-1";
			}
			
			
			
			
}



