// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.*;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.Vector;

// Referenced classes of package com.google.zxing.qrcode.decoder:
//            Mode, Version, ErrorCorrectionLevel

final class DecodedBitStreamParser
{

    private DecodedBitStreamParser()
    {
    }

    static DecoderResult decode(byte abyte0[], Version version, ErrorCorrectionLevel errorcorrectionlevel, Hashtable hashtable)
        throws FormatException
    {
        BitSource bitsource = new BitSource(abyte0);
        StringBuffer stringbuffer = new StringBuffer(50);
        CharacterSetECI characterseteci = null;
        boolean flag = false;
        Vector vector = new Vector(1);
        do
        {
            Mode mode1;
            if(bitsource.available() < 4)
            {
                mode1 = Mode.TERMINATOR;
            } else
            {
                Mode mode;
                try
                {
                    mode = Mode.forBits(bitsource.readBits(4));
                }
                catch(IllegalArgumentException illegalargumentexception)
                {
                    throw FormatException.getFormatInstance();
                }
                mode1 = mode;
            }
            if(!mode1.equals(Mode.TERMINATOR))
                if(mode1.equals(Mode.FNC1_FIRST_POSITION) || mode1.equals(Mode.FNC1_SECOND_POSITION))
                    flag = true;
                else
                if(mode1.equals(Mode.STRUCTURED_APPEND))
                    bitsource.readBits(16);
                else
                if(mode1.equals(Mode.ECI))
                {
                    characterseteci = CharacterSetECI.getCharacterSetECIByValue(parseECIValue(bitsource));
                    if(characterseteci == null)
                        throw FormatException.getFormatInstance();
                } else
                {
                    int i = bitsource.readBits(mode1.getCharacterCountBits(version));
                    if(mode1.equals(Mode.NUMERIC))
                        decodeNumericSegment(bitsource, stringbuffer, i);
                    else
                    if(mode1.equals(Mode.ALPHANUMERIC))
                        decodeAlphanumericSegment(bitsource, stringbuffer, i, flag);
                    else
                    if(mode1.equals(Mode.BYTE))
                        decodeByteSegment(bitsource, stringbuffer, i, characterseteci, vector, hashtable);
                    else
                    if(mode1.equals(Mode.KANJI))
                        decodeKanjiSegment(bitsource, stringbuffer, i);
                    else
                        throw FormatException.getFormatInstance();
                }
            if(mode1.equals(Mode.TERMINATOR))
            {
                String s = stringbuffer.toString();
                if(vector.isEmpty())
                    vector = null;
                return new DecoderResult(abyte0, s, vector, errorcorrectionlevel);
            }
        } while(true);
    }

    private static void decodeAlphanumericSegment(BitSource bitsource, StringBuffer stringbuffer, int i, boolean flag)
        throws FormatException
    {
        int j = stringbuffer.length();
        for(; i > 1; i -= 2)
        {
            int l = bitsource.readBits(11);
            stringbuffer.append(toAlphaNumericChar(l / 45));
            stringbuffer.append(toAlphaNumericChar(l % 45));
        }

        if(i == 1)
            stringbuffer.append(toAlphaNumericChar(bitsource.readBits(6)));
        if(flag)
        {
            int k = j;
            while(k < stringbuffer.length()) 
            {
                if(stringbuffer.charAt(k) == '%')
                    if(k < -1 + stringbuffer.length() && stringbuffer.charAt(k + 1) == '%')
                        stringbuffer.deleteCharAt(k + 1);
                    else
                        stringbuffer.setCharAt(k, '\035');
                k++;
            }
        }
    }

    private static void decodeByteSegment(BitSource bitsource, StringBuffer stringbuffer, int i, CharacterSetECI characterseteci, Vector vector, Hashtable hashtable)
        throws FormatException
    {
        byte abyte0[] = new byte[i];
        if(i << 3 > bitsource.available())
            throw FormatException.getFormatInstance();
        for(int j = 0; j < i; j++)
            abyte0[j] = (byte)bitsource.readBits(8);

        String s;
        if(characterseteci == null)
            s = StringUtils.guessEncoding(abyte0, hashtable);
        else
            s = characterseteci.getEncodingName();
        try
        {
            stringbuffer.append(new String(abyte0, s));
        }
        catch(UnsupportedEncodingException unsupportedencodingexception)
        {
            throw FormatException.getFormatInstance();
        }
        vector.addElement(abyte0);
    }

