package com.demo_bank_v1.DemoBank_v1.helpers;

public class HTML {
    public static String htmlEmailTemplate(String token, int code){

    // Verify Account URL:
        String url = "http://127.0.0.1:8070/verify?token=" + token +"&code=" + code;

        String emailTemplate = "<!DOCTYPE html>\n" +
                "<html lang='en'>\n" +
                "  <head>\n" +
                "    <meta charset='UTF-8' />\n" +
                "    <meta http-equiv='X-UA-Compatible' content='IE=edge' />\n" +
                "    <meta name='viewport' content='width=device-width, initial-scale=1.0' />\n" +
                "    <title>Document</title>\n" +
                "\n" +
                "    <style>\n" +
                "        @import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap');\n" +
                "        *{\n" +
                "            box-sizing: border-box;\n" +
                "            font-family: \"Comfortaa\", cursive;\n" +
                "        }\n" +
                "        \n" +
                "        /* main body styling */\n" +
                "        body{\n" +
                "            height: 100vh;\n" +
                "            background-color: rgb(212, 222, 230);\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "        \n" +
                "        /* Wrapper styling */\n" +
                "        .wrapper{\n" +
                "            width: 550px;\n" +
                "            height: auto;\n" +
                "            padding: 15px;\n" +
                "            background-color: white;\n" +
                "            border-radius: 7px;\n" +
                "        }\n" +
                "        \n" +
                "        /* <!-- email msg wrapper --> */\n" +
                "        .email-msg-header{\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "        \n" +
                "        .company-name{\n" +
                "            width: 100%;\n" +
                "            font-size: 35px;\n" +
                "            color: gray;\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "        \n" +
                "        /* welcome text */\n" +
                "        .welcome-text{\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "        \n" +
                "        /* verify account button */\n" +
                "        .verify-account-btn{\n" +
                "            padding: 15px;\n" +
                "            background-color: rgb(0, 109, 252);\n" +
                "            color: white;\n" +
                "            text-decoration: none;\n" +
                "            border-radius: 5px;\n" +
                "        }\n" +
                "        \n" +
                "        /* copy right */\n" +
                "        .copy-right{\n" +
                "            padding: 15px;\n" +
                "            color: gray;\n" +
                "            margin: 20px 0px;\n" +
                "            font-size: 14px;\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "    </style>\n" +
                "  </head>\n" +
                "  <body>\n" +
                "    <!-- Wrapper -->\n" +
                "    <div class='wrapper'>\n" +
                "        <!-- email msg wrapper -->\n" +
                "        <h2 class='email-msg-header'>\n" +
                "            Welcome and Thank You for Choosing\n" +
                "        </h2>\n" +
                "        <!-- end of email msg wrapper -->\n" +
                "        <!-- Campany name -->\n" +
                "        <div class='company-name'>Easy Way Bank</div>\n" +
                "        <!-- end of Campany name -->\n" +
                "        <hr/>\n" +
                "        <!-- welcome text -->\n" +
                "        <p class='welcome-text'>\n" +
                "            Your Account has been successfully registered, please click below to verify your account.\n" +
                "        </p>\n" +
                "        <!-- end of welcome text -->\n" +
                "        <br/>\n" +
                "        <br/>\n" +
                "\n" +
                "        <!-- verify Account button -->\n" +
                "        <center>\n" +
                "            <a href='"+ url +"' class='verify-account-btn' role='button'>Verify Account</a>\n" +
                "        </center>\n" +
                "        <!-- end of verify Account button -->\n" +
                "\n" +
                "        <!-- Copy right wrapper -->\n" +
                "        <div class='copy-right'>\n" +
                "            &copy; Copy Right 2023. All Rights Reserved.\n" +
                "        </div>\n" +
                "        <!-- end of  Copy right wrapper -->\n" +
                "    </>\n" +
                "    <!-- End of Wrapper -->\n" +
                "  </body>\n" +
                "</html>\n";

        return emailTemplate;
    }
}
