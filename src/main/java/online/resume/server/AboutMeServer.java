package online.resume.server;

import online.resume.model.AboutMe;

/**
 * Created by 84825 on 2018/1/26.
 */
public interface AboutMeServer {
    public AboutMe findAboutMe(AboutMe aboutMe);
    public void saveAboutMe(AboutMe aboutMe);
}
