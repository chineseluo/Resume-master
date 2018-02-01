package online.resume.common;

import online.resume.model.Hobby;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by 84825 on 2018/1/31.
 */
@Component
public class DataBinderHobby {
    private List<Hobby> hobbies=new ArrayList<>();

    public List<Hobby> getHobbies() {
        return hobbies;
    }

    public void setHobbies(List<Hobby> hobbies) {
        this.hobbies = hobbies;
    }

    public DataBinderHobby(List<Hobby> hobbies) {
        this.hobbies = hobbies;
    }

    public DataBinderHobby() {
    }

    @Override
    public String toString() {
        return "DataBinderHobby{" +
                "hobbies=" + hobbies +
                '}';
    }
}
