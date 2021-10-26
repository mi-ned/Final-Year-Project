package com.example.animaux;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.theartofdev.edmodo.cropper.CropImage;
import com.theartofdev.edmodo.cropper.CropImageView;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class natural_selection extends AppCompatActivity {

    //Global variables
    Button button_select_image, button_upload_image, button_back;
    ImageView iv_selected_photo;
    TextView tv_status;
    ProgressBar progress_bar;
    Uri uri_image_path;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        themes.onActivityCreateSetTheme(this);
        user_settings.stop();
        setContentView(R.layout.activity_natural_selection);

        //Global variables initialised
        button_select_image = findViewById(R.id.button_select);
        button_upload_image = findViewById(R.id.button_upload);
        button_back = findViewById(R.id.button_back);
        tv_status = findViewById(R.id.textView_status);
        iv_selected_photo = findViewById(R.id.image_view);
        progress_bar = findViewById(R.id.progress_bar);

        tv_status.setText("select image...");
        iv_selected_photo.setVisibility(View.INVISIBLE);

        if (!shared_preferences.getInstance(this).isLoggedIn()) {
            finish();
            startActivity(new Intent(natural_selection.this, signin.class));
        }

        //User presses select image button
        button_select_image.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                image_selector();
            }
        });

        //User presses upload image button
        button_upload_image.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                user_settings.play_sound(natural_selection.this, R.raw.sound_button);
                connectServer();
            }
        });

        //User presses back button
        button_back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                open_back();
            }
        });
    }

    //User enters internal/external storage
    public void image_selector() {
        user_settings.play_sound(this, R.raw.sound_button);
        Intent intent = new Intent();
        intent.setType("image/jpeg");
        intent.setAction(Intent.ACTION_GET_CONTENT);
        startActivityForResult(intent, 1);
    }

    //Enables the user to modify an image
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data){
        super.onActivityResult(requestCode, resultCode, data);
        if(requestCode == 1 && resultCode == RESULT_OK && data!=null){
            CropImage.activity().setGuidelines(CropImageView.Guidelines.ON).setAspectRatio(1,1).start(this);
        }
        //If the image is acceptable
        if(requestCode == CropImage.CROP_IMAGE_ACTIVITY_REQUEST_CODE){
            CropImage.ActivityResult result = CropImage.getActivityResult(data);
            if(resultCode == RESULT_OK){
                uri_image_path = result.getUri();
                iv_selected_photo.setImageURI(uri_image_path);
                iv_selected_photo.setVisibility(View.VISIBLE);
                tv_status.setText("You've selected an image");
            }
            //If the image is not acceptable
            else if (resultCode == CropImage.CROP_IMAGE_ACTIVITY_RESULT_ERROR_CODE){
                Exception error = result.getError();
                tv_status.setText(error.toString());
            }
            //If the image isn't selected
            else{
                tv_status.setText("No image selected");
            }
        }
    }

    //Attempt to transfer image over to the server
    public void connectServer() {
        ByteArrayOutputStream stream = new ByteArrayOutputStream();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        try {
            Bitmap bitmap = BitmapFactory.decodeFile(uri_image_path.getEncodedPath(), options);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, stream);
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        byte[] byteArray = stream.toByteArray();

        RequestBody postBodyImage = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("image", "photoUpload.jpg", RequestBody.create(MediaType.parse("image/*jpg"), byteArray)).build();

        iv_selected_photo.setVisibility(View.INVISIBLE);
        tv_status.setVisibility(View.INVISIBLE);
        progress_bar.setVisibility(View.VISIBLE);
        button_select_image.setEnabled(false);
        button_upload_image.setEnabled(false);

        postRequest(URLs.NS_URL, postBodyImage);
    }

    //Client to server request
    void postRequest(String postUrl, RequestBody postbody){
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder().url(postUrl).post(postbody).build();
        client.newCall(request).enqueue(new Callback(){

            //If connection to the server fails
            @Override
            public void onFailure(Call call, IOException e) {
                call.cancel();
                runOnUiThread(new Runnable(){
                    @Override
                    public void run() {
                        button_select_image.setEnabled(true);
                        button_upload_image.setEnabled(true);

                        iv_selected_photo.setVisibility(View.VISIBLE);
                        tv_status.setVisibility(View.VISIBLE);
                        progress_bar.setVisibility(View.INVISIBLE);

                        tv_status.setText("Connection to the server failed");
                    }
                });
            }

            //If the connection to the server is successful
            @Override
            public void onResponse(Call call, final Response response) throws IOException {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        try{
                            iv_selected_photo.setVisibility(View.INVISIBLE);
                            progress_bar.setVisibility(View.INVISIBLE);
                            tv_status.setVisibility(View.VISIBLE);

                            button_select_image.setEnabled(true);
                            button_upload_image.setEnabled(true);

                            tv_status.setText(response.body().string());
                        }
                        catch(IOException e){
                            e.printStackTrace();
                        }
                    }
                });
            }
        });
    }

    public void open_back(){
        user_settings.play_sound(this, R.raw.sound_back);
        Intent intent = new Intent(this, mainmenu.class);
        startActivity(intent);
    }

    @Override
    public void onBackPressed() {

    }
}