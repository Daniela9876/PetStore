package karate.pet;

import com.intuit.karate.junit5.Karate;
public class GetFindById {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/Pet/FindPetById.feature").relativeTo(getClass());
    }
}

