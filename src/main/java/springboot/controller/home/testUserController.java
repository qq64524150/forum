package springboot.controller.home;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import springboot.controller.AbstractController;
import springboot.modal.vo.Uuser;
import springboot.service.TestUserService;

/**
 * @author HuangZhen
 * @mail Can you guess what
 * @phone You guess again
 * @date 2019/7/14 10:04
 * 测试用户测试类
 *
 */

@RestController
public class testUserController extends AbstractController {
    private static final Logger logger = LoggerFactory.getLogger(testUserController.class);
    @Autowired
    private TestUserService testUserService ;



    //查询出所有
    @GetMapping("testuser")
    public ModelAndView getAllUser(Model model){

        model.addAttribute("userlist",testUserService.getAll_U_user()) ;
        model.addAttribute("titl","用户列表") ;
        logger.info("数据"+testUserService.getAll_U_user().toString() );
        //重定向
        return new ModelAndView("themes/jantent/getAllUser","mo",model);

    }

    //删除
    @GetMapping("del/{id}")
    public ModelAndView deleteUserByid(@PathVariable("id")  Integer id){

        if (testUserService.deleteUserById(id) > 0){
            logger.info(id+ ",用户删除成功！");

        }else{
            logger.info(id+ ",用户删除失败！");

        }

        //返回列表 重定向
        return new ModelAndView("redirect:/testuser") ;
    }

    //添加
    @PostMapping("adduser")
    public ModelAndView addUser(Uuser uuser){

        if ( testUserService.addU_user(uuser) >0 ){
            logger.info(uuser.getNick()+ ",用户添加成功！");
        }else{
            logger.info(uuser.getNick()+ ",用户添加失败！");
        }

        //重定向
        return new ModelAndView("redirect:/testuser") ;
    }

     //创建表单页面
    @GetMapping("from")
    public ModelAndView from(Model model){
        model.addAttribute("user",new Uuser()) ;
        model.addAttribute("title","用户添加") ;
        return new ModelAndView("themes/jantent/addUserTest","mo",model) ;

    }

    //修改 根据id就行查询
    @GetMapping("upd/{id}")
    public ModelAndView upd(@PathVariable("id") Integer id, Model model){
       model.addAttribute("user", testUserService.getUserById(id) ) ;
       model.addAttribute("title","修改用户") ;
        return new ModelAndView("themes/jantent/updUserTest","mo",model) ;
    }
    //修改
    @PostMapping("upd")
    public ModelAndView upd(Uuser uuser){

        if (  testUserService.updateByid(uuser) >0 ){
            logger.info(uuser.getNick()+ ",用户修改成功！");
        }else{
            logger.info(uuser.getNick()+ ",用户修改成功！");
        }

        return new ModelAndView("redirect:/testuser") ;
    }

}
