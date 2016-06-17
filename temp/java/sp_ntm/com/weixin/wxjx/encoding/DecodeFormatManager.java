// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.encoding;

import android.content.Intent;
import android.net.Uri;
import com.google.zxing.BarcodeFormat;
import java.util.*;
import java.util.regex.Pattern;

final class DecodeFormatManager
{

    private DecodeFormatManager()
    {
    }

    static Vector parseDecodeFormats(Intent intent)
    {
        List list = null;
        String s = intent.getStringExtra("SCAN_FORMATS");
        if(s != null)
            list = Arrays.asList(COMMA_PATTERN.split(s));
        return parseDecodeFormats(((Iterable) (list)), intent.getStringExtra("SCAN_MODE"));
    }

    static Vector parseDecodeFormats(Uri uri)
    {
        List list = uri.getQueryParameters("SCAN_FORMATS");
        if(list != null && list.size() == 1 && list.get(0) != null)
            list = Arrays.asList(COMMA_PATTERN.split((CharSequence)list.get(0)));
        return parseDecodeFormats(((Iterable) (list)), uri.getQueryParameter("SCAN_MODE"));
    }

    private static Vector parseDecodeFormats(Iterable iterable, String s)
    {
        Vector vector;
label0:
        {
            if(iterable != null)
            {
                vector = new Vector();
                try
                {
                    for(Iterator iterator = iterable.iterator(); iterator.hasNext(); vector.add(BarcodeFormat.valueOf((String)iterator.next())));
                    break label0;
                }
                catch(IllegalArgumentException illegalargumentexception) { }
            }
            if(s != null)
            {
                if("PRODUCT_MODE".equals(s))
                {
                    vector = PRODUCT_FORMATS;
                    break label0;
                }
                if("QR_CODE_MODE".equals(s))
                {
                    vector = QR_CODE_FORMATS;
                    break label0;
                }
                if("DATA_MATRIX_MODE".equals(s))
                {
                    vector = DATA_MATRIX_FORMATS;
                    break label0;
                }
                if("ONE_D_MODE".equals(s))
                {
                    vector = ONE_D_FORMATS;
                    break label0;
                }
            }
            vector = null;
        }
        return vector;
    }

    private static final Pattern COMMA_PATTERN = Pattern.compile(",");
    static final Vector DATA_MATRIX_FORMATS;
    static final Vector ONE_D_FORMATS;
    static final Vector PRODUCT_FORMATS;
    static final Vector QR_CODE_FORMATS;

    static 
    {
        PRODUCT_FORMATS = new Vector(5);
        PRODUCT_FORMATS.add(BarcodeFormat.UPC_A);
        PRODUCT_FORMATS.add(BarcodeFormat.UPC_E);
        PRODUCT_FORMATS.add(BarcodeFormat.EAN_13);
        PRODUCT_FORMATS.add(BarcodeFormat.EAN_8);
        PRODUCT_FORMATS.add(BarcodeFormat.RSS14);
        ONE_D_FORMATS = new Vector(4 + PRODUCT_FORMATS.size());
        ONE_D_FORMATS.addAll(PRODUCT_FORMATS);
        ONE_D_FORMATS.add(BarcodeFormat.CODE_39);
        ONE_D_FORMATS.add(BarcodeFormat.CODE_93);
        ONE_D_FORMATS.add(BarcodeFormat.CODE_128);
        ONE_D_FORMATS.add(BarcodeFormat.ITF);
        QR_CODE_FORMATS = new Vector(1);
        QR_CODE_FORMATS.add(BarcodeFormat.QR_CODE);
        DATA_MATRIX_FORMATS = new Vector(1);
        DATA_MATRIX_FORMATS.add(BarcodeFormat.DATA_MATRIX);
    }
}
