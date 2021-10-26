package com.example.animaux;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import java.util.List;

public class rankings_recycler extends RecyclerView.Adapter<rankings_recycler.MyViewHolder> {

    private Context context;
    private List<player_object> players;

    public rankings_recycler(Context context, List<player_object> players){
        this.context = context;
        this.players = players;
    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {

        View view = LayoutInflater.from(context).inflate(R.layout.activity_rankings_row,parent,false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(MyViewHolder holder, int position) {

        player_object player = players.get(position);

        holder.rank.setText(Integer.toString(position+1));
        holder.gamer.setText(player.getPlayer());
        holder.points.setText("Total Points: "+Integer.toString(player.getPoints()));
        holder.photos.setText("Total Photos: "+Integer.toString(player.getPhotos()));
        holder.highscore.setText("High Score: "+Integer.toString(player.getHighscore()));
    }

    @Override
    public int getItemCount() {
        return players.size();
    }

    class MyViewHolder extends RecyclerView.ViewHolder {
        TextView rank;
        TextView gamer;
        TextView points;
        TextView photos;
        TextView highscore;
        LinearLayout container;

        public MyViewHolder (View view){
            super(view);
            rank = view.findViewById(R.id.textView_rank);
            gamer = view.findViewById(R.id.textView_player);
            points = view.findViewById(R.id.textView_points);
            photos = view.findViewById(R.id.textView_photos);
            highscore = view.findViewById(R.id.textView_highscore);
            container = view.findViewById(R.id.player_container);
        }
    }
}