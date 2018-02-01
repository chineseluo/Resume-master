package online.resume.mapper;


import online.resume.model.Skill;

import java.util.List;

public interface SkillMapper {
    /**
     * 查询所有技能
     * @return
     */
    public List<Skill> findAllSkill();

    /**
     * 更新技能
     */
    public void updateSkill(Skill skill);
}