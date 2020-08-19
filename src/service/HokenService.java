package service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import domain.Hoken;
import domain.PageBean;

public interface HokenService {
	
	void save(Hoken hoken);

	//PageBean<Hoken> findByPage(DetachedCriteria detachedCriteria, Integer currPage,Integer pageSize);

	Hoken findById(Long cust_id);

	void delete(Hoken hoken);

	void update(Hoken hoken);

	//List<Hoken> findAll();

	PageBean<Hoken> findAll(DetachedCriteria detachedCriteria, Integer currPage, Integer pageSize);
}
