package online.resume;

import online.resume.mapper.*;

import online.resume.model.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

/**
 * Created by 84825 on 2018/1/23.
 */
@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration( value = {"classpath:applicationContext-mybatis.xml"})
public class Check {
    @Autowired
    private AboutMeMapper aboutMeMapper;
    @Autowired
    private SkillMapper skillMapper;
    @Autowired
    private HobbyMapper hobbyMapper;
    @Autowired
    private ContactMapper contactMapper;
    @Test
    public void fun(){
     contactMapper.saveContact(new Contact(new Date(),"zh_CN","张飞","848257135@qq.com","hello word!"));
    }
}
