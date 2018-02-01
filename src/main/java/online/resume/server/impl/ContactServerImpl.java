package online.resume.server.impl;

import online.resume.mapper.ContactMapper;
import online.resume.model.Contact;
import online.resume.server.ContactServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 84825 on 2018/1/31.
 */
@Service
public class ContactServerImpl implements ContactServer {
    @Autowired
    private ContactMapper contactMapper;
    @Override
    public void saveContact(Contact contact) {
        contactMapper.saveContact(contact);
    }
}
