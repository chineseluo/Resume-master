package online.resume.controller;

import online.resume.common.DataBinderHobby;
import online.resume.model.Hobby;
import online.resume.server.impl.HobbyServerImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 84825 on 2018/1/31.
 */
@Controller
@RequestMapping(value = "hobby")
public class HobbyController {
    @Autowired
    private HobbyServerImpl hobbyServerImpl;
    @Autowired
    private DataBinderHobby dataBinderHobby;
    @GetMapping("edithobby")
    public String editHobby(Model model){
        System.out.println("开始加载爱好页面");
        dataBinderHobby.setHobbies(hobbyServerImpl.findAllHobby());
        model.addAttribute("dataBinderHobby",dataBinderHobby.getHobbies());
        return "hobby";
    }
    @PostMapping("updatehobby")
    public String updateHobby(DataBinderHobby dataBinderHobby){
        System.out.println("hobbys:"+dataBinderHobby.getHobbies());
        for(Hobby hobby:dataBinderHobby.getHobbies()){
            hobbyServerImpl.updateHobby(hobby);
        }
        return "index";
    }
}
