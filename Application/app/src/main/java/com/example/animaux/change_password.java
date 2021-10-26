package com.example.animaux;

import android.app.AlertDialog;
import android.content.DialogInterface;
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

public class change_password extends AppCompatActivity {

    //Global variables
    Button button_confirm_new_password, button_return;
    TextView tv_status;
    EditText et_new_password, et_new_password_repeat;
    user_object user;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        themes.onActivityCreateSetTheme(this);
        setContentView(R.layout.activity_change_password);
        user_settings.stop();

        if (!shared_preferences.getInstance(this).isLoggedIn()) {
            finish();
            startActivity(new Intent(this, signin.class));
            return;
        }

        //Global variables initialised
        et_new_password = findViewById(R.id.editText_newpassword);
        et_new_password_repeat = findViewById(R.id.editText_confirmnewpassword);
        button_confirm_new_password = findViewById(R.id.button_confirm);
        button_return = findViewById(R.id.button_return);
        tv_status = findViewById(R.id.textview_status);

        //User presses confirm new password button
        button_confirm_new_password.setOnClickListener(new View.OnClickListener() {
            //Dialog box opens up
            @Override
            public void onClick(View view) {
                user_settings.play_sound(change_password.this, R.raw.sound_button);
                AlertDialog.Builder dialog_builder = new AlertDialog.Builder(
                        change_password.this, android.app.AlertDialog.THEME_DEVICE_DEFAULT_DARK);
                dialog_builder.setTitle("Change Password");
                dialog_builder.setMessage("You are about to change your password...\nAre you sure you want to proceed?");
                //Cancel button
                dialog_builder.setPositiveButton("CANCEL",
                        new DialogInterface.OnClickListener() {
                            //Dialog box closes
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                user_settings.play_sound(change_password.this, R.raw.sound_back);
                            }
                        });
                dialog_builder.setNegativeButton("PROCEED",
                        new DialogInterface.OnClickListener() {
                            //User password changes; user signs out
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                user_settings.play_sound(change_password.this, R.raw.sound_button);
                                change_user_password();
                            }
                        });
                AlertDialog dialog = dialog_builder.create();
                dialog.show();

            }
        });

        //Return button
        button_return.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                user_settings.play_sound(change_password.this, R.raw.sound_back);
                startActivity(new Intent(change_password.this, settings.class));
            }
        });
    }

    //Changing password method
    private void change_user_password() {
        final String new_password = et_new_password.getText().toString().trim();
        final String repeat_new_password = et_new_password_repeat.getText().toString().trim();

        //Empty fields
        if (TextUtils.isEmpty(new_password)) {
            tv_status.setText("Missing field: Enter your new password");
            return;
        }

        if (TextUtils.isEmpty(repeat_new_password)) {
            tv_status.setText("Missing field: Re-enter your new password again");
            return;
        }

        //Passwords not matching
        if(!new_password.equals(repeat_new_password) && !repeat_new_password.equals(new_password)) {
            tv_status.setText("New passwords do not match");
            return;
        }

        //Invalid password format
        if (!is_password_valid(new_password) || (!is_password_valid(repeat_new_password))) {
            tv_status.setText("Passwords must contain at least ONE of the following: " +
                    "uppercase letter," +
                    "lowercase letter," +
                    "numerical value, " +
                    "special character" +
                    " AND must be between 6 and 12 characters");
            return;
        }

        //changePassword innerclass
        class changePassword extends AsyncTask<Void, Void, String> {

            final int user_id = user.getId();

            //Password is changing in background
            @Override
            protected String doInBackground(Void... voids) {
                request_handler requestHandler = new request_handler();

                HashMap<String, String> user_parameters = new HashMap<>();

                user_parameters.put("id", String.valueOf(user_id));
                user_parameters.put("password", repeat_new_password);

                return requestHandler.sendPostRequest(URLs.URL_CHANGE, user_parameters);
            }

            //Before execution
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
            }

            //Execution takes place
            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                try {
                    JSONObject object = new JSONObject(s);

                    //If password is changed successfully
                    if (!object.getBoolean("error")) {
                        Toast.makeText(getApplicationContext(), object.getString("message"), Toast.LENGTH_SHORT).show();

                        user = shared_preferences.getInstance(change_password.this).getUsername();
                        user.setId(user_id);

                        finish();
                        shared_preferences.logout();
                    }

                    //If password exists
                    else {
                        tv_status.setText(object.getString("message"));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        //Inner class gets executed
        changePassword cp = new changePassword();
        cp.execute();
    }

    //Regulates the password conditions
    public boolean is_password_valid(final String password) {
        Pattern pattern;
        Matcher pattern_matcher;

        final String PASSWORD_PATTERN = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{6,12}$";

        pattern = Pattern.compile(PASSWORD_PATTERN);
        pattern_matcher = pattern.matcher(password);

        return pattern_matcher.matches();
    }

    //Phones' back button disabled
    @Override
    public void onBackPressed() {

    }
}