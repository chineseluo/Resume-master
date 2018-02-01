package online.resume.controller;

import online.resume.common.DataBinderSkill;
import online.resume.model.Skill;
import online.resume.server.impl.SkillServerImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 84825 on 2018/1/30.
 */
@Controller
@RequestMapping(value = "skill")
public class SkillController {
    @Autowired
    private SkillServerImpl skillServerImpl;
    @Autowired
    private DataBinderSkill dataBinderSkill;
    @GetMapping("editskill")
    public String editSkill(Model model){
        dataBinderSkill.setSkills(skillServerImpl.findAllSkill()) ;
        model.addAttribute("dataBinderSkill", dataBinderSkill.getSkills());
        return "skill";
    }
    @PostMapping(value = "updateSkill")
    public String updateSkill(DataBinderSkill dataBinderSkill){
        for(Skill skill: dataBinderSkill.getSkills()){
            skillServerImpl.updateSkill(skill);
        }
        System.out.println("skills:"+ dataBinderSkill.getSkills());
        return "index";
    }
}
