package cn.svte.api.runner;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.io.File;
@EnableSwagger2
@SpringBootApplication(exclude = {SecurityAutoConfiguration.class, DataSourceAutoConfiguration.class})
//@PropertySources({@PropertySource(value = "file:${root}/conf/${env}/application-dev.properties")})
public class MainApplication {

    public static void main(String[] args) {
//        System.setProperty("logging.config", System.getProperty("root") + File.separator + "conf" + File.separator
//                + System.getProperty("env") + File.separator + "logback.xml");
        SpringApplication.run(MainApplication.class, args);
    }
}
