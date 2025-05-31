package com.tst.mall.config.aop.aspect;

import com.tst.mall.common.response.ApiResult;
import com.tst.mall.config.aop.annotation.LimitList;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import java.util.List;

@Aspect
@Component
public class LimitListAspect {

    @Around("@annotation(limitList)")
    @SuppressWarnings("unchecked")
    public Object limitListReturn(ProceedingJoinPoint joinPoint, LimitList limitList) throws Throwable {
        Object result = joinPoint.proceed();
        if (result instanceof ApiResult) {
            ApiResult<Object> apiResult = (ApiResult<Object>) result;
            Object data = apiResult.getData();
            if (data instanceof List<?> list && list.size() > limitList.value()) {
                apiResult.setData( list.subList(0, limitList.value()));
                return apiResult;
            }
        }
        return result;
    }
}