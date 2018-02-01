package online.resume.mapper;


import online.resume.model.Contact;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ContactMapper {
public void saveContact(Contact contact);
}