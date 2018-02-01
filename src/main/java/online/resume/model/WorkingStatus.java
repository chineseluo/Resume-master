package online.resume.model;

import java.io.Serializable;
import java.util.Date;

public class WorkingStatus implements Serializable {

    private Long id;

    private String language;

    private String name;

    private Date createtime;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }


    public void setId(Long id) {
        this.id = id;
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

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", language=").append(language);
        sb.append(", name=").append(name);
        sb.append(", createtime=").append(createtime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
    public WorkingStatus() {

    }
    public WorkingStatus(Long id) {
        this.id = id;
    }

    public WorkingStatus(String language, String name, Date createtime) {
        this.language = language;
        this.name = name;
        this.createtime = createtime;
    }

    public WorkingStatus(Long id, String language, String name, Date createtime) {
        this.id = id;
        this.language = language;
        this.name = name;
        this.createtime = createtime;
    }
}