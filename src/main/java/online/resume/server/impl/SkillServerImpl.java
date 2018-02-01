package online.resume.server.impl;

import online.resume.mapper.SkillMapper;
import online.resume.model.Skill;
import online.resume.server.SkillServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 84825 on 2018/1/30.
 */
@Service
public class SkillServerImpl implements SkillServer {
    @Autowired
    private SkillMapper skillMapper;
    @Override
    public List<Skill> findAllSkill() {
        return skillMapper.findAllSkill();
    }

    @Override
    public void updateSkill(Skill skill) {
        skillMapper.updateSkill(skill);
    }
}
