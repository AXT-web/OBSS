package hs.com.util;

import java.util.Random;

public class AlipayConfig  {

        // 应用ID,支付宝提供的APPID，上面截图中有提到
        public static String app_id = "2021000116694033";

        // 商户私钥，您的PKCS8格式RSA2私钥
        public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCY1evPOL+NdUBiZ20AKDuBP7xRt4GZZVIAIGKvw3ZLSSSiRr4NArnC2dbQHZXTtTMi2gNjb/BYlZIFT7qM73yNTADzSNQj4iyTCeODL6R9+YgepbhJLEWRw+65INmXgyzkNqHkWTKS4CzAx8zuh7XsvFCsMHEgCcmQXxvc5xSqpJpzI2ZuDRGfgs0FClbSCUR7G501PIINwmGQmQkh0Rl85d8m500htwqP+/NVHG4aMNybc36t02uSzFu3O52lBMMlfcVYAlj3T3PO+JJW1mD+Xhu1k3MHQLjtar9AG6ypU+GM23HEJCt9LHShFE5+UXq9f0M1bXnqfqPSxfXShXNJAgMBAAECggEAEk+vDQjTinM934xctuQbHQUx3uiJkoNdK761lDFq/uIojXjEVHK7JulKn2ysAs127voH5eYHedWRxSkkRLZ8ycENbBiRsirrBELvC0yt/JnlAScByWKQg0JiW7Pf3hNNUZpqEx3MvWQ2eHJ3zyxbU53MXJUBOMFzcOS0Rec5xqf6hl07mu8U3jQVfPDOTEW7OfH2ePQ2PGie9vs7AXXH7EQwzMX7F9IrX/WLUpGVzWjmvI++EbeQL0Zhw8R3q6KebkGSCm9mCLo2kUf/GAwRLZQFzdEPv9zTtw0ALz4SXLw5aUSON7XR2we+ifQd73YA9jOzxELsuhqfNQOWJPewsQKBgQDT8u/pnw2WFANswWp+A36AyKUKKIonq6VjML2yVM4gMBPvqciwu/unH2lfsTE+Cn+Hi4za/aHoOgrNqRIab7le1UOuSmQu9KRZ6Ush0GMgymRqxqNU3zCxZ0XvVVkwE/Q5FF0HVR3FAsFeE/I91F0CSwP4z22Tna1LoizK+P3I0wKBgQC4mcUYH+WJdQkaEZoAzu6tRtWATjTsKhK2I4jafr0HDpwKUoOvYP736Qs7WObfPPz3gjEmUGrVJz76W69Vj3ckpLv4qrfXEFqHddSNFYpLPAWULr8peOZPpWtj7WzA1ASPYf+r5GUow+s7iHtmv/8mipYXaIUmKzFJEudP3m0B8wKBgQDIMyEKu4JJ0H2rrMa6YPKNEvlRrxlQf4GpP9DvMcvB+6fZKba3udjq83DFQsoQoDn1/or+D7VvdePef2TqM74VJbzYVMxszgiwJP0i44O+5W4Urax57pg/+hzFBQlJsI9vmxyEYJHOFdww0QZwALgaAmGuE8CdPsMCPh2xW5/coQKBgHKwboiPgJ+HDBGbL/AioJ0dLhZaAH1domRw7Vy6cxyIUiADpfb3L1G9AxJrKH03uf7Yb0rbmZQ2nuUSw3tH+ADXLEXRYwiGC4ivh0/kOxiFAP5QkMnmaEjBgFgEMZYX44FlpGAaNVM/bc19/RUYYiCC579BW8AcA7HfwcCYc2dLAoGAFl1J/uszyHAGNS4zBy/a7k59AN1EwlczE4yefnZv0azoThJVuwmwnsN1CUUaN7lCgiLp064itz69lIGjsR+ji6cyqlp+e3e+XxWRKzqUKW9DHE+2/hQGqgWwpO7I8teVDJai0JFlqbE6hX87DKz9gORV86I4uy96xkl1LUB1n3k=";

        // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/appDaily.htm 对应APPID下的支付宝公钥。
        public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmNXrzzi/jXVAYmdtACg7gT+8UbeBmWVSACBir8N2S0kkoka+DQK5wtnW0B2V07UzItoDY2/wWJWSBU+6jO98jUwA80jUI+Iskwnjgy+kffmIHqW4SSxFkcPuuSDZl4Ms5Dah5FkykuAswMfM7oe17LxQrDBxIAnJkF8b3OcUqqSacyNmbg0Rn4LNBQpW0glEexudNTyCDcJhkJkJIdEZfOXfJudNIbcKj/vzVRxuGjDcm3N+rdNrksxbtzudpQTDJX3FWAJY909zzviSVtZg/l4btZNzB0C47Wq/QBusqVPhjNtxxCQrfSx0oRROflF6vX9DNW156n6j0sX10oVzSQIDAQAB";

        // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问.如果只是测试使用,那么设置成自己项目启动后可以访问到的一个路径,作为支付宝发送通知的路径(有什么用暂时没发现)
        public static String notify_url = "http://localhost:8080/pay/alipay-callback-notify-url";
         //请求成功后会返回的路径
        // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问.如果只是测试使用,那么设置成自己项目启动后可以访问到的一个路径.是支付正常完成后,会访问的路径.
        public static String return_url = "http://localhost:8080/jingdong/shopcart/buyShop";//跳转完后就直接去京东首页
        // 签名方式，注意这里，如果步骤设置的是RSA则用RSA,如果按照扇面步骤做的话,选择RSA2
        public static String sign_type = "RSA2";
        // 字符编码格式
        public static String charset = "utf-8";
        // 支付宝网关
        public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
        //格式
        private static String format="json";

        public static final int MACHINE_ID = 1;
        /**
         * 生成订单号
         */
        public static long getNumber(int length) {
                StringBuilder buf = new StringBuilder();
                Random random = new Random();
                /*开头不为0,建议数据量较少时只放开部分，比如1至3开头的数，等业务达到一定数量时，再逐步放开剩余的号码段，由于是固定位数，总数量一定，生成的数越多，重复的几率越大**/
                int firstNumber = random.nextInt(9) + 1;
                buf.append(firstNumber);

                for(int i = 0; i < length - 1; ++i) {
                        buf.append(random.nextInt(10));
                }

                return Long.valueOf(buf.toString());
        }

        public static void main(String[] args) {
                System.out.println(getNumber(6));
        }
}