package com.example.animaux;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

public class shared_preferences {
    //Shares details with user_object class
    private static final String SHARED_PREFERENCES_NAME = "animalappsharedpref";
    private static final String KEY_ID = "keyid";
    private static final String KEY_USERNAME = "keyusername";
    private static final String KEY_POINTS = "keypoints";
    private static final String KEY_PHOTOS = "keyphotos";
    private static final String KEY_HIGHSCORE = "keyhighscores";

    private static shared_preferences my_instance;
    private static Context my_context;

    //Depending on what screen the users on, my_context will always be ready
    private shared_preferences(Context context){
        my_context = context;
    }

    //Gets the users current screen
    public static synchronized  shared_preferences getInstance(Context context){
        if (my_instance == null){
            my_instance = new shared_preferences(context);
        }
        return my_instance;
    }

    //Enables the user to login (accompanied by user backend via PHP)
    public void userLogin(user_object user){
        SharedPreferences shared_preferences = my_context.getSharedPreferences(SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = shared_preferences.edit();

        editor.putInt(KEY_ID, user.getId());
        editor.putString(KEY_USERNAME, user.getUsername());
        editor.putInt(KEY_POINTS, user.getPoints());
        editor.putInt(KEY_PHOTOS, user.getPhotos());
        editor.putInt(KEY_HIGHSCORE, user.getHighscore());

        editor.apply();
    }

    //Makes sure that the user is signed in at all times
    public boolean isLoggedIn(){
        SharedPreferences shared_preferences = my_context.getSharedPreferences(SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE);
        return shared_preferences.getString(KEY_USERNAME, null) != null;
    }

    //Gets the username (whether the vita explorandum mode is saved
    public user_object getUsername() {
        SharedPreferences shared_preferences = my_context.getSharedPreferences(SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE);
        return new user_object(
                shared_preferences.getInt(KEY_ID, 0),
                shared_preferences.getString(KEY_USERNAME, null),
                shared_preferences.getInt(KEY_POINTS, 0),
                shared_preferences.getInt(KEY_PHOTOS, 0),
                shared_preferences.getInt(KEY_HIGHSCORE, 0)
        );
    }
        //Signs out the user (when required)
        public static void logout(){
            SharedPreferences shared_preferences = my_context.getSharedPreferences(SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE);
            SharedPreferences.Editor editor = shared_preferences.edit();

            editor.clear();
            editor.apply();

            my_context.startActivity(new Intent(my_context, signin.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
    }
}