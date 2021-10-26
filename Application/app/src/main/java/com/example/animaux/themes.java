package com.example.animaux;

import android.app.Activity;
import android.content.Intent;

public class themes {
    //an option of either light or dark themes
    private static int sTheme;
    private static final int THEME_MATERIAL_DARK = 1;

    public static void changeToTheme(Activity activity, int theme){
        sTheme = theme;
        activity.finish();
        activity.startActivity(new Intent(activity, activity.getClass()));
        activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out);
    }

    public static void onActivityCreateSetTheme(Activity activity){
        if (sTheme == THEME_MATERIAL_DARK){
            activity.setTheme(R.style.Theme_Material_Dark);
        }
        else {
            activity.setTheme(R.style.Theme_Material_Light);
        }
    }
}