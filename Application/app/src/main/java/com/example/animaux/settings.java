package com.example.animaux;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;

public class settings extends AppCompatActivity {

    //Global variables
    TextView tv_username;
    user_object user;
    Switch switch_background_music, switch_sound_effects;
    Button button_delete, button_back, button_change_password;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        themes.onActivityCreateSetTheme(this);
        user_settings.play_music(this, R.raw.music_settings);
        setContentView(R.layout.activity_settings);
        setup_spinner_selection();
        load_settings();

        //Initialising global variables
        switch_background_music = findViewById(R.id.button_bgmusic);
        switch_sound_effects = findViewById(R.id.button_soundfx);
        button_delete = findViewById(R.id.button_delete);
        button_back = findViewById(R.id.button_back);
        button_change_password = findViewById(R.id.button_changepassword);

        if(!shared_preferences.getInstance(this).isLoggedIn()){
            finish();
            startActivity(new Intent(settings.this, signin.class));
        }

        tv_username = findViewById(R.id.button_username);
        user_object user = shared_preferences.getInstance(this).getUsername();
        tv_username.setText("YOU ARE: " + user.getUsername());

        //User presses change password
        button_change_password.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                open_update_password();
            }
        });

        //User presses delete account
        button_delete.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view) {
                open_delete();
            }
        });

        //User presses return
        button_back.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view) {
                open_main_menu();
            }
        });
    }

    private void load_settings(){
        Switch switch_sfx = findViewById(R.id.button_soundfx);
        switch_sfx.setChecked(user_settings.sfx);

        Switch switch_bgm = findViewById(R.id.button_bgmusic);
        switch_bgm.setChecked(user_settings.bgm);
    }

    //User can change theme
    private void setup_spinner_selection(){
        Spinner spThemes = findViewById(R.id.button_theme);
        spThemes.setSelection(user_settings.currentTheme);
        user_settings.currentTheme = spThemes.getSelectedItemPosition();
        spThemes.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener(){

            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                if(user_settings.currentTheme != position){
                    themes.changeToTheme(settings.this, position);
                }
                user_settings.currentTheme = position;
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

    }

    //User presses switch sfx switch
    public void switch_sfx(View view){
        user_settings.sfx = switch_sound_effects.isChecked();
    }

    //User presses switch background music switch
    public void switch_bgm(View view){
        user_settings.bgm = switch_background_music.isChecked();
        if (user_settings.bgm = switch_background_music.isChecked()){
            user_settings.play_music(this, R.raw.music_settings);
        }
        else{
            user_settings.stop();
        }
    }

    public void open_update_password(){
        Intent intent = new Intent(this, change_password.class);
        user_settings.play_sound(this, R.raw.sound_button);
        startActivity(intent);
    }

    public void open_delete(){
        Button delete = findViewById(R.id.button_delete);
        if (delete.isPressed()) {
            user_settings.play_sound(settings.this, R.raw.sound_button);
            AlertDialog.Builder dialog_builder = new AlertDialog.Builder(
                    settings.this, android.app.AlertDialog.THEME_DEVICE_DEFAULT_DARK);
            dialog_builder.setTitle("Delete Account");
            dialog_builder.setMessage("You are about to delete your account\n" +
                    "Are you sure you want to proceed?");
            //User cancels
            dialog_builder.setPositiveButton("CANCEL",
                    new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            user_settings.play_sound(settings.this, R.raw.sound_back);
                        }
                    });
            //User deletes account
            dialog_builder.setNegativeButton("DELETE",
                    new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            user_settings.play_sound(settings.this, R.raw.sound_button);
                            delete_account();
                            shared_preferences.logout();
                        }
                    });
            AlertDialog dialog = dialog_builder.create();
            dialog.show();
        }
    }

    public void open_main_menu(){
        Intent intent = new Intent(this, mainmenu.class);
        user_settings.play_sound(settings.this, R.raw.sound_back);
        startActivity(intent);
    }


    private void delete_account(){
        final int user_id = user.getId();

        //Inner class is called to delete user account
        class deleteAccount extends AsyncTask<Void, Void, String> {

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
            }

            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                //Account is successfully deleted
                try {
                    JSONObject object = new JSONObject(s);

                    if (!object.getBoolean("error")) {
                        Toast.makeText(getApplicationContext(), object.getString("message"), Toast.LENGTH_SHORT).show();

                        user_object user = shared_preferences.getInstance(settings.this).getUsername();
                        user.setId(user_id);

                        finish();
                    }
                }
                catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            //Account details sent to user backend
            @Override
            protected String doInBackground(Void... voids) {
                request_handler requestHandler = new request_handler();
                HashMap<String, String> params = new HashMap<>();
                params.put("id", String.valueOf(user.getId()));
                return requestHandler.sendPostRequest(URLs.URL_DELETE, params);
            }
        }
        deleteAccount delete = new deleteAccount();
        delete.execute();
    }

    @Override
    public void onBackPressed() {

    }
}