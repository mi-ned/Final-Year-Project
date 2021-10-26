package com.example.animaux;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class my_statistics extends Activity {

    //Global variables
    TextView tv_username, tv_total_points, tv_total_photos, tv_high_score, tv_average_score;
    Button button_back;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        themes.onActivityCreateSetTheme(this);
        setContentView(R.layout.activity_my_statistics);

        if(!shared_preferences.getInstance(this).isLoggedIn()){
            finish();
            startActivity(new Intent(my_statistics.this, signin.class));
        }

        //Global variables initialised
        tv_username = findViewById(R.id.button_profile);
        tv_total_points = findViewById(R.id.button_points);
        tv_total_photos = findViewById(R.id.button_photostaken);
        tv_high_score = findViewById(R.id.button_highscore);
        tv_average_score = findViewById(R.id.button_averagescore);
        button_back = findViewById(R.id.button_back);

        user_object user = shared_preferences.getInstance(this).getUsername();

        //User information gathered
        final String username = user.getUsername();
        final int user_points = user.getPoints();
        final int user_photos = user.getPhotos();
        final int user_high_score = user.getHighscore();
        final float user_average_score = (float) user_points / (float) user_photos;

        //Sets the my statistics page up
        tv_username.setText(username);
        tv_total_points.setText("Total points: "+String.valueOf(user_points));
        tv_total_photos.setText("Photos taken: "+String.valueOf(user_photos));
        tv_high_score.setText("High Score: "+String.valueOf(user_high_score));
        tv_average_score.setText("Points per Photo: "+String.valueOf(user_average_score));

        //User presses return
        button_back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                open_main_menu();
            }
        });
    }

    public void open_main_menu(){
        Intent intent = new Intent(this, mainmenu.class);
        user_settings.play_sound(this, R.raw.sound_back);
        startActivity(intent);
    }

    @Override
    public void onBackPressed() {
        //Back button disabled
    }
}