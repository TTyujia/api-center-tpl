package cn.svte.api.mocker.service;

import cn.svte.api.rest.model.ApiResult;
import cn.svte.api.rest.service.SvteService;
import org.springframework.stereotype.Service;

@Service
public class SvteServiceImpl implements SvteService {

    @Override
    public ApiResult getApproveLines(String id) {
        return ApiResult.ok();
    }
}
