<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/4/28
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>开奖走势图</title>
    <link rel="icon" href="/resource/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/resource/dh-trend.css"/>
    <link rel="stylesheet" href="/resource/theme-black.css?ver=20180410"/>
</head>
<body>

<!-- 开奖走势图 start -->
<div class="trendContainer">

    <!-- 开奖走势图头部 -->
    <div class="trendHeaderArea">
        <span class="lottsType-trend">彩种：${gameName}</span>
        <ul class="lottsGroup-trend">
            <li class="lottsDetail-trend active">
                <a href="javascript:;">五星</a>
            </li>
        </ul>
        <div class="downloadStatementBox">
            <a href="javascript:;" class="hideSearchBar-trend" onclick="trendHideSearchBar(this)">
                <i class="hideSearchBarIcon"></i>
                <span>隐藏功能区</span>
            </a>
        </div>
    </div>

    <!-- 开奖走势图搜索条 -->
    <div class="trendSearchBarArea" id="trendSearchBarArea">
        <div class="areaContainer">
            <div class="trendSearchCheckBox">
                <label class="checkboxDetail">
                    <input type="checkbox" class="checkbox" id="trendSplitLine" checked />
                    <span>辅助线</span>
                </label>
                <label class="checkboxDetail">
                    <input type="checkbox" class="checkbox" id="trendOmission" checked />
                    <span>遗漏</span>
                </label>
                <label class="checkboxDetail">
                    <input type="checkbox" class="checkbox" id="trendOmissionBar" />
                    <span>遗漏条</span>
                </label>
                <label class="checkboxDetail">
                    <input type="checkbox" class="checkbox" id="trendLine" checked />
                    <span>走势</span>
                </label>
                <label class="checkboxDetail">
                    <input type="checkbox" class="checkbox" id="trendNumWarmCold" />
                    <span>号温</span>
                </label>
            </div>
            <div class="latelyIssueBox-trend">
                <a href="trend?len=100" class="latelyIssue-trend ">近100期</a>
                <a href="trend?len=50" class="latelyIssue-trend ">近50期</a>
                <a href="trend?len=30" class="latelyIssue-trend active">近30期</a>
            </div>
        </div>
    </div>
    <!-- 开奖号码走势图 -->
    <div class="lotteryTrendArea" id="lotteryTrendArea">
        <table class="lottsTrendTable">
            <thead>
            <tr class="listHeader">
                <th rowspan="2" class="smallFont14">期号</th>
                <th rowspan="2" class="smallFont14">开奖号码</th>

                <th colspan="10" width="17" class="smallFont14 trendLine">万位</th>

                <th colspan="10" width="17" class="smallFont14 trendLine">千位</th>

                <th colspan="10" width="17" class="smallFont14 trendLine">百位</th>

                <th colspan="10" width="17" class="smallFont14 trendLine">十位</th>

                <th colspan="10" width="17" class="smallFont14 trendLine">个位</th>

                <!--<th colspan="10" width="17" class="smallFont14 trendLine">号码分布</th>-->

            </tr>
            <tr class="listHeader">
                <!--<td>-->
                <!--<label class="checkboxDetail">-->
                <!--<input type="checkbox" class="checkbox" />-->
                <!--<span>全部</span>-->
                <!--</label>-->
                <!--</td>-->
                <c:forEach var="x1" begin="0" end="4" step="1">
                    <c:forEach var="x" begin="${start}" end="${end}" step="1">
                        <c:choose>
                            <c:when test="${start == 0}">
                                <td class="trendBorder-l" width="17">
                                    ${x}</td>
                            </c:when>
                            <c:otherwise>
                                <td width="17">${x}</td>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </c:forEach>


                <!--
                <td class="trendBorder-l" width="17">
                    0</td>

                <td width="17">1</td>

                <td width="17">2</td>

                <td width="17">3</td>

                <td width="17">4</td>

                <td width="17">5</td>

                <td width="17">6</td>

                <td width="17">7</td>

                <td width="17">8</td>

                <td width="17">9</td>
                -->

            </tr>
            </thead>
            <tbody>
            <c:forEach var="list1" items="${list}">
                <tr>
                    <td class="fontColorBlack" width="110">${list1.sessionId}</td>
                    <td class="fontColorBlack trendBorder-l" width="80">${list1.nums}</td>
                    <c:set value="${ fn:split(list1.content, ' ') }" var="str1" />
                    <c:set value="0" var="index" />
                    <c:forEach items="${ str1 }" var="s">
                        <c:set value="${ fn:split(s, ',') }" var="str2" />
                        <c:set value="0" var="startIndex" />
                        <c:forEach items="${ str2 }" var="s1">
                            <c:set value="${startIndex + 1}" var="startIndex1" />
                            <c:if test="${fn:contains(gameName, 'ssc')}">
                                <c:set value="${startIndex}" var="startIndex1" />
                            </c:if>
                            <c:choose>
                                <c:when test="${startIndex == 0}">
                                    <td class="trendBorder-l">${s1}</td>
                                </c:when>
                                <c:when test="${fn:split(list1.nums, ',')[index] == startIndex1}">
                                    <td class="trendBall-${index + 1}">${s1}</td>
                                </c:when>
                                <c:otherwise>
                                    <td class="">${s1}</td>
                                </c:otherwise>
                            </c:choose>
                            <c:set value="#{startIndex + 1}" var="startIndex" />
                        </c:forEach>
                        <c:set value="#{index + 1}" var="index" />
                    </c:forEach>
                </tr>
            </c:forEach>

            </tbody>
            <!--
            <tfoot>

            <tr class="trendNumTotal">
                <td class="smallFont14">出现总次数</td>
                <td class="trendBorder-l"></td>

                <td class="trendBorder-l">2</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">7</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="trendBorder-l">2</td>

                <td class="">4</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class="">2</td>

                <td class="trendBorder-l">1</td>

                <td class="">2</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">6</td>

                <td class="">0</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class="trendBorder-l">1</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">3</td>

                <td class="trendBorder-l">5</td>

                <td class="">4</td>

                <td class="">4</td>

                <td class="">0</td>

                <td class="">3</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">3</td>

                <td class="">0</td>

                <td class="">5</td>

                <td class="trendBorder-l">9</td>

                <td class="">11</td>

                <td class="">13</td>

                <td class="">9</td>

                <td class="">9</td>

                <td class="">15</td>

                <td class="">17</td>

                <td class="">12</td>

                <td class="">12</td>

                <td class="">14</td>

            </tr>

            <tr class="trendNumTotal">
                <td class="smallFont14">最大遗漏值</td>
                <td class="trendBorder-l"></td>

                <td class="trendBorder-l">16</td>

                <td class="">20</td>

                <td class="">16</td>

                <td class="">16</td>

                <td class="">18</td>

                <td class="">39</td>

                <td class="">14</td>

                <td class="">22</td>

                <td class="">13</td>

                <td class="">20</td>

                <td class="trendBorder-l">12</td>

                <td class="">12</td>

                <td class="">10</td>

                <td class="">21</td>

                <td class="">24</td>

                <td class="">18</td>

                <td class="">23</td>

                <td class="">17</td>

                <td class="">58</td>

                <td class="">19</td>

                <td class="trendBorder-l">21</td>

                <td class="">27</td>

                <td class="">23</td>

                <td class="">15</td>

                <td class="">16</td>

                <td class="">9</td>

                <td class="">32</td>

                <td class="">30</td>

                <td class="">12</td>

                <td class="">9</td>

                <td class="trendBorder-l">27</td>

                <td class="">19</td>

                <td class="">7</td>

                <td class="">30</td>

                <td class="">24</td>

                <td class="">19</td>

                <td class="">8</td>

                <td class="">13</td>

                <td class="">35</td>

                <td class="">26</td>

                <td class="trendBorder-l">7</td>

                <td class="">12</td>

                <td class="">10</td>

                <td class="">41</td>

                <td class="">34</td>

                <td class="">18</td>

                <td class="">22</td>

                <td class="">12</td>

                <td class="">48</td>

                <td class="">10</td>

                <td class="trendBorder-l">4</td>

                <td class="">7</td>

                <td class="">5</td>

                <td class="">7</td>

                <td class="">11</td>

                <td class="">4</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">4</td>

            </tr>

            <tr class="trendNumTotal">
                <td class="smallFont14">最大连出值</td>
                <td class="trendBorder-l"></td>

                <td class="trendBorder-l">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="trendBorder-l">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="trendBorder-l">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">0</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="trendBorder-l">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="trendBorder-l">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">0</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">0</td>

                <td class="">2</td>

                <td class="trendBorder-l">2</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">8</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">3</td>

            </tr>

            <tr class="trendNumTotal">
                <td rowspan="2" class="smallFont14">期号</td>
                <td rowspan="2" class="trendBorder-l smallFont14">开奖号码</td>


                <td class="trendBorder-l">
                    0</td>

                <td>1</td>

                <td>2</td>

                <td>3</td>

                <td>4</td>

                <td>5</td>

                <td>6</td>

                <td>7</td>

                <td>8</td>

                <td>9</td>


                <td class="trendBorder-l">
                    0</td>

                <td>1</td>

                <td>2</td>

                <td>3</td>

                <td>4</td>

                <td>5</td>

                <td>6</td>

                <td>7</td>

                <td>8</td>

                <td>9</td>


                <td class="trendBorder-l">
                    0</td>

                <td>1</td>

                <td>2</td>

                <td>3</td>

                <td>4</td>

                <td>5</td>

                <td>6</td>

                <td>7</td>

                <td>8</td>

                <td>9</td>


                <td class="trendBorder-l">
                    0</td>

                <td>1</td>

                <td>2</td>

                <td>3</td>

                <td>4</td>

                <td>5</td>

                <td>6</td>

                <td>7</td>

                <td>8</td>

                <td>9</td>


                <td class="trendBorder-l">
                    0</td>

                <td>1</td>

                <td>2</td>

                <td>3</td>

                <td>4</td>

                <td>5</td>

                <td>6</td>

                <td>7</td>

                <td>8</td>

                <td>9</td>


                <td class="trendBorder-l">
                    0</td>

                <td>1</td>

                <td>2</td>

                <td>3</td>

                <td>4</td>

                <td>5</td>

                <td>6</td>

                <td>7</td>

                <td>8</td>

                <td>9</td>

            </tr>
            <tr class="trendNumTotal">

                <td colspan="10" width="17" class="smallFont14 trendBorder-l">万位</td>

                <td colspan="10" width="17" class="smallFont14 trendBorder-l">千位</td>

                <td colspan="10" width="17" class="smallFont14 trendBorder-l">百位</td>

                <td colspan="10" width="17" class="smallFont14 trendBorder-l">十位</td>

                <td colspan="10" width="17" class="smallFont14 trendBorder-l">个位</td>

                <td colspan="10" width="17" class="smallFont14 trendBorder-l">号码分布</td>

            </tr>
            </tfoot>
            -->
        </table>
        <div class="lottsTrendCanvasBox" id="lottsTrendCanvasBox"></div>
    </div>
    <!-- 号码示例 -->
    <!-- <div class="trendBallExampleBox">
        <label>
            <i class="trendBallRed">1</i>
            <span>正常显示</span>
        </label>
        <label>
            <i class="numBallHot">2</i>
            <span>热号</span>
        </label>
        <label>
            <i class="numBallCold">3</i>
            <span>冷号</span>
        </label>
        <label>
            <i class="numBallWarm">4</i>
            <span>温号</span>
        </label>
        <label>
            <i class="numBallOverlap">5</i>
            <span>重叠号</span>
        </label>
        <label>
            <i class="numBallOdd">6</i>
            <span>单号</span>
        </label>
    </div> -->
</div>
<!-- 开奖走势图 end -->

<script type="text/javascript" src="/resource/jquery-1.11.0.min.js?ver=20180410"></script>
<script src="/resource/dh-trend.js"></script>
<script src="/resource/My97DatePicker/WdatePicker.js"></script>
</body>
</html>

