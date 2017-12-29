package com.hehaoyisheng.bcgame.entity.vo;

import java.util.List;

public class OrderModel {
    List<Order> order;

    public List<Order> getOrder() {
        return order;
    }

    public void setOrder(List<Order> order) {
        this.order = order;
    }

    public OrderModel(List<Order> order) {
        this.order = order;
    }

    public OrderModel() {
    }
}
