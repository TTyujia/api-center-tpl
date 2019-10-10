package cn.svte.api.rest.controller;

import cn.svte.api.rest.model.ApiResult;
import cn.svte.api.rest.model.dto.UserResult;
import cn.svte.api.rest.service.SvteService;
import cn.svte.api.rest.swagger.Sprint11;
import cn.svte.api.rest.swagger.Sprint12;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Api(tags = "Svte Controller")
@RequestMapping("/v1")
public class SvteController {

    @Autowired
    private SvteService svteService;

    @ApiOperation(value = "查询审批线")
    @Sprint11
    @ApiResponses(value = {
            @ApiResponse(code = 204, message = "Indicates the user-group was found and has been get. Response-body is intentionally empty."),
            @ApiResponse(code = 404, message = "Indicates the requested staff was not found.")
    })
    @GetMapping(path = "/approve-lines")
    public ApiResult getApproveLines(@Param("id")String id) {
        return svteService.getApproveLines(id);
    }

    @ApiOperation(value = "查询审批线")
    @Sprint12
    @ApiResponses(value = {
            @ApiResponse(code = 204, message = "Indicates the user-group was found and has been get. Response-body is intentionally empty."),
            @ApiResponse(code = 404, message = "Indicates the requested staff was not found.")
    })
    @GetMapping(path = "/test/user")
    public UserResult getTestUser() {
        return UserResult.ok();
    }
}
