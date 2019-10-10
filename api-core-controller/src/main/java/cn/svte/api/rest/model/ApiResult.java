package cn.svte.api.rest.model;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class ApiResult {

    @ApiModelProperty(example = "0")
    private Integer code;

    @ApiModelProperty
    private String message;

    @ApiModelProperty
    private Object data;

    public ApiResult() {
    }

    public ApiResult(Integer code) {
        this.code = code;
    }

    public ApiResult(Integer code, Object data) {
        this.code = code;
        this.data = data;
    }

    public ApiResult(Integer code, String message, Object data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public static ApiResult ok(Object data) {
        return new ApiResult(0, data);
    }

    public static ApiResult ok() {
        return new ApiResult(0);
    }
}
