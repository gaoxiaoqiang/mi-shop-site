package com.tst.mall.service.impl;

import com.baomidou.mybatisplus.extension.service.IService;
import com.tst.mall.model.entity.GoodsSeries;
import com.tst.mall.mapper.GoodsSeriesMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 商品系列表 服务实现类
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Service
public class GoodsSeriesServiceImpl extends ServiceImpl<GoodsSeriesMapper, GoodsSeries> implements IService<GoodsSeries> {

}
