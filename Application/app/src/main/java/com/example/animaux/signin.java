package com.example.animaux;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class signin extends AppCompatActivity {

    //Global variables
    EditText et_username, et_password;
    Button button_signup, button_signin;
    TextView tv_status;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        themes.onActivityCreateSetTheme(this);
        setContentView(R.layout.activity_signin);
        user_settings.stop();

        //Initialises the global variables
        et_username = findViewById(R.id.editText_username);
        et_password = findViewById(R.id.editText_password);
        button_signin = findViewById(R.id.button_signin);
        button_signup = findViewById(R.id.button_signup);
        tv_status = findViewById(R.id.textview_status);

        //User presses sign-in
        button_signin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                user_settings.play_sound(signin.this, R.raw.sound_button);
                user_login();
            }
        });

        //User presses signup
        button_signup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
                user_settings.play_sound(signin.this, R.raw.sound_button);
                startActivity(new Intent(signin.this, signup.class));
            }
        });
    }

    //User tries to sign-in
    private void user_login() {
        final String username = et_username.getText().toString();
        final String password = et_password.getText().toString();

        //validating inputs
        if (TextUtils.isEmpty(username)) {
            tv_status.setText("Please enter your username");
            return;
        }

        if (TextUtils.isEmpty(password)) {
            tv_status.setText("Please enter your password");
            return;
        }

        if (!is_password_valid(password)) {
            tv_status.setText("Passwords must contain at least ONE of the following: " +
                    "uppercase letter," +
                    "lowercase letter," +
                    "numerical value, " +
                    "special character" +
                    " AND must be between 6 and 12 characters");
            return;
        }

        //If username isn't up to standards
        if(!is_username_legit(username)){
            tv_status.setText("Username must contain between 4 and 12 charachters");
            return;
        }

        //Signin inner class
        class signIn extends AsyncTask<Void, Void, String> {

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
            }

            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);

                try {
                    JSONObject object = new JSONObject(s);

                    //If username and password matches the database
                    if (!object.getBoolean("error")) {
                        Toast.makeText(getApplicationContext(), object.getString("message"), Toast.LENGTH_SHORT).show();
                        JSONObject userJson = object.getJSONObject("user");
                        //Makes a new session for the user
                        user_object user = new user_object(
                                userJson.getInt("id"),
                                userJson.getString("username"),
                                userJson.getInt("points"),
                                userJson.getInt("photos"),
                                userJson.getInt("highscore")
                        );
                        shared_preferences.getInstance(getApplicationContext()).userLogin(user);
                        finish();
                        startActivity(new Intent(getApplicationContext(), mainmenu.class));
                    }
                    //If username and/or password is incorrect
                    else {
                        tv_status.setText("Incorrect username or password");
                    }
                }
                catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            //Client sends the collected parameters to user backend to check if password is correct
            @Override
            protected String doInBackground(Void... voids) {
                request_handler requestHandler = new request_handler();

                HashMap<String, String> params = new HashMap<>();
                params.put("username", username);
                params.put("password", password);

                return requestHandler.sendPostRequest(URLs.URL_SIGNIN, params);
            }
        }
        //Execures the inner class
        signIn sign = new signIn();
        sign.execute();
    }

    //If username meets certain rules
    public boolean is_username_legit(final String username) {
        Pattern pattern;
        Matcher matcher;

        final String USERNAME_PATTERN = "^[A-Za-z\\d]{4,12}";

        pattern = Pattern.compile(USERNAME_PATTERN);
        matcher = pattern.matcher(username);

        return matcher.matches();
    }

    //If the password meets certain rules
    public boolean is_password_valid(final String password) {
        Pattern pattern;
        Matcher matcher;
        final String PASSWORD_PATTERN = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{6,12}$";

        pattern = Pattern.compile(PASSWORD_PATTERN);
        matcher = pattern.matcher(password);

        return matcher.matches();
    }

    @Override
    public void onBackPressed() {

    }
}