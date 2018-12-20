package com.common.ftp;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;

/**
 * http://www.cnblogs.com/amoyzhu/p/9197500.html
 */
public class FtpUtil {
    private static Logger logger = LoggerFactory.getLogger(FtpUtil.class);
    private static FTPClient ftpClient = null;

    private static FTPClient getInst() {
        if (ftpClient == null) {
            synchronized (FtpUtil.class) {
                if (ftpClient == null) {
                    ftpClient = initFtpClient("192.168.1.157", 21, "test", "test");
                }
            }
        }

        return ftpClient;
    }

    /**
     * 初始化链接
     */
    private static FTPClient initFtpClient(String host, int port, String username, String pwd) {
        FTPClient ftpClient = new FTPClient();
        ftpClient.setRemoteVerificationEnabled(false); //取消服务器获取自身Ip地址和提交的host进行匹配，否则当不一致时会报异常。
        ftpClient.setControlEncoding("utf-8"); //在连接之前设置编码类型为utf-8

        try {
            ftpClient.setDataTimeout(1000 * 120); //设置传输超时时间为120秒
            ftpClient.connect(host, port);            //连接ftp服务器
            ftpClient.login(username, pwd);           //登录ftp服务器

            int replyCode = ftpClient.getReplyCode(); //是否成功登录服务器
            if (!FTPReply.isPositiveCompletion(replyCode)) {
                logger.warn("【initFtpClient】: 登录服务器失败");
            }

            logger.warn("【initFtpClient】: 使用帐户：" + username + "密码：" + pwd + "登录ftp服务器：" + host + ":" + port);
            logger.warn("【initFtpClient】: 成功登录服务器,被动模式主机：" + ftpClient.getPassiveHost() + ":" + ftpClient.getPassivePort());
            logger.warn("【initFtpClient】: 成功登录服务器,主动模式主机：" + ftpClient.getRemoteAddress() + ":" + ftpClient.getRemotePort());
            logger.warn("【initFtpClient】: 成功登录服务器,本地主机：" + ftpClient.getLocalAddress() + ":" + ftpClient.getLocalPort());
            logger.warn("【initFtpClient】: 成功登录服务器,返回代码：" + ftpClient.getReplyCode() + ",显示状态" + ftpClient.getStatus());

            return ftpClient;
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }


    /**
     * 上传文件
     *
     * @param pathname    ftp服务保存地址
     * @param fileName    上传到ftp的文件名
     * @param inputStream 输入文件流
     * @return
     */
    public static boolean uploadFile(String pathname, String fileName, InputStream inputStream) {
        logger.warn("【uploadFile】: " + "开始上传文件");
        FTPClient ftpClient = getInst();

        try {
            ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);  //设置传输的模式为二进制文件类型传输
            ftpClient.makeDirectory(pathname);                      //设置目录
            ftpClient.changeWorkingDirectory(pathname);             //设置工作路径

            ftpClient.enterLocalPassiveMode();                      //设置被动模式(FTP客户端在docker容器内，需用被动模式)
            ftpClient.storeFile(fileName, inputStream);             //上传

            logger.warn("【uploadFile】: " + "上传文件成功");
            return true;
        } catch (Exception e) {
            logger.warn("【uploadFile】: " + "上传文件失败");
            e.printStackTrace();
            return false;
        } finally {
            if (null != inputStream) {
                try {
                    inputStream.close();                            //关闭文件流
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            if (ftpClient.isConnected()) {
                try {
                    ftpClient.logout();                             //退出FTP
                    ftpClient.disconnect();                         //断开连接
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}