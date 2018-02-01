package online.resume.model;

import java.io.Serializable;
import java.util.Date;

public class AboutMe implements Serializable {

    private Long id;

    private Date createtime;

    private String language;

    private String name;

    private String gender;

    private Date birthday;

    private String motto;

    private String residence;

    private String email;

    private String mobile;

    private String workingyears;

    private EducationDegree educationDegree;

    private WorkingStatus workingStatus;

    private String resumefile;

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
        this.language = language;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getMotto() {
        return motto;
    }

    public void setMotto(String motto) {
        this.motto = motto;
    }

    public String getResidence() {
        return residence;
    }

    public void setResidence(String residence) {
        this.residence = residence;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getWorkingyears() {
        return workingyears;
    }

    public void setWorkingyears(String workingyears) {
        this.workingyears = workingyears;
    }

    public EducationDegree getEducationDegree() {
        return educationDegree;
    }

    public void setEducationDegree(EducationDegree educationDegree) {
        this.educationDegree = educationDegree;
    }

    public WorkingStatus getWorkingStatus() {
        return workingStatus;
    }

    public void setWorkingStatus(WorkingStatus workingStatus) {
        this.workingStatus = workingStatus;
    }

    public String getResumefile() {
        return resumefile;
    }

    public void setResumefile(String resumefile) {
        this.resumefile = resumefile;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public AboutMe() {

    }

    public AboutMe(Long id) {
        this.id = id;
    }

    public AboutMe(Date createtime, String language, String name, String gender, Date birthday, String motto, String residence, String email, String mobile, String workingyears, EducationDegree educationDegree, WorkingStatus workingStatus, String resumefile) {
        this.createtime = createtime;
        this.language = language;
        this.name = name;
        this.gender = gender;
        this.birthday = birthday;
        this.motto = motto;
        this.residence = residence;
        this.email = email;
        this.mobile = mobile;
        this.workingyears = workingyears;
        this.educationDegree = educationDegree;
        this.workingStatus = workingStatus;
        this.resumefile = resumefile;
    }

    public AboutMe(Long id, Date createtime, String language, String name, String gender, Date birthday, String motto, String residence, String email, String mobile, String workingyears, EducationDegree educationDegree, WorkingStatus workingStatus, String resumefile) {
        this.id = id;
        this.createtime = createtime;
        this.language = language;
        this.name = name;
        this.gender = gender;
        this.birthday = birthday;
        this.motto = motto;
        this.residence = residence;
        this.email = email;
        this.mobile = mobile;
        this.workingyears = workingyears;
        this.educationDegree = educationDegree;
        this.workingStatus = workingStatus;
        this.resumefile = resumefile;
    }

    @Override
    public String toString() {
        return "AboutMe{" +
                "id=" + id +
                ", createtime=" + createtime +
                ", language='" + language + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", birthday=" + birthday +
                ", motto='" + motto + '\'' +
                ", residence='" + residence + '\'' +
                ", email='" + email + '\'' +
                ", mobile='" + mobile + '\'' +
                ", workingyears='" + workingyears + '\'' +
                ", educationDegree=" + educationDegree +
                ", workingStatus=" + workingStatus +
                ", resumefile='" + resumefile + '\'' +
                '}';
    }

    public String toStringAnd() {
        return "AboutMe{" +
                "id=" + id +
                ", createtime=" + createtime +
                ", language='" + language + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", birthday=" + birthday +
                ", motto='" + motto + '\'' +
                ", residence='" + residence + '\'' +
                ", email='" + email + '\'' +
                ", mobile='" + mobile + '\'' +
                ", workingyears='" + workingyears + '\'' +
                ", educationDegree=" + educationDegree.getName() +
                ", workingStatus=" + workingStatus.getName() +
                ", resumefile='" + resumefile + '\'' +
                '}';
    }
}