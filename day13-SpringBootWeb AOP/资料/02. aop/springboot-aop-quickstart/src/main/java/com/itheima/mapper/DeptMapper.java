package com.itheima.mapper;

import com.itheima.pojo.Dept;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface DeptMapper {
    //查询全部部门数据
    @Select("select * from dept")
    List<Dept> list();

    //删除部门
    @Delete("delete from dept where id = #{id}")
    void delete(Integer id);

    //新增部门
    @Insert("insert into dept(name, create_time, update_time) values (#{name},#{createTime},#{updateTime})")
    void save(Dept dept);

    //根据ID查询
    @Select("select * from dept where id = #{id}")
    Dept getById(Integer id);

    //更新部门
    @Update("update dept set name = #{name}, update_time = #{updateTime} where id = #{id}")
    void update(Dept dept);
}



