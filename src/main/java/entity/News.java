package entity;

import java.sql.Timestamp;

public class News {
    int idnews;
    String content;
    String name;
    Timestamp inserttime;

    public News(int idnews,String name){
        this.idnews = idnews;
        this.name = name;
    }

    public News(int idnews, String name, String content, Timestamp inserttime) {
        this.idnews = idnews;
        this.name = name;
        this.content = content;
        this.inserttime = inserttime;
    }

    public  String getName(){return  name;}

    public void setName(String name){this.name = name;}

    public  int getIdnews() {
        return idnews;
    }

    public void setIdnews(int idnews) {
        this.idnews = idnews;
    }

    public  String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getInsertTime() {
        return inserttime;
    }

    public void setInsertTime(Timestamp insertime) {
        this.inserttime = inserttime;
    }

}
