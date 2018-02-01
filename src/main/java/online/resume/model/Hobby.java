package online.resume.model;

import java.io.Serializable;
import java.util.Date;

public class Hobby implements Serializable {

    private Long id;

    private Date createtime= new Date();

    private String language;

    private String name;

    private Integer indexno;

    private static final long serialVersionUID = 1L;

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
        this.language = language == null ? null : language.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getIndexno() {
        return indexno;
    }

    public void setIndexno(Integer indexno) {
        this.indexno = indexno;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", createtime=").append(createtime);
        sb.append(", language=").append(language);
        sb.append(", name=").append(name);
        sb.append(", indexno=").append(indexno);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

    public Hobby() {
    }

    public Hobby(Long id) {
        this.id = id;
    }

    public Hobby(Date createtime, String language, String name, Integer indexno) {
        this.createtime = createtime;
        this.language = language;
        this.name = name;
        this.indexno = indexno;
    }

    public Hobby(Long id, Date createtime, String language, String name, Integer indexno) {
        this.id = id;
        this.createtime = createtime;
        this.language = language;
        this.name = name;
        this.indexno = indexno;
    }
}