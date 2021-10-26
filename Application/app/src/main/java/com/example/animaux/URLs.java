package com.example.animaux;

public class URLs {

    /*
    IMPORTANT INFO:
    IP addresses can vary...
    On Windows 10, Click Start --> type 'cmd'
    on command line interface, type 'ipconfig'
    under "Wireless LAN adapter Wi-Fi" table
    on IPv4 Address row, note down the last number
    e.g. 192.168.1.x (where x = 9)
     */

    private static final String x_number = "8"; //see above
    private static final String port_number_one = ":7000/"; //vita explorandum server
    private static final String port_number_two = ":7001/"; //natural selection server

    private static final String URL = "http://192.168.1." + x_number; //Wireless LAN adapter Wi-Fi address
    private static final String VM_URL = "http://10.0.2.2"; //Android Studio virtual machine

    private static final String animal_api = "/animal/animal_api.php?apicall="; //animal_api.php
    private static final String rankings_api = "/animal/ranking_api.php"; //animal ranking_api.php

    public static final String AI_URL = URL + port_number_one; //vita explorandum
    public static final String NS_URL = URL + port_number_two; //natural selection

    private static final String ROOT_URL = URL + animal_api; //animal_api.php
    public static final String URL_RANKING = URL + rankings_api; //animal ranking_api.php

    public static final String URL_SIGNUP = ROOT_URL + "signup"; //for signup section
    public static final String URL_SIGNIN = ROOT_URL + "signin"; //for signin section
    public static final String URL_GAME = ROOT_URL + "game"; //for game section
    public static final String URL_CHANGE = ROOT_URL + "change"; //for change section
    public static final String URL_DELETE = ROOT_URL + "delete"; //for delete section
}