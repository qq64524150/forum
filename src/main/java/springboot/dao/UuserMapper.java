package springboot.dao;

import springboot.modal.vo.Uuser;

import java.util.List;

public interface UuserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Uuser record);

    int insertSelective(Uuser record);

    Uuser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Uuser record);

    int updateByPrimaryKey(Uuser record);

    List<Uuser> getAllUser() ;
}