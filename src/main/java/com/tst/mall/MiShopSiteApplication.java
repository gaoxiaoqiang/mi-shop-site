package com.tst.mall;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.tst.mall.mapper")
@SpringBootApplication
public class MiShopSiteApplication {

    public static void main(String[] args) {
        SpringApplication.run(MiShopSiteApplication.class, args);
    }

}
