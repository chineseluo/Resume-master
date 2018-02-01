package online.resume.server.impl;

import online.resume.mapper.AboutMeMapper;
import online.resume.model.AboutMe;
import online.resume.server.AboutMeServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 84825 on 2018/1/26.
 */
@Service
public class AboutMeImpl implements AboutMeServer{
    @Autowired
    private AboutMeMapper aboutMeMapper;
    @Override
    public AboutMe findAboutMe(AboutMe aboutMe) {
        return aboutMeMapper.findAboutMe(aboutMe.getId());
    }

    @Override
    public void saveAboutMe(AboutMe aboutMe) {
        aboutMeMapper.savaAboutMe(aboutMe);
    }
}
