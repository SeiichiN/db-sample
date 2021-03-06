package util;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Tool {
	/**
	 * 引数 _value の文字(数値) を int にする。
	 * もしも エラーが起こったら、def にする。
	 * @param _value:String 数値にしたい文字列
	 * @param def:int デフォルト値
	 * @return value:int
	 */
	public static int myParseInt(String _value, int def) {
		int value = 0;
		try {
			value = Integer.parseInt(_value);
		} catch (NumberFormatException e) {
			value = def;
		}
		return value;
	}

	/**
	 * "1979/05/07" 形式の日付文字列を "1979-05-07" 形式にする。
	 * それから sql.Date 型に変換する。
	 * @param date String "1979/05/07"形式
	 * @return sql.Date 
 	 */
	public static Date convDate(String dateTxt) {
		Pattern p = Pattern.compile("/");
		Matcher m = p.matcher(dateTxt);
		String _date = null;
		_date = m.replaceAll("-");
		return Date.valueOf(_date);
	}
	
	/**
	 * 文字列(str)が、正規表現文字列(preg) にマッチしているかどうかを返す
	 * @param str 調べたい文字列
	 * @param preg 正規表現文字列
	 * @return true マッチしている<br>
	 *         false マッチしていない
	 */
	public static boolean isMatch(String str, String preg) {
		Pattern pattern = Pattern.compile(preg);
		Matcher m = pattern.matcher(str);
		return m.matches();
	}

}
