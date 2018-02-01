package online.resume.server;

import online.resume.model.Skill;

import java.util.List;

/**
 * Created by 84825 on 2018/1/30.
 */
public interface SkillServer {
    /**
     * 查找所有技能
     * @return
     */
    public List<Skill> findAllSkill();
    public void updateSkill(Skill skill);
}
