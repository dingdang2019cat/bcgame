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
        userVO.setLoginTime(simpleDateFormat.format(user.getTime()));
        userVO.setRebateRatio(0);
        userVO.setTeamAmount(teamAmount);
        userVO.setTeamCount(teamCount);
        userVO.setUserMark(user.getRemark());
        userVO.setUserType(user.getType());
        userVO.setContractStatus(8);
        return userVO;
    }
}
