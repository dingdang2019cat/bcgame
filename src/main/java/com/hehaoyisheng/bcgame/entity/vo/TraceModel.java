package com.hehaoyisheng.bcgame.entity.vo;

import java.util.List;

public class TraceModel {
    List<TraceOrder> traceOrders;

    public List<TraceOrder> getTraceOrders() {
        return traceOrders;
    }

    public void setTraceOrders(List<TraceOrder> traceOrders) {
        this.traceOrders = traceOrders;
    }

    public TraceModel(List<TraceOrder> traceOrders) {
        this.traceOrders = traceOrders;
    }

    public TraceModel() {
    }
}
