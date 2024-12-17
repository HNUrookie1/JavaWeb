package com.itheima.utils;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import org.springframework.web.multipart.MultipartFile;
import java.io.*;
import java.util.UUID;

/**
 * 阿里云 OSS 工具类
 */
public class AliOSSUtils {

    private String endpoint = "https://oss-cn-hangzhou.aliyuncs.com";
    private String accessKeyId = "LTAI4GCH1vX6DKqJWxd6nEuW";
    private String accessKeySecret = "yBshYweHOpqDuhCArrVHwIiBKpyqSL";
    private String bucketName = "web-tlias";

    /**
     * 实现上传图片到OSS
     */
    public String upload(MultipartFile file) throws IOException {
        // 获取上传的文件的输入流
        InputStream inputStream = file.getInputStream();

        // 避免文件覆盖
        String originalFilename = file.getOriginalFilename();
        String fileName = UUID.randomUUID().toString() + originalFilename.substring(originalFilename.lastIndexOf("."));

        //上传文件到 OSS
        OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);
        ossClient.putObject(bucketName, fileName, inputStream);

        //文件访问路径
        String url = endpoint.split("//")[0] + "//" + bucketName + "." + endpoint.split("//")[1] + "/" + fileName;
        // 关闭ossClient
        ossClient.shutdown();
        return url;// 把上传到oss的路径返回
    }

}
