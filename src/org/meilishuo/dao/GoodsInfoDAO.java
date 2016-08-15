package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.mls.entity.Goodsinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by 欧阳杜泞 on 2016/8/12.
 */
@Repository
public class GoodsInfoDAO extends BaseDAO<Goodsinfo>{
    @Autowired
    public GoodsInfoDAO(SessionFactory sessionFactory) {
        super(sessionFactory);
    }
}
