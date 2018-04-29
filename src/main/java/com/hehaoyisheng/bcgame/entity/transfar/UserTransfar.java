package com.hehaoyisheng.bcgame.entity.transfar;

import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.vo.UserVO;

import java.text.SimpleDateFormat;

public class UserTransfar {

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public static UserVO userToUserVO(User user, double teamAmount, int teamCount){
        UserVO userVO = new UserVO();
        userVO.setAccount(user.getUsername());
        userVO.setAmount(user.getMoney());
        if(user.getTime() != null){
            userVO.setLoginTime(simpleDateFormat.format(user.getTime()));
        }
        userVO.setRebateRatio(user.getFandian());
        userVO.setTeamAmount(teamAmount);
        userVO.setTeamCount(teamCount);
        userVO.setHomeRemark(user.getRemark());
        userVO.setUserType(user.getType());
        userVO.setContractStatus(8);
        userVO.setParentAccount(user.getShangji());
        return userVO;
    }
}
