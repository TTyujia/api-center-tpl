package cn.svte.api.rest.model.dto;

import cn.svte.api.rest.model.ApiResult;
import cn.svte.api.rest.model.po.User;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class UserResult extends ApiResult {
    private User data;
    public UserResult(Integer code) {
        super.setCode(code);
    }
    public static UserResult ok() {
        return new UserResult(0);
    }
}

