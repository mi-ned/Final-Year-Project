package com.example.animaux;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

public class request_handler {
    //Sends any inputs or connection requests to the user beckend
    public String sendPostRequest(String requestURL, HashMap<String, String> postDataParams){
        URL url;
        StringBuilder string_builder = new StringBuilder();
        try{
            //Client attempts to communicate with user backend
            url = new URL(requestURL);
            HttpURLConnection php_connection = (HttpURLConnection) url.openConnection();

            //Maximum response time (10 seconds)
            php_connection.setReadTimeout(10000);
            php_connection.setConnectTimeout(10000);

            //Client uses POST request method
            php_connection.setRequestMethod("POST");

            //Inputs and outputs (from phone to backend, vice versa) are permitted throughout the app
            php_connection.setDoInput(true);
            php_connection.setDoOutput(true);

            //Gets JSON output
            OutputStream output_stream = php_connection.getOutputStream();

            //Standardises the JSON input/output
            BufferedWriter buffered_writer = new BufferedWriter(new OutputStreamWriter(output_stream, "UTF-8"));
            buffered_writer.write(getPostDataString(postDataParams));

            //Ends the backend session
            buffered_writer.flush();
            buffered_writer.close();
            output_stream.close();

            //Gets the response code of the php connection
            int response_code = php_connection.getResponseCode();

            //If the connection is successful
            if (response_code == HttpsURLConnection.HTTP_OK) {
                BufferedReader buffered_reader = new BufferedReader(new InputStreamReader(php_connection.getInputStream()));
                string_builder = new StringBuilder();
                String php_response;
                while ((php_response = buffered_reader.readLine()) != null) {
                    string_builder.append(php_response);
                }
            }
        }

        catch (Exception e) {
            e.printStackTrace();
        }

        //Returns the string builder value (converted to string)
        return string_builder.toString();
    }

    //Collects the output (from php code)
    private String getPostDataString(HashMap<String, String> params) throws UnsupportedEncodingException {
        StringBuilder result = new StringBuilder();
        boolean first = true;
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (first) first = false;
            else result.append("&");
            result.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
            result.append("=");
            result.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
        }
        return result.toString();
    }
}
