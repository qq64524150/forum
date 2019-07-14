package springboot.service;

import springboot.modal.vo.Uuser;

import java.util.List;

/**
 * @author HuangZhen
 * @mail Can you guess what
 * @phone You guess again
 * @date 2019/7/14 9:53
 * 这是测试user测试类
 *
 */
public interface TestUserService {

    //查询全部
    List<Uuser> getAll_U_user() ;
    //添加
    int addU_user(Uuser user) ;

    //删除 更加进行删除
    int deleteUserById(Integer id) ;

    //修改
    int updateByid(Uuser uuser) ;

    //查询，跟id进行查询
    Uuser getUserById(Integer id) ;


}
