package com.example.animaux;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;

public class database_helper extends SQLiteOpenHelper {

    private static String DB_PATH = "";
    private static String DB_NAME = "animal_database.db";
    private SQLiteDatabase my_database;
    private final Context db_context;

    //Makes sure the database exists
    public database_helper(Context context)
    {
        super(context, DB_NAME, null, 1);
        this.db_context = context;
        DB_PATH = db_context.getDatabasePath(DB_NAME).toString();
    }

    public void createDataBase() throws IOException
    {
        boolean database_exists = check_database();

        //Nothing happens (must be here)
        if (database_exists) {

        }

        //Database gets saved into apps internal storage
        else {
            this.getWritableDatabase();
            try {
                copy_database();
            }
            catch (IOException e) {
                throw new Error("Error copying database");
            }
        }
    }

    private boolean check_database()
    {
        SQLiteDatabase check_DB = null;
        //Opens the aforementioned database
        try {
            String myPath = DB_PATH;
            check_DB = SQLiteDatabase.openDatabase(myPath, null, SQLiteDatabase.OPEN_READONLY);
        }

        //Database doesn't exist just yet
        catch (SQLiteException e) {
            Log.e("message", "" + e);
        }

        //Database check complete
        if (check_DB != null) {
            check_DB.close();
        }

        //Database is stored into internal app storage
        return check_DB != null;
    }

    //Database is copied into internal app storage
    private void copy_database() throws IOException
    {
        InputStream myInput = db_context.getAssets().open(DB_NAME);
        String outFileName = DB_PATH;
        OutputStream myOutput = new FileOutputStream(outFileName);
        byte[] database_buffer = new byte[1024];
        int database_length;
        while ((database_length = myInput.read(database_buffer)) > 0) {
            myOutput.write(database_buffer, 0, database_length);
        }
        myOutput.flush();
        myOutput.close();
        myInput.close();
    }

    //Database is opened from the path
    public void open_database() throws SQLException
    {
        String my_path = DB_PATH;
        my_database = SQLiteDatabase.openDatabase(my_path, null, SQLiteDatabase.OPEN_READONLY);
    }

    //Database gets closed
    @Override
    public synchronized void close()
    {
        if (my_database != null)
            my_database.close();
        super.close();
    }

    //Database gets created (method must be here)
    @Override
    public void onCreate(SQLiteDatabase db)
    {

    }

    //Database version change (method must be here)
    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
    {

    }
}