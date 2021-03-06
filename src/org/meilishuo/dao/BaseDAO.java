package org.meilishuo.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.meilishuo.interfaces.DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public abstract class BaseDAO<T> extends HibernateTemplate  implements DAO {

	
	public static final int INSERT=1;
	public static final int DELETE=2;
	public static final int UPDATE=3;
	
	
	private Class type;
	
	@Autowired
	public BaseDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		
		ParameterizedType parameterizedType= (ParameterizedType) this.getClass().getGenericSuperclass();
		this.type=(Class) parameterizedType.getActualTypeArguments()[0];
		
	}
	
	
	
	
	
	@Override
	public List getAll() {
		
		return find(new StringBuffer(" from ").append(this.type.getName()).toString());
	}

	
	@Override
	public T getByID(Serializable id) {
		return null;
	}

	@Override
	public List getInfoesByProperties(Criterion... criterions) {
		
		return getInfoesByProperties(null, null, criterions);
	}
	

	@Override
	public List getInfoesByProperties(Integer pageNum, Integer rowCount,
			Criterion... criterions) {
		
		DetachedCriteria criteria=DetachedCriteria.forClass(type);
		
		for (Criterion criterion : criterions) {
			criteria.add(criterion);
		}
		
		if(pageNum!=null && null!=rowCount && pageNum>=1 && rowCount>=1){
			return findByCriteria(criteria, (pageNum-1)*rowCount, rowCount);
		}
		
		return findByCriteria(criteria);
	}

	
	private void update(int wtd ,Object... ts){
		
		int i=0;
		
		switch (wtd) {
		case INSERT:
			for (Object object : ts) {
				
				if(++i%50==0){
					this.flush();
					this.clear();
				}
				
				save (object);
			}
			break;
		case DELETE:
			for (Object object : ts) {
				
				if(++i%50==0){
					this.flush();
					this.clear();
				}
				
				
				delete(object);
			}
			break;
		case UPDATE:
			for (Object object : ts) {
				if(++i%50==0){
					this.flush();
					this.clear();
				}
				
				
				update(object);
			}
			break;
			
		}
	}
	
	
	
	@Override
	public void execute_insert(Object... ts) {
		
		this.update(INSERT, ts);
	}

	@Override
	public void execute_delete(Object... ts) {
		
		this.update(DELETE, ts);
	}

	@Override
	public void execute_update(Object... ts) {
		this.update(UPDATE, ts);
	}


	@Override
	public int getPageCountByRowCount(int rowCount) {
		
		Session session= this.getSessionFactory().getCurrentSession();
		
		Query query= session.createQuery("select count(v1) from "+this.type.getSimpleName()+" v1 ");
		
		long count=(long) query.uniqueResult();
		
		return (int) (count%rowCount==0?count/rowCount:(count/rowCount)+1);
	}

}
