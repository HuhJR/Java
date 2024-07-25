package model;

import java.util.Date;

public class Comment {
String replycomment;

public String getReplycomment() {
   return replycomment;
}

public void setReplycomment(String replycomment) {
   this.replycomment = replycomment;
}

@Override
public String toString() {
   return "Comment [replycomment=" + replycomment + "]";
}

}
