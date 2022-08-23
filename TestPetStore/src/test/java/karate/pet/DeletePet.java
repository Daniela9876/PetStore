package karate.pet;

import com.intuit.karate.junit5.Karate;

public class DeletePet {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/Pet/DeletePet.feature").relativeTo(getClass());
    }
}

