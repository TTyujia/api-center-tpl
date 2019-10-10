package cn.svte.api.runner.config;

import cn.svte.api.rest.swagger.Sprint11;
import cn.svte.api.rest.swagger.Sprint12;
import com.google.common.base.Predicates;
import io.swagger.annotations.ApiOperation;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Configuration
@EnableSwagger2
public class SwaggerConfig {

    @Bean
    public Docket createSprint11Api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("sprint11")
                .apiInfo(apiInfo())
                .select()
//                .apis(RequestHandlerSelectors.withMethodAnnotation(Allowable.class))
//                .apis(RequestHandlerSelectors.withClassAnnotation(Allowable.class))
                .apis(RequestHandlerSelectors.withMethodAnnotation(Sprint11.class))
                .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
//                .apis(RequestHandlerSelectors.basePackage("cn.svte.api.rest"))
                .apis(Predicates.not(RequestHandlerSelectors.basePackage("org.springframework.boot")))
                .apis(Predicates.not(RequestHandlerSelectors.basePackage("org.springframework.cloud")))
                .apis(Predicates.not(RequestHandlerSelectors.basePackage("org.springframework.data.rest.webmvc")))
                .paths(Predicates.not(PathSelectors.regex("/error")))
                .paths(PathSelectors.any())
                .build();
    }
    @Bean
    public Docket createSprint12Api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("sprint12")
                .apiInfo(apiInfo())
                .select()
//                .apis(RequestHandlerSelectors.withMethodAnnotation(Allowable.class))
//                .apis(RequestHandlerSelectors.withClassAnnotation(Allowable.class))
                .apis(RequestHandlerSelectors.withMethodAnnotation(Sprint12.class))
                .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
//                .apis(RequestHandlerSelectors.basePackage("cn.svte.api.rest"))
                .apis(Predicates.not(RequestHandlerSelectors.basePackage("org.springframework.boot")))
                .apis(Predicates.not(RequestHandlerSelectors.basePackage("org.springframework.cloud")))
                .apis(Predicates.not(RequestHandlerSelectors.basePackage("org.springframework.data.rest.webmvc")))
                .paths(Predicates.not(PathSelectors.regex("/error")))
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("API Core Center")
                .description("Accenture API Core Center")
                .termsOfServiceUrl("")
                .contact(new Contact("Chao.Tang", "", "chao.tang@accenture.com"))
                .version("1.0")
                .build();
    }

    @Target({ElementType.METHOD, ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Allowable {
        // nothing
    }
}
