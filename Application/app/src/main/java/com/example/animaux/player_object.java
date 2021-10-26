package com.example.animaux;

//Player object class so that rankings screen can work
public class player_object {

    private String gamer;
    private int points;
    private int photos;
    private int highscore;

    public player_object(String gamer, int points, int photos, int highscore) {
        this.gamer = gamer;
        this.points = points;
        this.photos = photos;
        this.highscore = highscore;
    }

    public String getPlayer(){
        return gamer;
    }

    public int getPoints(){
        return points;
    }

    public int getPhotos(){
        return photos;
    }

    public int getHighscore(){
        return highscore;
    }

    public void setPlayer(String gamer){
        this.gamer = gamer;
    }

    public void setPoints(int points){
        this.points = points;
    }

    public void setPhotos(int photos){
        this.photos = photos;
    }

    public void setHighscore(int highscore){
        this.highscore = highscore;
    }

}
