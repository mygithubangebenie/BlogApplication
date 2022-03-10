package com.example;

import java.util.List;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BlogController {
	@Autowired
	BlogRepository blogRepo;

	@RequestMapping("blog")
	public ModelAndView blog() {
		List<Blog> blogs = blogRepo.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("blogs", blogs);
		mv.setViewName("blog");
		return mv;
	}

	@RequestMapping("/addblog")
	public ModelAndView addBlog(Blog blog) {
		ModelAndView mv = new ModelAndView();
		blogRepo.save(blog);
		mv.setViewName("redirect:/blog");
		return mv;
	}
	
	@RequestMapping(value="/blog/{bid}",method= RequestMethod.GET)
	public ModelAndView showBlog(@PathVariable("bid") int bid) {
		System.out.println("Hello");
		ModelAndView mv = new ModelAndView();
		Blog blog=blogRepo.findById(bid).get();
	    mv.addObject("blog",blog);
		mv.setViewName("showblog");
		return mv;
	}
	
	@RequestMapping(value="/delete/{bid}",method= RequestMethod.GET)
	public ModelAndView deleteBlog(@PathVariable("bid") int bid) {
		System.out.println("Hello");
		ModelAndView mv = new ModelAndView();
	    blogRepo.deleteById(bid);
		mv.setViewName("/blog");
		return mv;
	}
	
	@RequestMapping(value="/update/{bid}",method= RequestMethod.GET)
	public ModelAndView updateBlog(@PathVariable("bid") int bid) {
		ModelAndView mv = new ModelAndView();
		Blog blog=blogRepo.findById(bid).get();
	    mv.addObject("blog",blog);
		mv.setViewName("edit");
		return mv;
	}
	
	@RequestMapping("/update/editdata/{bid}")
	public ModelAndView updateBlogAction(@PathVariable("bid") int bid , Blog b) {
		ModelAndView mv = new ModelAndView();
		Blog blog=blogRepo.findById(bid).get();
		blog.setTitle(b.getTitle());
		blog.setContent(b.getContent());
		blogRepo.save(blog);
		mv.setViewName("redirect:/blog");
		return mv;
	}
}
