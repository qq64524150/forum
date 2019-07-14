package springboot.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import springboot.dao.UuserMapper;
import springboot.modal.vo.Uuser;
import springboot.service.TestUserService;

import java.util.List;

/**
 * @author HuangZhen
 * @mail Can you guess what
 * @phone You guess again
 * @date 2019/7/14 9:56
 */
@Service
public class TestUserServiceImpl implements TestUserService {

    @Autowired
    UuserMapper userMapper ;

    //查询所有
    @Override
    public List<Uuser> getAll_U_user() {
        return userMapper.getAllUser();
    }
    //添加
    @Override
    public int addU_user(Uuser user) {
        return  userMapper.insert(user) ;
    }
    //根据id进行删除
    @Override
    public int deleteUserById(Integer id) {
        return userMapper.deleteByPrimaryKey(id);
    }
    //修改
    @Override
    public int updateByid(Uuser uuser) {
        return userMapper.updateByPrimaryKey(uuser);
    }
    //查询根据就行查询
    @Override
    public Uuser getUserById(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }


}
