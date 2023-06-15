package tientran.com.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import tientran.com.model.Category;

public interface CategoryDAO extends JpaRepository<Category, String> {
}
