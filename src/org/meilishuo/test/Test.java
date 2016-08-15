package org.meilishuo.test;

import org.meilishuo.interfaces.DAO;
import org.meilishuo.mdservice.ModelService;
import org.mls.entity.Goodsinfo;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by 欧阳杜泞 on 2016/8/12.
 */
public class Test {
    public static void main(String[] args) {
        ApplicationContext app = new ClassPathXmlApplicationContext("app1.xml");
        ModelService service = (ModelService)app.getBean("modelService");
        List<Goodsinfo> al = service.getInfoByPageNum(service.GOODSINFO,1,6);
        for (Goodsinfo g : al) {
            System.out.println(g.getGdname());
        }

    }
}
