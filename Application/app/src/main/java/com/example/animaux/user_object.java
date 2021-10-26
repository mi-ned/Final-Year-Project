//if the app fails, change the parts to 'static'

package com.example.animaux;

//User object
public class user_object {
    private static int id;
    private static int points;
    private static int photos;
    private static int highscore;
    private static String username;

    public user_object(int id, String username, int points, int photos, int highscore){
        this.id = id;
        this.username = username;
        this.points = points;
        this.photos = photos;
        this.highscore = highscore;
    }

    public static int getId(){
        return id;
    }

    public static String getUsername(){
        return username;
    }

    public static int getPoints(){
        return points;
    }

    public static int getPhotos(){
        return photos;
    }

    public static int getHighscore(){
        return highscore;
    }

    public void setId(int id){ this.id = id;}

    public void setUsername(String username) { this.username = username;}

    public void setPoints(int points){
        this.points = points;
    }

    public void setPhotos(int photos){
        this.photos = photos;
    }

    public void setHighscore(int highscore){ this.highscore = highscore; }

}
