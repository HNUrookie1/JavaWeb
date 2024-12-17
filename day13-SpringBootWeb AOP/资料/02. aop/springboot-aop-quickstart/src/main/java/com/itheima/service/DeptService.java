package com.itheima.service;

import com.itheima.pojo.Dept;

import java.util.List;

public interface DeptService {
    /**
     * 查询所有的部门数据
     * @return
     */
    List<Dept> list();

    /**
     * 删除部门
     * @param id
     */
    void delete(Integer id);

    /**
     * 新增部门
     * @param dept
     */
    void save(Dept dept);

    /**
     * 根据ID查询
     * @param id
     * @return
     */
    Dept getById(Integer id);

    /**
     * 更新部门
     * @param dept
     */
    void update(Dept dept);
}
