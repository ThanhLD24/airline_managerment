package airline.managerment.utility;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Utility {
    /**
     * cat chuoi co chua cap dau "()"
     * 
     * @param str
     * @return
     */
    public static String splitString(String str) {
        Matcher m = Pattern.compile("\\(([^)]+)\\)").matcher(str);
        String strOut = null;
        while (m.find()) {
            strOut = m.group(1);
        }
        return strOut;
    }

    /**
     * tinh tong tien
     * 
     * @param count
     *            so nguoi
     * @param price
     *            gia ve
     * @param tax
     *            thue
     * @param sale
     *            giam gia
     * @return tong tien
     */
    public static int moneyTotal(int count, int price, int tax, int sale) {
        return (price + tax - sale) * count;
    }

}
