package Karate.Pet;

import com.intuit.karate.junit5.Karate;
public class Create {
    @Karate.Test
    Karate testSample(){return Karate.run("classpath:karate.PetStore/create.feature").relativeTo(getClass());
    }
}
