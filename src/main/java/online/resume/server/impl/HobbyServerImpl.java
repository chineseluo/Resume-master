package online.resume.server.impl;

import online.resume.mapper.HobbyMapper;
import online.resume.model.Hobby;
import online.resume.server.HobbyServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 84825 on 2018/1/31.
 */
@Service
public class HobbyServerImpl implements HobbyServer {
    @Autowired
    private HobbyMapper hobbyMapper;
    @Override
    public List<Hobby> findAllHobby() {
        return hobbyMapper.findAllHobby();
    }

    @Override
    public void updateHobby(Hobby hobby) {
        hobbyMapper.updateHobby(hobby);
    }
}
