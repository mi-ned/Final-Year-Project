package com.example.animaux;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class rankings extends AppCompatActivity {

    //Global variables
    private RecyclerView recycler_view;
    private RecyclerView.LayoutManager layout_manager;
    private RecyclerView.Adapter my_adapter;
    private List<player_object> players;
    Button button_back;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        themes.onActivityCreateSetTheme(this);
        setContentView(R.layout.activity_rankings);
        user_settings.play_music(this, R.raw.music_rankings);

        recycler_view = findViewById(R.id.listView);

        //Lays out the recyclerview
        layout_manager = new GridLayoutManager(rankings.this, 1);
        recycler_view.setLayoutManager(layout_manager);
        players = new ArrayList<>();

        if (!shared_preferences.getInstance(this).isLoggedIn()) {
            finish();
            startActivity(new Intent(rankings.this, signin.class));
        }

        //Rankings page is up
        get_players();

        //User presses return
        button_back = findViewById(R.id.button_back);
        button_back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                open_main_menu();
            }
        });
    }

    //Player information is displayed in ranked order
    private void get_players(){
        StringRequest stringRequest = new StringRequest(Request.Method.GET, URLs.URL_RANKING,
                new Response.Listener<String>(){
                    @Override
                    public void onResponse(String response) {
                        try{
                            JSONArray array = new JSONArray(response);
                            for (int i = 0 ; i<array.length() ; i++){
                                JSONObject object = array.getJSONObject(i);

                                String player = object.getString("username");
                                int points = object.getInt("points");
                                int photos = object.getInt("photos");
                                int highscore = object.getInt("highscore");

                                player_object gamer = new player_object(player, points, photos, highscore);
                                players.add(gamer);
                            }
                        }
                        catch(Exception e){
                            e.printStackTrace();
                        }

                        my_adapter = new rankings_recycler(rankings.this, players);
                        recycler_view.setAdapter(my_adapter);

                    }
                    //If the internet doesn't work
                }, new Response.ErrorListener(){
            @Override
            public void onErrorResponse(VolleyError error){

                Toast.makeText(rankings.this, "internet gone", Toast.LENGTH_SHORT).show();
            }
        });
        Volley.newRequestQueue(rankings.this).add(stringRequest);
    }

    public void open_main_menu(){
        Intent intent = new Intent(this, mainmenu.class);
        user_settings.play_sound(this, R.raw.sound_back);
        startActivity(intent);
    }

    @Override
    public void onBackPressed() {

    }
}