    private static void decodeKanjiSegment(BitSource bitsource, StringBuffer stringbuffer, int i)
        throws FormatException
    {
        byte abyte0[] = new byte[i * 2];
        int j = 0;
        while(i > 0) 
        {
            int k = bitsource.readBits(13);
            int l = k / 192 << 8 | k % 192;
            int i1;
            if(l < 7936)
                i1 = l + 33088;
            else
                i1 = l + 49472;
            abyte0[j] = (byte)(i1 >> 8);
            abyte0[j + 1] = (byte)i1;
            j += 2;
            i--;
        }
        try
        {
            stringbuffer.append(new String(abyte0, "SJIS"));
            return;
        }
        catch(UnsupportedEncodingException unsupportedencodingexception)
        {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeNumericSegment(BitSource bitsource, StringBuffer stringbuffer, int i)
        throws FormatException
    {
        for(; i >= 3; i -= 3)
        {
            int l = bitsource.readBits(10);
            if(l >= 1000)
                throw FormatException.getFormatInstance();
            stringbuffer.append(toAlphaNumericChar(l / 100));
            stringbuffer.append(toAlphaNumericChar((l / 10) % 10));
            stringbuffer.append(toAlphaNumericChar(l % 10));
        }

        if(i != 2) goto _L2; else goto _L1
_L1:
        int k = bitsource.readBits(7);
        if(k >= 100)
            throw FormatException.getFormatInstance();
        stringbuffer.append(toAlphaNumericChar(k / 10));
        stringbuffer.append(toAlphaNumericChar(k % 10));
_L4:
        return;
_L2:
        if(i == 1)
        {
            int j = bitsource.readBits(4);
            if(j >= 10)
                throw FormatException.getFormatInstance();
            stringbuffer.append(toAlphaNumericChar(j));
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static int parseECIValue(BitSource bitsource)
    {
        int i = bitsource.readBits(8);
        int j;
        if((i & 0x80) == 0)
            j = i & 0x7f;
        else
        if((i & 0xc0) == 128)
            j = bitsource.readBits(8) | (i & 0x3f) << 8;
        else
        if((i & 0xe0) == 192)
            j = bitsource.readBits(16) | (i & 0x1f) << 16;
        else
            throw new IllegalArgumentException("Bad ECI bits starting with byte " + i);
        return j;
    }

    private static char toAlphaNumericChar(int i)
        throws FormatException
    {
        if(i >= ALPHANUMERIC_CHARS.length)
            throw FormatException.getFormatInstance();
        else
            return ALPHANUMERIC_CHARS[i];
    }

    private static final char ALPHANUMERIC_CHARS[];

    static 
    {
        char ac[] = new char[45];
        ac[0] = '0';
        ac[1] = '1';
        ac[2] = '2';
        ac[3] = '3';
        ac[4] = '4';
        ac[5] = '5';
        ac[6] = '6';
        ac[7] = '7';
        ac[8] = '8';
        ac[9] = '9';
        ac[10] = 'A';
        ac[11] = 'B';
        ac[12] = 'C';
        ac[13] = 'D';
        ac[14] = 'E';
        ac[15] = 'F';
        ac[16] = 'G';
        ac[17] = 'H';
        ac[18] = 'I';
        ac[19] = 'J';
        ac[20] = 'K';
        ac[21] = 'L';
        ac[22] = 'M';
        ac[23] = 'N';
        ac[24] = 'O';
        ac[25] = 'P';
        ac[26] = 'Q';
        ac[27] = 'R';
        ac[28] = 'S';
        ac[29] = 'T';
        ac[30] = 'U';
        ac[31] = 'V';
        ac[32] = 'W';
        ac[33] = 'X';
        ac[34] = 'Y';
        ac[35] = 'Z';
        ac[36] = ' ';
        ac[37] = '$';
        ac[38] = '%';
        ac[39] = '*';
        ac[40] = '+';
        ac[41] = '-';
        ac[42] = '.';
        ac[43] = '/';
        ac[44] = ':';
        ALPHANUMERIC_CHARS = ac;
    }
}
