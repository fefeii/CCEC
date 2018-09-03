package com.example.mapper;

import java.util.List;

import com.example.model.Author;
import com.example.model.Blog;

public interface BlogMapper {
	List<Blog> findAllBlogs();
	//Blog findOneBlog(int id);
	//int insertBlog(Blog blog);
	//int deleteBlog(int id);
	
	
}
