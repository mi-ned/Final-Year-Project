package com.example.animaux;

import android.app.Application;
import android.content.Context;
import android.media.MediaPlayer;

//User settings that involve background music, current theme and sound effects
public class user_settings extends Application {
    public static int currentTheme;
    public static boolean sfx = true;
    public static boolean bgm = true;

    private static MediaPlayer player;
    private static int current_audio;

    public static void play_music(Context appContext, int audio) {
        if (user_settings.bgm) {
            if(current_audio != audio || player == null){
                current_audio = audio;
                if(player != null){
                    stop();
                }
                player = MediaPlayer.create(appContext, audio);
                player.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                    @Override
                    public void onCompletion(MediaPlayer mp) { stop(); }
                });
                player.setLooping(true);
                player.start();
            }
        }

        else{
            stop();
        }
    }

    public static void play_sound(Context appContext, int audio) {
        if (user_settings.sfx) {
            final MediaPlayer click = MediaPlayer.create(appContext, audio);
            click.start();
        }
    }

    public static void stop(){
        if(player != null){
            player.release();
            player = null;
        }
    }
}