package com.example.animaux;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

public class mainmenu extends AppCompatActivity {

    //Global variables
    Button button_vita_explorandum, button_natural_selection, button_my_statistics, button_sign_out, button_settings, button_rankings, button_info;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        themes.onActivityCreateSetTheme(this);
        setContentView(R.layout.activity_mainmenu);
        user_settings.play_music(this, R.raw.music_mainmenu);

        if(!shared_preferences.getInstance(this).isLoggedIn()){
            finish();
            startActivity(new Intent(mainmenu.this, signin.class));
        }

        //Global variables initialised
        button_vita_explorandum = findViewById(R.id.button_campaign);
        button_natural_selection = findViewById(R.id.button_natural);
        button_my_statistics = findViewById(R.id.button_profile);
        button_settings = findViewById(R.id.button_settings);
        button_rankings = findViewById(R.id.button_ranking);
        button_sign_out = findViewById(R.id.button_exit);
        button_info = findViewById(R.id.button_about);

        //User presses sign out button
        button_sign_out.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                user_settings.play_sound(mainmenu.this, R.raw.sound_button);
                Toast.makeText(mainmenu.this, "You've signed out", Toast.LENGTH_SHORT).show();
                finish();
                shared_preferences.getInstance(getApplicationContext()).logout();
            }
        });

        //User presses vita explorandum button
        button_vita_explorandum.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                open_vita_explorandum();
            }
        });

        //User presses natural selection button
        button_natural_selection.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                open_natural_selection();
            }
        });

        //User presses my statistics button
        button_my_statistics.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                open_my_statistics();
            }
        });

        //User presses settings button
        button_settings.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                open_settings();
            }
        });

        //User presses rankings button
        button_rankings.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                open_rankings();
            }
        });

        //User presses about us button
        button_info.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                open_about();
            }
        });
    }

    public void open_vita_explorandum(){
        Intent intent = new Intent(this, vita_explorandum.class);
        user_settings.play_sound(this, R.raw.sound_button);
        startActivity(intent);
    }

    public void open_natural_selection(){
        Intent intent = new Intent(this, natural_selection.class);
        user_settings.play_sound(this, R.raw.sound_button);
        startActivity(intent);
    }

    public void open_my_statistics(){
        user_settings.play_sound(this, R.raw.sound_button);
        Intent intent = new Intent(this, my_statistics.class);
        startActivity(intent);
    }

    public void open_settings(){
        Intent intent = new Intent(this, settings.class);
        user_settings.play_sound(this, R.raw.sound_button);
        startActivity(intent);
    }

    public void open_rankings(){
        Intent intent = new Intent(this, rankings.class);
        user_settings.play_sound(this, R.raw.sound_button);
        startActivity(intent);
    }

    public void open_about(){
        if (button_info.isPressed()) {
            user_settings.play_sound(this, R.raw.sound_button);
            AlertDialog.Builder dialog_builder = new AlertDialog.Builder(
                    mainmenu.this, android.app.AlertDialog.THEME_DEVICE_DEFAULT_DARK);
            dialog_builder.setTitle("About Animal App");
            dialog_builder.setMessage("This application was built as a Final Year Project\n\n" +
                    "Inspired by PictureThis and Pokémon\n\n" +
                    "Created by: Miroslav Nedeljkovic\n\n" +
                    "FYP supervisor: Dr. Stasha Lauria");
            //User closes dialog box
            dialog_builder.setPositiveButton("CLOSE",
                    new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            user_settings.play_sound(mainmenu.this, R.raw.sound_back);
                        }
                    });
            AlertDialog dialog = dialog_builder.create();
            dialog.show();
            }
        }

    @Override
    public void onBackPressed() {
        //Back button disabled
    }
}