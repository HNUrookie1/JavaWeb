package com.itheima;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogDemo {
    private static Logger log = LoggerFactory.getLogger(LogDemo.class);
    public static void main(String[] args) {
        log.info("info message ...");
        log.debug("debug message ...");
        log.warn("warn message ...");
    }
}
