package com.common.ftp;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Date;

public class App {
    public static void main(String[] args) throws Exception {
        final String filePath = "readme.md";
        final InputStream stream = new FileInputStream(new File(filePath));

        FtpUtil.uploadFile("test", String.format("%d_%s", new Date().getHours(), filePath), stream);
        stream.close();
    }
}
