package org.meilishuo.action;

/**
 * Created by 欧阳杜泞 on 2016/8/15.
 */

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;


import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.meilishuo.mdservice.ModelService;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

/**
 * 用于 子类基础 设计 响应 控制层action 的父类
 * 子类需要根据设计改变指定的命名空间（namespace）以及   results注释
 *
 * @author Administrator
 */
public abstract class BaseAction {

    /**
     * 分页查询时用的 页码
     */
    private int pageNum = 1;

    /**
     * 分页查询时，指定每页行数，默认为每页10行
     */
    private int rowCount = 10;

    /**
     * 分页查询时，根据指定行数（rowCount）和相关表格信息 获取指定表格可以分页的页数
     */
    private Integer pageCount = null;

    /**
     * 用于 关联 service 以指定 本Action 需要 使用的基本 DAO对象
     */
    private String key;

    /**
     * 依赖spring 注入获取 ModelService对象
     */
    @Resource(name = "modelService")
    private ModelService service;

    /**
     * 判断相关操作是添加还是更新的标识
     */
    private String insertOrUpdate;


    public String getInsertOrUpdate() {
        return insertOrUpdate;
    }


    public void setInsertOrUpdate(String insertOrUpdate) {
        this.insertOrUpdate = insertOrUpdate;
    }


    /**
     * 分页查询时，根据指定行数（rowCount）和相关表格信息 获取指定表格可以分页的页数
     *
     * @return 页数
     */
    public int getPageCount() {

        if (pageCount == null)
            pageCount = this.getService().getPageCount(getKey(), this.getRowCount());

        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getPageNum() {
        return pageNum;
    }

    /**
     * 相应setter 封装判断 指定页数的合理性
     *
     * @param pageNum
     */
    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
        if (this.pageNum < 1)
            this.pageNum = 1;
        if (this.pageNum > this.getPageCount()) {
            this.pageNum = this.getPageCount();
        }

    }

    public int getRowCount() {
        return rowCount;
    }

    public void setRowCount(int rowCount) {
        this.rowCount = rowCount;
    }

    /**
     * 强制实现 getKey 结合父类 封装需要，提供用于子类方法使用
     *
     * @return 用于 关联 service 以指定 本Action 需要 使用的基本 DAO对象 的关键字
     */
    public abstract String getKey();

    public void setKey(String key) {
        this.key = key;
    }

    public ModelService getService() {
        return service;
    }

    public void setService(ModelService service) {
        this.service = service;
    }


    public abstract List getBatch_list();

    public abstract Serializable getEntity();

    // =============================================================


    /**
     * 根据指定操作获取分页信息 查询 的方法
     *
     * @return
     */
    @Action(value = "getInfo")
    public String getInfo() {

        Map mp = (Map) ActionContext.getContext().get("request");

        mp.put("infoes", this.getService().getInfoByPageNum(getKey(), getPageNum(), getRowCount()));

        return "infoes";
    }

    /**
     * 根据操作 进行 删除（指定删除或 批量删除） 的方法
     *
     * @return
     */
    @Action(value = "delete")
    public String delete_info() {

        if (getBatch_list() != null && getBatch_list().size() > 0) {
            this.getService().delete_batch(getKey(), getBatch_list().toArray());
        } else if (getEntity() != null) {

            this.getService().delete_batch(getKey(), getEntity());

        }

        return getInfo();
    }


    /**
     * 根据标识（insertOrUpdate）的值 进行 信息添加 或 更新的方法
     *
     * @return
     */
    @Action(value = "insertOrUpdate")
    public String insertOrUpdate() {

        if ("insert".equals(this.getInsertOrUpdate())) {
            getService().insert_batch(getKey(), getEntity());
        } else {
            getService().update_batch(getKey(), getEntity());
        }


        return getInfo();
    }


}

