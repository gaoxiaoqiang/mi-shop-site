package com.tst.mall.controller;

import com.tst.mall.common.response.ApiResult;
import com.tst.mall.config.aop.annotation.LimitList;
import com.tst.mall.model.entity.GoodsCategory;
import com.tst.mall.service.GoodsCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author gxq
 * @since 2025-05-28
 */
@RestController
@RequestMapping("/category")
public class GoodsCategoryController {

    @Autowired
    GoodsCategoryService goodsCategoryService;


    @LimitList(2)
    @PostMapping("/goodsCategory")
    public ApiResult<List<GoodsCategory>> getGoodsCategory( ){
        List<GoodsCategory> categoryList=goodsCategoryService.getGoodsCategory();

        return  ApiResult.success(categoryList);
    }

}
