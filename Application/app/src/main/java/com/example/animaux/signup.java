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

public class signup extends AppCompatActivity {

    //Global variables
    EditText et_username, et_password, et_repeat_password;
    TextView tv_status;
    Button button_signup, button_signin;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        themes.onActivityCreateSetTheme(this);
        setContentView(R.layout.activity_signup);
        user_settings.stop();

        //Initialising global variables
        button_signup = findViewById(R.id.button_signup);
        button_signin = findViewById(R.id.button_signin);
        tv_status = findViewById(R.id.textview_status);
        et_username = findViewById(R.id.editText_addusername);
        et_password = findViewById(R.id.editText_addpassword);
        et_repeat_password = findViewById(R.id.editText_confirmpassword);

        //User pressing signup
        button_signup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                user_settings.play_sound(signup.this, R.raw.sound_button);
                add_user();
            }
        });

        //User pressing signin
        button_signin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
                user_settings.play_sound(signup.this, R.raw.sound_back);
                startActivity(new Intent(signup.this, signin.class));
            }
        });

    }

    private void add_user() {
        final String username = et_username.getText().toString().trim();
        final String password = et_password.getText().toString().trim();
        final String password_repeat = et_repeat_password.getText().toString().trim();

        //Empty fields
        if (TextUtils.isEmpty(username)) {
            tv_status.setText("Please enter a username");
            return;
        }

        if (TextUtils.isEmpty(password)) {
            tv_status.setText("Please enter a password");
            return;
        }

        if (TextUtils.isEmpty(password_repeat)) {
            tv_status.setText("Please re-enter your password");
            return;
        }

        //Passwords not matching
        if (!password.equals(password_repeat) && (!password_repeat.equals(password))) {
            tv_status.setText("Passwords do not match");
            return;
        }

        //If password isn't up to standards
        if (!is_password_valid(password) || (!is_password_valid(password_repeat))) {
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

        //Signup inner class
        class userAdded extends AsyncTask<Void, Void, String> {
            @Override
            protected String doInBackground(Void... voids) {
                //Creates and returns a new request handler
                request_handler request_handle = new request_handler();

                HashMap<String, String> params = new HashMap<>();
                params.put("username", username);
                params.put("password", password);

                return request_handle.sendPostRequest(URLs.URL_SIGNUP, params);
            }

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
            }

            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                //Creates a new json object
                try {
                    JSONObject object = new JSONObject(s);

                    //If the appropriate username/passwords are selected
                    if (!object.getBoolean("error")) {
                        Toast.makeText(getApplicationContext(), object.getString("message"), Toast.LENGTH_SHORT).show();

                        JSONObject userJson = object.getJSONObject("user");

                        user_object user = new user_object(
                                userJson.getInt("id"),
                                userJson.getString("username"),
                                userJson.getInt("points"),
                                userJson.getInt("photos"),
                                userJson.getInt("highscore")
                        );
                        //signs up the user
                        shared_preferences.getInstance(getApplicationContext()).userLogin(user);
                        finish();
                        startActivity(new Intent(getApplicationContext(), signin.class));
                    }
                    //Username already exists on database
                    else {
                        tv_status.setText(object.getString("message"));
                    }
                }
                catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }

        //Inner class executed
        userAdded add = new userAdded();
        add.execute();
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