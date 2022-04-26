package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */

	public static int getPoint(int amount) {
		double point = 0;
		point = amount * 0.01;
		System.out.println("point = " + point);
		return (int) point;
	}

    /**
     * ポイント計算(ランクあり)
     */
	public static int getPoint(int amount, int rank) {
		double point = 0;
		switch (rank) {
		case 1:
			point = amount * 0.02;
			break;
		case 2:
			point = amount * 0.03;
			break;
		}
		return (int) point;
	}

    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
	public static boolean isNullOrEmpty(String str) {
        // todo:引数の値がnull、または空文字の場合は、true
    	if(str == null || str.isEmpty()) {
    		return true;
    	} else {
	        // それ以外の場合は、falseを返すように処理を修正する
	        return false;
    	}
    }

}
