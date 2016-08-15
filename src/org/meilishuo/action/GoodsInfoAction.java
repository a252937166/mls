package org.meilishuo.action;

import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.convention.annotation.*;
import org.mls.entity.Goodsinfo;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by 欧阳杜泞 on 2016/8/15.
 */


@Controller
@Lazy(true)
@ParentPackage("struts-default")
@Namespace(value="/mls/crol/goodsinfoaction")
@Results(value = {
        @Result(name = "infoes",location = "/goods.jsp")
})
public class GoodsInfoAction extends BaseAction {

    @Action(value = "getInfo")
    public String getInfo() {

        List<Goodsinfo> al = getService().getInfoByPageNum(getKey(),1,100);

        Map<String,Object> mp = (Map<String, Object>) ActionContext.getContext().get("request");

        mp.put("infoes",al);

        return "infoes";
    }

    @Override
    public String getKey() {
        return this.getService().GOODSINFO;
    }

    @Override
    public List getBatch_list() {
        return null;
    }

    @Override
    public Serializable getEntity() {
        return null;
    }
}
