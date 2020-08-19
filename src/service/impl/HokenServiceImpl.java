package service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.transaction.annotation.Transactional;

import dao.HokenDao;
import domain.Hoken;
import domain.PageBean;
import service.HokenService;

@Transactional
public class HokenServiceImpl implements HokenService {
	
	private HokenDao hokenDao;

	public void setHokenDao(HokenDao hokenDao) {
		this.hokenDao = hokenDao;
	}

	@Override
	// 业务层保存商品的方法:
	public void save(Hoken hoken) {
		hokenDao.save(hoken);
	}

	@Override
	// 业务层根据ID查询商品的方法
	public Hoken findById(Long cust_id) {
		return hokenDao.findById(cust_id);
	}

	@Override
	// 业务层删除商品的方法
	public void delete(Hoken hoken) {
		hokenDao.delete(hoken);
	}

	@Override
	// 业务层修改商品的方法:
	public void update(Hoken hoken) {
		hokenDao.update(hoken);
	}

	@Override
	// 业务层查询所有商品的方法:
	public PageBean<Hoken> findAll(DetachedCriteria detachedCriteria, Integer currPage, Integer pageSize) {
		PageBean<Hoken> pageBean = new PageBean<Hoken>();
		// 封装当前页数:
		pageBean.setCurrPage(currPage);
		// 封装每页显示记录数:
		pageBean.setPageSize(pageSize);
		// 封装总记录数:
		// 调用DAO:
		Integer totalCount  = hokenDao.findCount(detachedCriteria);
		pageBean.setTotalCount(totalCount);
		// 封装总页数:
		Double tc = totalCount.doubleValue();
		Double num = Math.ceil(tc/pageSize);
		pageBean.setTotalPage(num.intValue());
		// 封装每页显示数据的集合
		Integer begin = (currPage - 1) * pageSize;
		/*
		 * System.out.println(begin); System.out.println(pageSize);
		 */
		List<Hoken> list = hokenDao.findByPage(detachedCriteria,begin,pageSize);
		pageBean.setList(list);
		return pageBean;
		//return hokenDao.findAll();

	}

}
