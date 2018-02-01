package online.resume.model;

import java.util.Date;

public class Experience  {

    private Long id;

    private Date createtime;

    private String language;

    private String period;

    private String title;

    private String brief;

    private Integer indexno;

    @Override
    public String toString() {
        return "Experience{" +
                "id=" + id +
                ", createtime=" + createtime +
                ", language='" + language + '\'' +
                ", period='" + period + '\'' +
                ", title='" + title + '\'' +
                ", brief='" + brief + '\'' +
                ", indexno=" + indexno +
                '}';
    }

    public Experience() {
    }

    public Experience(Date createtime, String language, String period, String title, String brief, Integer indexno) {
        this.createtime = createtime;
        this.language = language;
        this.period = period;
        this.title = title;
        this.brief = brief;
        this.indexno = indexno;
    }

    public Experience(Long id) {
        this.id = id;
    }

    public Experience(Long id, Date createtime, String language, String period, String title, String brief, Integer indexno) {
        this.id = id;
        this.createtime = createtime;
        this.language = language;
        this.period = period;
        this.title = title;
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

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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