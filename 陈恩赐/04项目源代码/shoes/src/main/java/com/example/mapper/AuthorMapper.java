package com.example.mapper;

import java.util.List;

import com.example.model.Author;
import com.example.model.City;

public interface AuthorMapper {
	List<Author> findAllAuthor();
	Author findOneAuthor(int id);
	
	int insertAuthor(Author Author);
	
	int updateAuthor(Author Author);
	int deleteAuthor(int id);
}
