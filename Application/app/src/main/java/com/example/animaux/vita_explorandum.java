package com.example.animaux;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.util.Rational;
import android.util.Size;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.CameraX;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureConfig;
import androidx.camera.core.Preview;
import androidx.camera.core.PreviewConfig;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class vita_explorandum extends AppCompatActivity {

    //Global variables
    user_object user;

    public int photos_taken = 0;
    public int total_points = 0;
    public int high_score = user.getHighscore();
    public static String status;

    Button button_takephoto;
    Button button_back;
    Button button_tips;
    TextView textview_photos;
    TextView textview_points;
    TextView textview_hiscore;
    TextView response_text;
    TextureView camera_view;
    ProgressBar circle_loading;
    ImageView image_view;

    //Camera permission codes
    private int REQUEST_CODE_PERMISSIONS = 101;
    private String[] REQUIRED_PERMISSIONS = new String[]{Manifest.permission.CAMERA};

    //database helpers
    private static SQLiteOpenHelper sqLiteOpenHelper;
    database_helper animal_db;
    public static List<String> data;

    //Dialog box view
    ArrayAdapter<String> adapter;
    ListView listView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        themes.onActivityCreateSetTheme(this);
        user_settings.stop();
        setContentView(R.layout.activity_campaign);

        if(!shared_preferences.getInstance(this).isLoggedIn()){
            finish();
            startActivity(new Intent(vita_explorandum.this, signin.class));
        }

        //Global variables initialised
        response_text = findViewById(R.id.textview_response);
        textview_photos = findViewById(R.id.textview_photos);
        textview_points = findViewById(R.id.textview_points);
        textview_hiscore = findViewById(R.id.textview_highscore);
        camera_view = findViewById(R.id.camera_view);
        circle_loading = findViewById(R.id.circle_loading);
        image_view = findViewById(R.id.image_view);
        button_takephoto = findViewById(R.id.button_shoot);
        button_back = findViewById(R.id.button_back);
        button_tips = findViewById(R.id.button_tips);

        status = "Ready when you are...";
        response_text.setText(status);
        textview_photos.setText("Photos Taken: " + Integer.toString(photos_taken));
        textview_points.setText("Total Points: " + Integer.toString(total_points));
        textview_hiscore.setText("High Score: " + Integer.toString(high_score));

        //Camera on the ready
        camera_view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                updateTransform();
            }
        });

        //Checks camera permissions
        if (allPermissionGranted()) {
            camera_view.post(new Runnable() {
                @Override
                public void run() {
                    startCamera();
                }
            });
        }
        //Asks user permissions
        else {
            ActivityCompat.requestPermissions(
                    this, REQUIRED_PERMISSIONS, REQUEST_CODE_PERMISSIONS);
        }

        //User presses back
        button_back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                open_back();
            }
        });

        //User presses tips
        button_tips.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                open_tips();
            }
        });

    }


    public void open_back(){
        if (button_back.isPressed()) {
            user_settings.play_sound(vita_explorandum.this, R.raw.sound_button);
            AlertDialog.Builder builder = new AlertDialog.Builder(
                    vita_explorandum.this, AlertDialog.THEME_DEVICE_DEFAULT_DARK);
            builder.setTitle("Return to Menu");
            builder.setMessage("You are about to quit the game?\n" +
                    "Progress will be saved");
            //Cancel button
            builder.setPositiveButton("NO",
                    new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            user_settings.play_sound(vita_explorandum.this, R.raw.sound_back);
                        }
                    });
            //Quit button
            builder.setNegativeButton("YES",
                    new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            Intent intent = new Intent(vita_explorandum.this, mainmenu.class);
                            user_settings.play_sound(vita_explorandum.this, R.raw.sound_button);
                            Toast.makeText(vita_explorandum.this, "Profile will update after next signin", Toast.LENGTH_LONG).show();
                            //points get added
                            addpoints();
                            startActivity(intent);
                        }
                    });
            AlertDialog dialog = builder.create();
            dialog.show();
        }
    }

    public void open_tips(){
        if(button_tips.isPressed()){
            user_settings.play_sound(vita_explorandum.this, R.raw.sound_button);
            AlertDialog.Builder dialog_builder = new AlertDialog.Builder(
                    vita_explorandum.this, AlertDialog.THEME_DEVICE_DEFAULT_DARK);
            dialog_builder.setTitle("The aim of the game...");
            dialog_builder.setMessage("1. Focus the animal in the center of the " +
                    "camera view, avoid dark or blurry images\n\n" +
                    "2. If the animal is too big for the camera view, just " +
                    "make sure to include the face of the animal\n\n" +
                    "3. Avoid getting too close, just to make sure the animal " +
                    "doesn't pose any danger to you or itself\n\n" +
                    "4. Only include one animal at a time\n\n" +
                    "5. Points range from 1 to 6: The rarer and unique the animal, the " +
                    "more points you can score\n\n" +
                    "6. Example animal points:\n" +
                    "1 - Dog, Cat, Pigeon\n" +
                    "2 - Parrot, Guinea Pig, Fox\n" +
                    "3 - Common Frog, Deer, Cellar Spider\n" +
                    "4 - Brown Bear, Adder Snake, Elephant\n" +
                    "6 - Tiger, Clownfish, Vulture\n\n" +
                            "Finally, Enjoy vita explorandum"
                    );
            //Closes the dialog box
            dialog_builder.setPositiveButton("CLOSE",
                    new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            user_settings.play_sound(vita_explorandum.this, R.raw.sound_back);
                        }
                    });
            AlertDialog dialog = dialog_builder.create();
            dialog.show();
        }
    }

    //Changes camera frame after frame
    private void updateTransform() {
        Matrix matrix = new Matrix();

        int center_x = camera_view.getWidth() / 2;
        int center_y = camera_view.getHeight() / 2;

        int rotation_angle = 0;

        switch (camera_view.getDisplay().getRotation()) {
            case Surface.ROTATION_0:
                rotation_angle = 0;
                break;

            case Surface.ROTATION_90:
                rotation_angle = 90;
                break;

            case Surface.ROTATION_180:
                rotation_angle = 180;
                break;

            case Surface.ROTATION_270:
                rotation_angle = 270;
                break;

            default:
                return;
        }
        matrix.postRotate(-rotation_angle, center_x, center_y);
        camera_view.setTransform(matrix);
    }

    //Requests user permissions
    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (requestCode == REQUEST_CODE_PERMISSIONS) {
            if (allPermissionGranted()) {
                camera_view.post(new Runnable() {
                    @Override
                    public void run() {
                        startCamera();
                    }
                });
            }
        }
    }

    //Camera starts
    private void startCamera() {
        PreviewConfig previewConfig = new PreviewConfig.Builder()
                .setTargetAspectRatio(new Rational(1, 1))
                .setTargetResolution(new Size(1080, 1080))
                .build();

        Preview preview = new Preview(previewConfig);

        preview.setOnPreviewOutputUpdateListener(new Preview.OnPreviewOutputUpdateListener() {
            @Override
            public void onUpdated(Preview.PreviewOutput output) {
                ViewGroup parent = (ViewGroup) camera_view.getParent();
                parent.removeView(camera_view);
                parent.addView(camera_view, 0);


                camera_view.setSurfaceTexture(output.getSurfaceTexture());
                updateTransform();
            }
        });

        //When the image gets captured
        ImageCaptureConfig imageCaptureConfig = new ImageCaptureConfig.Builder()
                .setTargetAspectRatio(new Rational(1, 1))
                .setCaptureMode(ImageCapture.CaptureMode.MIN_LATENCY)
                .build();

        final ImageCapture imageCapture = new ImageCapture(imageCaptureConfig);

        //User presses shutter button
        button_takephoto.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                File file = new File(getExternalMediaDirs()[0], "photo-" + System.currentTimeMillis() + ".jpg");
                user_settings.play_sound(vita_explorandum.this, R.raw.sound_camera);
                imageCapture.takePicture(file, new ImageCapture.OnImageSavedListener() {
                    @Override
                    public void onImageSaved(@NonNull File file) {
                        Toast.makeText(vita_explorandum.this, "Photo saved to your phone", Toast.LENGTH_SHORT).show();

                        response_text.setVisibility(View.INVISIBLE);
                        circle_loading.setVisibility(View.VISIBLE);
                        camera_view.setVisibility(View.GONE);
                        image_view.setVisibility(View.VISIBLE);

                        //picture gets converted into jpg format
                        ByteArrayOutputStream stream = new ByteArrayOutputStream();
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                        try {
                            Bitmap bitmap = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, stream);
                            image_view.setImageBitmap(bitmap);

                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        byte[] byteArray = stream.toByteArray();

                        image_view.setRotation(90);

                        RequestBody post_body = new MultipartBody.Builder()
                                .setType(MultipartBody.FORM)
                                .addFormDataPart("image", "Picture.jpg", RequestBody.create(MediaType.parse("image/*jpg"), byteArray))
                                .build();

                        button_takephoto.setVisibility(View.INVISIBLE);
                        button_back.setEnabled(false);
                        button_tips.setEnabled(false);

                        postRequest(URLs.AI_URL, post_body);
                    }

                    //If photo doesn't get saved
                    @Override
                    public void onError(@NonNull ImageCapture.ImageCaptureError imageCaptureError, @NonNull String message, @Nullable Throwable cause) {
                        Toast.makeText(vita_explorandum.this, "Failed to save photo", Toast.LENGTH_SHORT).show();
                        if (cause != null)
                            cause.printStackTrace();
                    }
                });
            }
        });

        //Camera lifecycle transforms: from preview to picture taken
        CameraX.bindToLifecycle(this, preview, imageCapture);

    }

    //Checks all permissions
    private boolean allPermissionGranted() {
        for (String permission : REQUIRED_PERMISSIONS) {
            if (ContextCompat.checkSelfPermission(this, permission) != PackageManager.PERMISSION_GRANTED) {
                return false;
            }
        }
        return true;
    }

    //Attempt to communicate to the server
    void postRequest(String postUrl, RequestBody postBody) {
        OkHttpClient client = new OkHttpClient();

        Request request = new Request.Builder()
                .url(postUrl)
                .post(postBody)
                .build();

        client.newCall(request).enqueue(new Callback() {

            //If server fails
            @Override
            public void onFailure(Call call, IOException e) {
                call.cancel();
                Log.d("Fail", e.getMessage());

                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        circle_loading.setVisibility(View.INVISIBLE);
                        response_text.setVisibility(View.VISIBLE);
                        status = "Server Connection Failed";
                        response_text.setText(status);
                        button_takephoto.setVisibility(View.VISIBLE);
                        camera_view.setVisibility(View.VISIBLE);
                        image_view.setVisibility(View.GONE);
                        button_back.setEnabled(true);
                        button_tips.setEnabled(true);
                    }
                });
            }

            //If connection is successful
            @Override
            public void onResponse(Call call, final Response response) throws IOException {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        response_text.setVisibility(View.VISIBLE);
                        try {
                            circle_loading.setVisibility(View.INVISIBLE);
                            status = response.body().string();
                            response_text.setText(status);

                            //ML model fails to get a good accuracy rate
                            if (status.equals(
                                    "Image not known; please try again")) {
                                textview_photos = findViewById(R.id.textview_photos); 
                                photos_taken = photos_taken + 0;
                                textview_photos.setText("Photos Taken: " + Integer.toString(photos_taken)); 

                                textview_points = findViewById(R.id.textview_points);
                                total_points = total_points + 0;
                                textview_points.setText("Total Points : " + Integer.toString(total_points));

                                button_takephoto.setVisibility(View.VISIBLE);
                                camera_view.setVisibility(View.VISIBLE);
                                image_view.setVisibility(View.GONE);
                                button_back.setEnabled(true);
                                button_tips.setEnabled(true);
                            }

                            //If there's any decent accuracy
                            else if (status.contains(
                                    "I think that is a")) {
                                textview_photos = findViewById(R.id.textview_photos);
                                photos_taken = photos_taken + 0;
                                textview_photos.setText("Photos Taken: " + Integer.toString(photos_taken));

                                textview_points = findViewById(R.id.textview_points);
                                total_points = total_points + 0;
                                textview_points.setText("Total Points : " + Integer.toString(total_points));

                                button_takephoto.setVisibility(View.VISIBLE);

                                camera_view.setVisibility(View.VISIBLE);
                                image_view.setVisibility(View.GONE);
                                button_back.setEnabled(true);
                                button_tips.setEnabled(true);
                            }

                            //if accuracy is over 50%
                            else if (status.contains("Let me think...")){
                                textview_photos = findViewById(R.id.textview_photos);
                                photos_taken = photos_taken + 1;
                                textview_photos.setText("Photos Taken: " + Integer.toString(photos_taken));

                                textview_points = findViewById(R.id.textview_points);
                                total_points = total_points + 0;
                                textview_points.setText("Total Points : " + Integer.toString(total_points));

                                button_takephoto.setVisibility(View.VISIBLE);

                                camera_view.setVisibility(View.VISIBLE);
                                image_view.setVisibility(View.GONE);
                                button_back.setEnabled(true);
                                button_tips.setEnabled(true);
                            }

                            //if accuracy is over 75%
                            else {
                                    fetchData();
                                    textview_photos = findViewById(R.id.textview_photos);
                                    photos_taken = photos_taken + 1;
                                    textview_photos.setText("Photos Taken: " + Integer.toString(photos_taken));

                                    textview_points = findViewById(R.id.textview_points);
                                    String animal_value = String.valueOf(data.get(25));
                                    int value = Integer.parseInt(animal_value);
                                    total_points = total_points + value;
                                    textview_points.setText("Total Points : " + Integer.toString(total_points));

                                    showFacts();

                                    button_takephoto.setVisibility(View.VISIBLE);

                                    camera_view.setVisibility(View.VISIBLE);
                                    image_view.setVisibility(View.GONE);
                                    button_back.setEnabled(true);
                                    button_tips.setEnabled(true);

                                    if(total_points > high_score) {
                                        response_text.setText("New High Score");
                                        high_score = total_points;
                                        textview_hiscore.setText("High Score: " + high_score);
                                    }
                                }
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        });
    }

    //Facts are shown in a dialog box form (if the accuracy is > 75%)
    public void showFacts(){
        final AlertDialog.Builder alertDialog = new AlertDialog.Builder(vita_explorandum.this);
        final View rowList = getLayoutInflater().inflate(R.layout.dialog_facts, null);
        listView = rowList.findViewById(R.id.listView);
        adapter = new ArrayAdapter<>(vita_explorandum.this, android.R.layout.simple_list_item_1, data);
        listView.setAdapter(adapter);
        adapter.notifyDataSetChanged();
        alertDialog.setView(rowList);
        Button X = rowList.findViewById(R.id.button_close);
        final  AlertDialog dialog = alertDialog.create();
        X.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                user_settings.play_sound(vita_explorandum.this, R.raw.sound_back);
                dialog.dismiss();
                response_text.setText("Take another picture...");
            }
        });
        dialog.show();
    }
    

    //If user quits the game
    private void addpoints() {
        final int points = total_points;
        final int photos = photos_taken;
        final int hi_score = high_score;

        //points get updated
        class AddPoints extends AsyncTask<Void, Void, String> {

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
            }

            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);

                try {
                    JSONObject object = new JSONObject(s);
                    //Connection successful
                    if (!object.getBoolean("error")) {
                        Toast.makeText(getApplicationContext(), object.getString("message"), Toast.LENGTH_SHORT).show();

                        //sends these parameters
                        user_object player = shared_preferences.getInstance(vita_explorandum.this).getUsername();
                        player.setPoints(points);
                        player.setPhotos(photos);
                        player.setHighscore(hi_score);

                        finish();
                        startActivity(new Intent(getApplicationContext(), mainmenu.class));
                    }

                    else{
                        Toast.makeText(getApplicationContext(),"Internet connection failed", Toast.LENGTH_SHORT).show();
                    }
                }
                catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            //Updates the user scores in background
            @Override
            protected String doInBackground(Void... voids) {
                request_handler requestHandler = new request_handler();

                HashMap<String, String> params = new HashMap<>();
                params.put("id", String.valueOf(user_object.getId()));
                params.put("points", String.valueOf(points));
                params.put("photos", String.valueOf(photos));
                params.put("highscore", String.valueOf(hi_score));

                return requestHandler.sendPostRequest(URLs.URL_GAME, params);
            }
        }
        AddPoints ap = new AddPoints();
        ap.execute();
    }

    //Data is fetched from the database via database_helper class
    public void fetchData()
    {
        animal_db = new database_helper(this);
        try{
            animal_db.createDataBase();
            animal_db.open_database();
        } catch (Exception e){
            e.printStackTrace();
        }
        data = getAnimalData(this);
    }

    //Data is gathered through SQL querying
    public static List<String> getAnimalData(Activity activity){
        sqLiteOpenHelper = new database_helper(activity);
        SQLiteDatabase db = sqLiteOpenHelper.getWritableDatabase();

        List<String> list = new ArrayList<>();
        String query = "SELECT * FROM animal_data WHERE animal_name = "+ "\'" + status +"\'";
        Cursor cursor = db.rawQuery(query, null);

        if (cursor.moveToFirst()) {
            do {
                list.add(cursor.getString(1));
                list.add("Scientific name: " + cursor.getString(2));
                list.add("Also known as: " + cursor.getString(3));
                list.add("Class: " + cursor.getString(4));
                list.add("Conservation status: " + cursor.getString(5));
                list.add("Prey: "+ cursor.getString(6));
                list.add("Name of young: " + cursor.getString(7));
                list.add("Group Behaviour: " + cursor.getString(8));
                list.add("Fun fact: " + cursor.getString(9));
                list.add("Est. population size: " + cursor.getString(10));
                list.add("Biggest threat: " + cursor.getString(11));
                list.add("Most distinctive feature: " + cursor.getString(12));
                list.add("Habitat: " + cursor.getString(13));
                list.add("Diet: " + cursor.getString(14));
                list.add("Predators/Enemies: " + cursor.getString(15));
                list.add("Lifestyle: " + cursor.getString(16));
                list.add("No. of Variants: " + cursor.getString(17));
                list.add("Location(s): " + cursor.getString(18));
                list.add("Skin Type: " + cursor.getString(19));
                list.add("Top speed: " + cursor.getString(20));
                list.add("Lifespan: " + cursor.getString(21));
                list.add("Weight: " + cursor.getString(22));
                list.add("Length/Height: " + cursor.getString(23));
                list.add("Wingspan: " + cursor.getString(24));
                list.add("Danger to humans: " + cursor.getString(25));
                list.add(String.valueOf(cursor.getInt(26)));
            } while (cursor.moveToNext());
        }
        return list;
    }

    @Override
    public void onBackPressed() {

    }
}