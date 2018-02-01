package online.resume.controller;

import online.resume.model.AboutMe;
import online.resume.model.Contact;
import online.resume.model.Hobby;
import online.resume.model.Skill;
import online.resume.server.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by 84825 on 2018/1/31.
 */
@Controller
@RequestMapping(value = "contact")
public class ContactControler {
    @Autowired
    private MailService mailService;
    @Autowired
    private AboutMeImpl aboutMeImpl;
    @Autowired
    private SkillServerImpl skillServerImpl;
    @Autowired
    private HobbyServerImpl hobbyServerImpl;
    @Autowired
    private ContactServerImpl contactServerImpl;
    @PostMapping(value = "contactme")
    @Transactional
    public String contactMe(@ModelAttribute Contact contact,Model model) {
        System.out.println("contact:"+contact);
        contactServerImpl.saveContact(contact);
        mailService.sendSimpleMail(contact.getEmail(), contact.getName(), contact.getMessage());
        AboutMe aboutMe=aboutMeImpl.findAboutMe(new AboutMe(1l));
        List<Skill> skills=skillServerImpl.findAllSkill();
        List<Hobby> hobbies=hobbyServerImpl.findAllHobby();
        model.addAttribute("hobbies",hobbies);
        model.addAttribute("skills",skills);
        model.addAttribute("aboutMe",aboutMe);
        return "index";
    }
}
