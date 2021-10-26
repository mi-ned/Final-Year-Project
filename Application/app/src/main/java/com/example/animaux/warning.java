package com.example.animaux;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

import androidx.appcompat.app.AppCompatActivity;

public class warning extends AppCompatActivity {
    //warning screen lasts for 4 seconds
    private final int display_length = 4000;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_warning);

        new Handler().postDelayed(new Runnable(){
            @Override
            public void run() {
                Intent intent = new Intent(warning.this, signin.class);
                warning.this.startActivity(intent);
                warning.this.finish();
            }
        }, display_length);
    }
}
