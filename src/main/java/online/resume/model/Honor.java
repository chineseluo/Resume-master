package online.resume.model;

import java.io.Serializable;
import java.util.Date;

public class Honor {

    private Long id;

    private Date createtime;

    private String language;

    private String name;

    private String brief;

    private Integer indexno;

    public Honor() {
    }

    public Honor(Long id) {
        this.id = id;
    }

    public Honor(Date createtime, String language, String name, String brief, Integer indexno) {
        this.createtime = createtime;
        this.language = language;
        this.name = name;
        this.brief = brief;
        this.indexno = indexno;
    }

    public Honor(Long id, Date createtime, String language, String name, String brief, Integer indexno) {
        this.id = id;
        this.createtime = createtime;
        this.language = language;
        this.name = name;
        this.brief = brief;
        this.indexno = indexno;
    }

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

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public Integer getIndexno() {
        return indexno;
    }

    public void setIndexno(Integer indexno) {
        this.indexno = indexno;
    }
}