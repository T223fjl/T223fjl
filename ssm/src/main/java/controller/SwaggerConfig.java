package controller;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
 
/**
 * @author Devil
 * @create 2018-09-26 19:16
 */
@EnableSwagger2
@ComponentScan(basePackages = {"ccontroller"})
@Configuration
public class SwaggerConfig extends WebMvcConfigurationSupport{
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.any())
                .paths(PathSelectors.any())
                .build();
    }
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("��SwaggerDemo����ʾ����--��")//����
                .description("description:��ĿժҪ")//����
                .termsOfServiceUrl("http://www.google.com.hk")//�����ɼ��������ַ����˾�ڲ�ʹ�õĻ�����Ҫ��
                .contact(new Contact("Devil", "https://blog.csdn.net/qq_36911145", "969430169@qq.com"))//������Ϣ
                .version("6.6.6")//�汾��
                .build();
    }
}

