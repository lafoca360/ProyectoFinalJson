package comments.get;

import com.intuit.karate.junit5.Karate;

public class CommentGetRunner {
    @Karate.Test
    Karate commentGet(){
        return Karate.run("comment-get").relativeTo(getClass());

    }
}
