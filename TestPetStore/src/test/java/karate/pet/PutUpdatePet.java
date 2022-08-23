package karate.pet;

import com.intuit.karate.junit5.Karate;

public class PutUpdatePet {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/Pet/UpdatePet.feature").relativeTo(getClass());
    }
}

