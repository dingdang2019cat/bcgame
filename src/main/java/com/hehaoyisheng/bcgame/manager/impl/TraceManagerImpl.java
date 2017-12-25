package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.TraceDAO;
import com.hehaoyisheng.bcgame.entity.Trace;
import com.hehaoyisheng.bcgame.manager.TraceManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Component
public class TraceManagerImpl implements TraceManager{

    private static final Logger logger = LoggerFactory.getLogger(TraceManagerImpl.class);

    @Resource
    private TraceDAO traceDAO;

    public int insert(Trace trace) {
        try {
            return traceDAO.insert(trace);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int update(Trace trace) {
        try {
            return traceDAO.update(trace);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<Trace> select(Trace trace, int from, int limit, Date startTime, Date endTime) {
        try {
            return traceDAO.select(trace, from, limit, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    public int count(Trace trace, Date startTime, Date endTime) {
        try {
            return traceDAO.count(trace, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }
}
