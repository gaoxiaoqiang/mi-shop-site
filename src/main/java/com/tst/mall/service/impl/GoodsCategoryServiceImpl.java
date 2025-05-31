package com.tst.mall.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.tst.mall.model.entity.GoodsCategory;
import com.tst.mall.mapper.GoodsCategoryMapper;
import com.tst.mall.service.GoodsCategoryService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author gxq
 * @since 2025-05-28
 */
@Service
public class GoodsCategoryServiceImpl extends ServiceImpl<GoodsCategoryMapper, GoodsCategory> implements GoodsCategoryService {

    @Autowired
    private GoodsCategoryMapper goodsCategoryMapper;

    @Override
    public List<GoodsCategory> getGoodsCategory() {

         // 查询所有未删除的分类
    List<GoodsCategory> all = list(new QueryWrapper<GoodsCategory>().eq("delete_flag", 0).orderByAsc("category_sort"));

    // 一级分类
    List<GoodsCategory> level1 = all.stream()
            .filter(c -> c.getParentId() == 0)
            .toList();

    // 给一级分类设置children
    for (GoodsCategory parent : level1) {
        List<GoodsCategory> children = all.stream()
                .filter(c -> c.getParentId().equals(parent.getCategoryId()))
                .toList();
        parent.setChildren(children); // 你的GoodsCategory需有children字段及set方法
    }
    return level1;
    }
}
