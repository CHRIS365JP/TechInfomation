public class TestClass {

    public static void main(String[] args) {
        String string = "<a href='XXX' id='id'> </a>"
                + "<a href='YYY' id='id2'> </a>";
        System.out.println(string.matches(".*[Y]{3}.*"));
        
        Pattern p = Pattern.compile("<a.*?id2.*?</a>");
        Matcher m = p.matcher(string);
        while(m.find()) {
            System.out.println(m.group());
        }
        
        Pattern p2 = Pattern.compile("<a href=\'.*?\'");
        Matcher m2 = p2.matcher(string);
        System.out.println("M2:");
        while(m2.find()) {
            System.out.println(m2.group());
        }
        
        Pattern p3 = Pattern.compile(".*[Y]{3}.*");
        Matcher m3 = p3.matcher(string);
        System.out.println("M3:");
        while(m3.find()) {
            System.out.println(m3.group());
        }
        
        Pattern p4 = Pattern.compile("<a.*?</a>");
        Matcher m4 = p4.matcher(string);
        System.out.println("M4:");
        while(m4.find()) {
            System.out.println(m4.group());
        }
        
        // 検索する文字列を用意
        String str = "東京都千代田区 123-4567";
 
        // 正規表現のパターンを作成
        Pattern p1 = Pattern.compile("[0-9]{3}-[0-9]{4}");
        Matcher m1 = p1.matcher(str);
        System.out.println(m1.find());
        
        System.out.println("1:" + str.matches(".*[0-9]{3}-[0-9]{4}.*"));
        System.out.println("2:" + str.matches("[0-9]{3}-[0-9]{4}"));
 
        System.out.println("3:" + str.matches(".*123-4567.*"));
        System.out.println("4:" + str.matches("123-4567"));
    }
}
