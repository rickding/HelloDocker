import com.atlassian.license.LicensePair;
import java.io.*;
import java.security.KeyFactory;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;

public class keygen
{

    public keygen()
    {
    }

    public static void main(String args[])
        throws IOException
    {
        try
        {
            long l = 267L;
            long l1 = System.currentTimeMillis();
            long l2 = System.currentTimeMillis();
            String s = "";
            System.out.println("Keygen for JIRA Enterprise Edition.");
            System.out.print("created by mydaj[ROR].");
            do
            {
                System.out.print("\nEnter your organization name: ");
                for(int i = System.in.read(); i != 10 && i != 13; i = System.in.read())
                    s = s + (char)i;

            } while(s == "");
            try
            {
                PKCS8EncodedKeySpec pkcs8encodedkeyspec = new PKCS8EncodedKeySpec(EncodedPrvKey);
                KeyFactory keyfactory = KeyFactory.getInstance("DSA", "SUN");
                java.security.PrivateKey privatekey = keyfactory.generatePrivate(pkcs8encodedkeyspec);
                String s1 = Long.toString(l, 10);
                s1 = s1 + "^^";
                s1 = s1 + Long.toString(l1, 10);
                s1 = s1 + "^^";
                s1 = s1 + Long.toString(l2, 10);
                s1 = s1 + "^^";
                s1 = s1 + s;
                byte abyte0[] = s1.getBytes();
                Signature signature = Signature.getInstance("SHA1withDSA");
                signature.initSign(privatekey);
                signature.update(abyte0);
                byte abyte1[] = signature.sign();
                LicensePair licensepair = null;
                try
                {
                    licensepair = new LicensePair(abyte0, abyte1);
                }
                catch(Exception exception1)
                {
                    exception1.printStackTrace();
                }
                System.out.println(s1);
                System.out.println("Your license key is: ");
                System.out.println(licensepair.toString());
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
            }
        }
        catch(IOException ioexception) { }
    }

    static byte EncodedPrvKey[] = {
        48, -126, 1, 75, 2, 1, 0, 48, -126, 1, 
        44, 6, 7, 42, -122, 72, -50, 56, 4, 1, 
        48, -126, 1, 31, 2, -127, -127, 0, -3, 127, 
        83, -127, 29, 117, 18, 41, 82, -33, 74, -100, 
        46, -20, -28, -25, -10, 17, -73, 82, 60, -17, 
        68, 0, -61, 30, 63, -128, -74, 81, 38, 105, 
        69, 93, 64, 34, 81, -5, 89, 61, -115, 88, 
        -6, -65, -59, -11, -70, 48, -10, -53, -101, 85, 
        108, -41, -127, 59, -128, 29, 52, 111, -14, 102, 
        96, -73, 107, -103, 80, -91, -92, -97, -97, -24, 
        4, 123, 16, 34, -62, 79, -69, -87, -41, -2, 
        -73, -58, 27, -8, 59, 87, -25, -58, -88, -90, 
        21, 15, 4, -5, -125, -10, -45, -59, 30, -61, 
        2, 53, 84, 19, 90, 22, -111, 50, -10, 117, 
        -13, -82, 43, 97, -41, 42, -17, -14, 34, 3, 
        25, -99, -47, 72, 1, -57, 2, 21, 0, -105, 
        96, 80, -113, 21, 35, 11, -52, -78, -110, -71, 
        -126, -94, -21, -124, 11, -16, 88, 28, -11, 2, 
        -127, -127, 0, -9, -31, -96, -123, -42, -101, 61, 
        -34, -53, -68, -85, 92, 54, -72, 87, -71, 121, 
        -108, -81, -69, -6, 58, -22, -126, -7, 87, 76, 
        11, 61, 7, -126, 103, 81, 89, 87, -114, -70, 
        -44, 89, 79, -26, 113, 7, 16, -127, -128, -76, 
        73, 22, 113, 35, -24, 76, 40, 22, 19, -73, 
        -49, 9, 50, -116, -56, -90, -31, 60, 22, 122, 
        -117, 84, 124, -115, 40, -32, -93, -82, 30, 43, 
        -77, -90, 117, -111, 110, -93, 127, 11, -6, 33, 
        53, 98, -15, -5, 98, 122, 1, 36, 59, -52, 
        -92, -15, -66, -88, 81, -112, -119, -88, -125, -33, 
        -31, 90, -27, -97, 6, -110, -117, 102, 94, -128, 
        123, 85, 37, 100, 1, 76, 59, -2, -49, 73, 
        42, 4, 22, 2, 20, 42, 50, -88, 30, 125, 
        -37, 118, -50, 20, -82, -63, 0, 8, -36, 106, 
        -9, -110, 124, 107, 68
    };

}
