package online.resume.model;

import java.io.Serializable;
import java.util.Date;

public class Contact implements Serializable {

    private Long id;

    private Date createtime = new Date();

    private String language;

    private String name;

    private String email;

    private String message;

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
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
        sb.append(", email=").append(email);
        sb.append(", message=").append(message);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

    public Contact() {
    }

    public Contact(Long id) {
        this.id = id;
    }

    public Contact(Date createtime, String language, String name, String email, String message) {
        this.createtime = createtime;
        this.language = language;
        this.name = name;
        this.email = email;
        this.message = message;
    }

    public Contact(Long id, Date createtime, String language, String name, String email, String message) {
        this.id = id;
        this.createtime = createtime;
        this.language = language;
        this.name = name;
        this.email = email;
        this.message = message;
    }
}