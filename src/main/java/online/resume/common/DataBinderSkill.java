package online.resume.common;

import online.resume.model.Skill;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 84825 on 2018/1/30.
 */
@Component
public class DataBinderSkill {
    private List<Skill> skills=new ArrayList<>();

    public List<Skill> getSkills() {
        return skills;
    }

    public void setSkills(List<Skill> skills) {
        this.skills = skills;
    }

    public DataBinderSkill(List<Skill> skills) {
        this.skills = skills;
    }

    public DataBinderSkill() {
    }

    @Override
    public String toString() {
        return "DataBinder{" +
                "skills=" + skills +
                '}';
    }
}
