package online.resume.mapper;


import online.resume.model.AboutMe;

public interface AboutMeMapper {
    /**
     * 根据id查询个人基础信息
     * @param id
     * @return
     */
    public AboutMe findAboutMe(Long id);

    /**
     * 保存修改后得个人信息
     * @param aboutMe
     */
    public void savaAboutMe(AboutMe aboutMe);
}