package com.tst.mall.service;

import com.tst.mall.model.entity.GoodsCategory;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author gxq
 * @since 2025-05-28
 */
public interface GoodsCategoryService extends IService<GoodsCategory> {

    List<GoodsCategory> getGoodsCategory();
}
