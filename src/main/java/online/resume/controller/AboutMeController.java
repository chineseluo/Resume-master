package online.resume.controller;

import online.resume.model.AboutMe;
import online.resume.model.Hobby;
import online.resume.model.Skill;
import online.resume.server.impl.AboutMeImpl;
import online.resume.server.impl.HobbyServerImpl;
import online.resume.server.impl.SkillServerImpl;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/**
 * Created by 84825 on 2018/1/26.
 */
@Controller
@RequestMapping(value = "/about")
public class AboutMeController {
    @Autowired
    private AboutMeImpl aboutMeImpl;
    @Autowired
    private SkillServerImpl skillServerImpl;
    @Autowired
    private HobbyServerImpl hobbyServerImpl;
    @RequestMapping(value = "content", method = RequestMethod.GET)
    public String to_index( Model model){
        System.out.println("content开始局部加载：");
        AboutMe aboutMe=aboutMeImpl.findAboutMe(new AboutMe(1l));
        System.out.println("aboutMe:"+aboutMe);
        model.addAttribute("aboutMe",aboutMe);
        return "new";
    }

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String to_index(Locale locale, Model model){
        System.out.println("locale:"+locale);
        AboutMe aboutMe=aboutMeImpl.findAboutMe(new AboutMe(1l));
        List<Skill> skills=skillServerImpl.findAllSkill();
        List<Hobby> hobbies=hobbyServerImpl.findAllHobby();
        model.addAttribute("hobbies",hobbies);
        model.addAttribute("skills",skills);
        model.addAttribute("aboutMe",aboutMe);
        return "index";
    }

    @PostMapping(value = "updateAboutMe")
    public String to_update(AboutMe aboutMe,Model model){
        System.out.println("开始更新数据库");
        System.out.println("aboutMe:"+aboutMe);
        aboutMeImpl.saveAboutMe(aboutMe);
        aboutMe=aboutMeImpl.findAboutMe(new AboutMe(1l));
        model.addAttribute("aboutMe",aboutMe);
        return "index";
    }

}
