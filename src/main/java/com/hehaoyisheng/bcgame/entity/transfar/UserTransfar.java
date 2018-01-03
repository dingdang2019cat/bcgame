package com.hehaoyisheng.bcgame.entity.transfar;

import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.vo.UserVO;

public class UserTransfar {
    public static UserVO userToUserVO(User user, double teamAmount, int teamCount){
        UserVO userVO = new UserVO();
        userVO.setAccount(user.getUsername());
        userVO.setAmount(user.getMoney());
        userVO.setLoginTime(user.getTime());
        userVO.setRebateRatio(0);
        userVO.setTeamAmount(0);
        userVO.setLoginTime(user.getTime());
        userVO.setTeamCount(teamCount);
        userVO.setUserMark(user.getRemark());
        userVO.setUserType(user.getType());
        userVO.setContractStatus(8);
        return userVO;
    }
}
