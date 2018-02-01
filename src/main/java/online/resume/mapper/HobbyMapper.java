package online.resume.mapper;


import online.resume.model.Hobby;

import java.util.List;

public interface HobbyMapper {
    /**
     * 查询所有爱好
     * @return
     */
    public List<Hobby> findAllHobby();

    /**
     * 更新爱好
     * @param hobby
     */
    public void updateHobby(Hobby hobby);
}