package online.resume.server;

import online.resume.model.Hobby;

import java.util.List;

/**
 * Created by 84825 on 2018/1/31.
 */
public interface HobbyServer {
    public List<Hobby> findAllHobby();
    public void updateHobby(Hobby hobby);
}
