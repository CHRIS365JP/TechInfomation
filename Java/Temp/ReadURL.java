public class ReadURL {
    
    public static void main(String[] args) {
        try {
            URL url = new URL("");
            
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(3*1000);
            
//            conn.setRequestProperty("User-Agent", value);
            conn.connect();
            java.io.BufferedReader serverResponse = new java.io.BufferedReader(new java.io.InputStreamReader(conn.getInputStream(), "UTF-8"));
            String lineStr;
            StringBuilder html = new StringBuilder("");
            while((lineStr = serverResponse.readLine()) != null) {
                System.out.println(lineStr);
                System.out.println("length:" + lineStr.length());
                html.append(lineStr);
            }
            
            String htmlStr = StringUtils.substringAfter(html.toString(), "<body>");
            htmlStr = StringUtils.substringBefore(htmlStr, "</body>");
            System.out.println("::" + htmlStr );
            serverResponse.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
