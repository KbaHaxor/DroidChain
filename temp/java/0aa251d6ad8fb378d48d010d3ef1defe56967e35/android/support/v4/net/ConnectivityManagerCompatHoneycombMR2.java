// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package android.support.v4.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;

class ConnectivityManagerCompatHoneycombMR2
{

    ConnectivityManagerCompatHoneycombMR2()
    {
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager connectivitymanager)
    {
        boolean flag;
        NetworkInfo networkinfo;
        flag = true;
        networkinfo = connectivitymanager.getActiveNetworkInfo();
        if(networkinfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        switch(networkinfo.getType())
        {
        case 1: // '\001'
        case 7: // '\007'
        case 9: // '\t'
            flag = false;
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }
}
