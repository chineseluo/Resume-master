package online.resume.model;

import java.io.Serializable;
import java.util.Date;

public class Skill implements Serializable {

    private Long id;

    private Date createtime = new Date();

    private String language;

    private String name;

    private Integer level;

    private Integer indexno;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getIndexno() {
        return indexno;
    }

    public void setIndexno(Integer indexno) {
        this.indexno = indexno;
    }

    public Skill() {
    }

    public Skill(Long id) {
        this.id = id;
    }

    public Skill(Long id, String name, Integer level) {
        this.id = id;
        this.name = name;
        this.level = level;
    }

    public Skill(String name, Integer level) {
        this.name = name;
        this.level = level;
    }

    public Skill(Long id, Date createtime, String language, String name, Integer level, Integer indexno) {
        this.id = id;
        this.createtime = createtime;
        this.language = language;
        this.name = name;
        this.level = level;
        this.indexno = indexno;
    }

    @Override
    public String toString() {
        return "Skill{" +
                "id=" + id +
                ", createtime=" + createtime +
                ", language='" + language + '\'' +
                ", name='" + name + '\'' +
                ", level=" + level +
                ", indexno=" + indexno +
                '}';
    }
}