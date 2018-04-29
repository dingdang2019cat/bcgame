<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/4/28
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>开奖走势图</title>
    <link rel="icon" href="/res/home/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/res/home/css/dh-trend.css"/>
    <link rel="stylesheet" href="/res/home/css/theme-black.css?ver=20180410"/>
</head>
<body>

<!-- 开奖走势图 start -->
<div class="trendContainer">

    <!-- 开奖走势图头部 -->
    <div class="trendHeaderArea">
        <span class="lottsType-trend">彩种：重庆时时彩</span>
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

                <th colspan="10" width="17" class="smallFont14 trendLine">号码分布</th>

            </tr>
            <tr class="listHeader">
                <!--<td>-->
                <!--<label class="checkboxDetail">-->
                <!--<input type="checkbox" class="checkbox" />-->
                <!--<span>全部</span>-->
                <!--</label>-->
                <!--</td>-->


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

            </tr>
            </thead>
            <tbody>

            <tr>
                <td class="fontColorBlack" width="110">20180427-096</td>
                <td class="fontColorBlack trendBorder-l" width="80">9,3,0,5,1</td>

                <td class=" trendBorder-l">2</td>

                <td class="">3</td>

                <td class="">4</td>

                <td class="">17</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="">8</td>

                <td class="">22</td>

                <td class="">18</td>

                <td class="trendBall-1">9</td>

                <td class=" trendBorder-l">4</td>

                <td class="">1</td>

                <td class="">29</td>

                <td class="trendBall-2">3</td>

                <td class="">12</td>

                <td class="">2</td>

                <td class="">15</td>

                <td class="">7</td>

                <td class="">9</td>

                <td class="">19</td>

                <td class="trendBall-3 trendBorder-l">0</td>

                <td class="">25</td>

                <td class="">10</td>

                <td class="">7</td>

                <td class="">2</td>

                <td class="">15</td>

                <td class="">6</td>

                <td class="">16</td>

                <td class="">12</td>

                <td class="">5</td>

                <td class=" trendBorder-l">2</td>

                <td class="">6</td>

                <td class="">5</td>

                <td class="">35</td>

                <td class="">8</td>

                <td class="trendBall-4">5</td>

                <td class="">13</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">10</td>

                <td class=" trendBorder-l">17</td>

                <td class="trendBall-5">1</td>

                <td class="">22</td>

                <td class="">8</td>

                <td class="">5</td>

                <td class="">7</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">15</td>

                <td class="clustNumBallOverlap trendBorder-l">0</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="">4</td>

                <td class="clustNumBallOverlap">3</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-097</td>
                <td class="fontColorBlack trendBorder-l" width="80">6,5,5,5,0</td>

                <td class=" trendBorder-l">3</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">18</td>

                <td class="">6</td>

                <td class="">2</td>

                <td class="trendBall-1">6</td>

                <td class="">23</td>

                <td class="">19</td>

                <td class="">1</td>

                <td class=" trendBorder-l">5</td>

                <td class="">2</td>

                <td class="">30</td>

                <td class="">1</td>

                <td class="">13</td>

                <td class="trendBall-2">5</td>

                <td class="">16</td>

                <td class="">8</td>

                <td class="">10</td>

                <td class="">20</td>

                <td class=" trendBorder-l">1</td>

                <td class="">26</td>

                <td class="">11</td>

                <td class="">8</td>

                <td class="">3</td>

                <td class="trendBall-3">5</td>

                <td class="">7</td>

                <td class="">17</td>

                <td class="">13</td>

                <td class="">6</td>

                <td class=" trendBorder-l">3</td>

                <td class="">7</td>

                <td class="">6</td>

                <td class="">36</td>

                <td class="">9</td>

                <td class="trendBall-4">5</td>

                <td class="">14</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">11</td>

                <td class="trendBall-5 trendBorder-l">0</td>

                <td class="">1</td>

                <td class="">23</td>

                <td class="">9</td>

                <td class="">6</td>

                <td class="">8</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">16</td>

                <td class="clustNumBallOverlap trendBorder-l">0</td>

                <td class="">1</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="clustNumBallWarm">5</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">1</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-098</td>
                <td class="fontColorBlack trendBorder-l" width="80">1,7,6,6,4</td>

                <td class=" trendBorder-l">4</td>

                <td class="trendBall-1">1</td>

                <td class="">6</td>

                <td class="">19</td>

                <td class="">7</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">24</td>

                <td class="">20</td>

                <td class="">2</td>

                <td class=" trendBorder-l">6</td>

                <td class="">3</td>

                <td class="">31</td>

                <td class="">2</td>

                <td class="">14</td>

                <td class="">1</td>

                <td class="">17</td>

                <td class="trendBall-2">7</td>

                <td class="">11</td>

                <td class="">21</td>

                <td class=" trendBorder-l">2</td>

                <td class="">27</td>

                <td class="">12</td>

                <td class="">9</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="trendBall-3">6</td>

                <td class="">18</td>

                <td class="">14</td>

                <td class="">7</td>

                <td class=" trendBorder-l">4</td>

                <td class="">8</td>

                <td class="">7</td>

                <td class="">37</td>

                <td class="">10</td>

                <td class="">1</td>

                <td class="trendBall-4">6</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">12</td>

                <td class=" trendBorder-l">1</td>

                <td class="">2</td>

                <td class="">24</td>

                <td class="">10</td>

                <td class="trendBall-5">4</td>

                <td class="">9</td>

                <td class="">6</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">17</td>

                <td class=" trendBorder-l">1</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="">6</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">4</td>

                <td class="">1</td>

                <td class="clustNumBallWarm">6</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="">3</td>

                <td class="">2</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-099</td>
                <td class="fontColorBlack trendBorder-l" width="80">4,2,9,3,6</td>

                <td class=" trendBorder-l">5</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="">20</td>

                <td class="trendBall-1">4</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">25</td>

                <td class="">21</td>

                <td class="">3</td>

                <td class=" trendBorder-l">7</td>

                <td class="">4</td>

                <td class="trendBall-2">2</td>

                <td class="">3</td>

                <td class="">15</td>

                <td class="">2</td>

                <td class="">18</td>

                <td class="">1</td>

                <td class="">12</td>

                <td class="">22</td>

                <td class=" trendBorder-l">3</td>

                <td class="">28</td>

                <td class="">13</td>

                <td class="">10</td>

                <td class="">5</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">19</td>

                <td class="">15</td>

                <td class="trendBall-3">9</td>

                <td class=" trendBorder-l">5</td>

                <td class="">9</td>

                <td class="">8</td>

                <td class="trendBall-4">3</td>

                <td class="">11</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class="">13</td>

                <td class=" trendBorder-l">2</td>

                <td class="">3</td>

                <td class="">25</td>

                <td class="">11</td>

                <td class="">1</td>

                <td class="">10</td>

                <td class="trendBall-5">6</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class="">18</td>

                <td class=" trendBorder-l">2</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="clustNumBallOverlap">3</td>

                <td class="clustNumBallOverlap">4</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-100</td>
                <td class="fontColorBlack trendBorder-l" width="80">1,5,7,8,7</td>

                <td class=" trendBorder-l">6</td>

                <td class="trendBall-1">1</td>

                <td class="">8</td>

                <td class="">21</td>

                <td class="">1</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">26</td>

                <td class="">22</td>

                <td class="">4</td>

                <td class=" trendBorder-l">8</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="">16</td>

                <td class="trendBall-2">5</td>

                <td class="">19</td>

                <td class="">2</td>

                <td class="">13</td>

                <td class="">23</td>

                <td class=" trendBorder-l">4</td>

                <td class="">29</td>

                <td class="">14</td>

                <td class="">11</td>

                <td class="">6</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="trendBall-3">7</td>

                <td class="">16</td>

                <td class="">1</td>

                <td class=" trendBorder-l">6</td>

                <td class="">10</td>

                <td class="">9</td>

                <td class="">1</td>

                <td class="">12</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="">7</td>

                <td class="trendBall-4">8</td>

                <td class="">14</td>

                <td class=" trendBorder-l">3</td>

                <td class="">4</td>

                <td class="">26</td>

                <td class="">12</td>

                <td class="">2</td>

                <td class="">11</td>

                <td class="">1</td>

                <td class="trendBall-5">7</td>

                <td class="">5</td>

                <td class="">19</td>

                <td class=" trendBorder-l">3</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="">1</td>

                <td class="clustNumBallWarm">7</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="">1</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-101</td>
                <td class="fontColorBlack trendBorder-l" width="80">8,7,9,3,7</td>

                <td class=" trendBorder-l">7</td>

                <td class="">1</td>

                <td class="">9</td>

                <td class="">22</td>

                <td class="">2</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class="">27</td>

                <td class="trendBall-1">8</td>

                <td class="">5</td>

                <td class=" trendBorder-l">9</td>

                <td class="">6</td>

                <td class="">2</td>

                <td class="">5</td>

                <td class="">17</td>

                <td class="">1</td>

                <td class="">20</td>

                <td class="trendBall-2">7</td>

                <td class="">14</td>

                <td class="">24</td>

                <td class=" trendBorder-l">5</td>

                <td class="">30</td>

                <td class="">15</td>

                <td class="">12</td>

                <td class="">7</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">17</td>

                <td class="trendBall-3">9</td>

                <td class=" trendBorder-l">7</td>

                <td class="">11</td>

                <td class="">10</td>

                <td class="trendBall-4">3</td>

                <td class="">13</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">8</td>

                <td class="">1</td>

                <td class="">15</td>

                <td class=" trendBorder-l">4</td>

                <td class="">5</td>

                <td class="">27</td>

                <td class="">13</td>

                <td class="">3</td>

                <td class="">12</td>

                <td class="">2</td>

                <td class="trendBall-5">7</td>

                <td class="">6</td>

                <td class="">20</td>

                <td class=" trendBorder-l">4</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">3</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="clustNumBallWarm">7</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-102</td>
                <td class="fontColorBlack trendBorder-l" width="80">6,2,6,3,5</td>

                <td class=" trendBorder-l">8</td>

                <td class="">2</td>

                <td class="">10</td>

                <td class="">23</td>

                <td class="">3</td>

                <td class="">7</td>

                <td class="trendBall-1">6</td>

                <td class="">28</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class=" trendBorder-l">10</td>

                <td class="">7</td>

                <td class="trendBall-2">2</td>

                <td class="">6</td>

                <td class="">18</td>

                <td class="">2</td>

                <td class="">21</td>

                <td class="">1</td>

                <td class="">15</td>

                <td class="">25</td>

                <td class=" trendBorder-l">6</td>

                <td class="">31</td>

                <td class="">16</td>

                <td class="">13</td>

                <td class="">8</td>

                <td class="">5</td>

                <td class="trendBall-3">6</td>

                <td class="">2</td>

                <td class="">18</td>

                <td class="">1</td>

                <td class=" trendBorder-l">8</td>

                <td class="">12</td>

                <td class="">11</td>

                <td class="trendBall-4">3</td>

                <td class="">14</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">9</td>

                <td class="">2</td>

                <td class="">16</td>

                <td class=" trendBorder-l">5</td>

                <td class="">6</td>

                <td class="">28</td>

                <td class="">14</td>

                <td class="">4</td>

                <td class="trendBall-5">5</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="">21</td>

                <td class=" trendBorder-l">5</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="clustNumBallOverlap">3</td>

                <td class="">3</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="clustNumBallWarm">6</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-103</td>
                <td class="fontColorBlack trendBorder-l" width="80">2,1,8,9,1</td>

                <td class=" trendBorder-l">9</td>

                <td class="">3</td>

                <td class="trendBall-1">2</td>

                <td class="">24</td>

                <td class="">4</td>

                <td class="">8</td>

                <td class="">1</td>

                <td class="">29</td>

                <td class="">2</td>

                <td class="">7</td>

                <td class=" trendBorder-l">11</td>

                <td class="trendBall-2">1</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="">19</td>

                <td class="">3</td>

                <td class="">22</td>

                <td class="">2</td>

                <td class="">16</td>

                <td class="">26</td>

                <td class=" trendBorder-l">7</td>

                <td class="">32</td>

                <td class="">17</td>

                <td class="">14</td>

                <td class="">9</td>

                <td class="">6</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="trendBall-3">8</td>

                <td class="">2</td>

                <td class=" trendBorder-l">9</td>

                <td class="">13</td>

                <td class="">12</td>

                <td class="">1</td>

                <td class="">15</td>

                <td class="">6</td>

                <td class="">5</td>

                <td class="">10</td>

                <td class="">3</td>

                <td class="trendBall-4">9</td>

                <td class=" trendBorder-l">6</td>

                <td class="trendBall-5">1</td>

                <td class="">29</td>

                <td class="">15</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">8</td>

                <td class="">22</td>

                <td class=" trendBorder-l">6</td>

                <td class="clustNumBallWarm">1</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-104</td>
                <td class="fontColorBlack trendBorder-l" width="80">7,0,0,9,5</td>

                <td class=" trendBorder-l">10</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">25</td>

                <td class="">5</td>

                <td class="">9</td>

                <td class="">2</td>

                <td class="trendBall-1">7</td>

                <td class="">3</td>

                <td class="">8</td>

                <td class="trendBall-2 trendBorder-l">0</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">8</td>

                <td class="">20</td>

                <td class="">4</td>

                <td class="">23</td>

                <td class="">3</td>

                <td class="">17</td>

                <td class="">27</td>

                <td class="trendBall-3 trendBorder-l">0</td>

                <td class="">33</td>

                <td class="">18</td>

                <td class="">15</td>

                <td class="">10</td>

                <td class="">7</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class=" trendBorder-l">10</td>

                <td class="">14</td>

                <td class="">13</td>

                <td class="">2</td>

                <td class="">16</td>

                <td class="">7</td>

                <td class="">6</td>

                <td class="">11</td>

                <td class="">4</td>

                <td class="trendBall-4">9</td>

                <td class=" trendBorder-l">7</td>

                <td class="">1</td>

                <td class="">30</td>

                <td class="">16</td>

                <td class="">6</td>

                <td class="trendBall-5">5</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">9</td>

                <td class="">23</td>

                <td class="clustNumBallWarm trendBorder-l">0</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">5</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-105</td>
                <td class="fontColorBlack trendBorder-l" width="80">6,7,2,4,5</td>

                <td class=" trendBorder-l">11</td>

                <td class="">5</td>

                <td class="">2</td>

                <td class="">26</td>

                <td class="">6</td>

                <td class="">10</td>

                <td class="trendBall-1">6</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="">9</td>

                <td class=" trendBorder-l">1</td>

                <td class="">2</td>

                <td class="">3</td>

                <td class="">9</td>

                <td class="">21</td>

                <td class="">5</td>

                <td class="">24</td>

                <td class="trendBall-2">7</td>

                <td class="">18</td>

                <td class="">28</td>

                <td class=" trendBorder-l">1</td>

                <td class="">34</td>

                <td class="trendBall-3">2</td>

                <td class="">16</td>

                <td class="">11</td>

                <td class="">8</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class=" trendBorder-l">11</td>

                <td class="">15</td>

                <td class="">14</td>

                <td class="">3</td>

                <td class="trendBall-4">4</td>

                <td class="">8</td>

                <td class="">7</td>

                <td class="">12</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class=" trendBorder-l">8</td>

                <td class="">2</td>

                <td class="">31</td>

                <td class="">17</td>

                <td class="">7</td>

                <td class="trendBall-5">5</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class="">10</td>

                <td class="">24</td>

                <td class=" trendBorder-l">1</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">3</td>

                <td class="clustNumBallOverlap">4</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="">2</td>

                <td class="">1</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-106</td>
                <td class="fontColorBlack trendBorder-l" width="80">8,0,5,0,2</td>

                <td class=" trendBorder-l">12</td>

                <td class="">6</td>

                <td class="">3</td>

                <td class="">27</td>

                <td class="">7</td>

                <td class="">11</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="trendBall-1">8</td>

                <td class="">10</td>

                <td class="trendBall-2 trendBorder-l">0</td>

                <td class="">3</td>

                <td class="">4</td>

                <td class="">10</td>

                <td class="">22</td>

                <td class="">6</td>

                <td class="">25</td>

                <td class="">1</td>

                <td class="">19</td>

                <td class="">29</td>

                <td class=" trendBorder-l">2</td>

                <td class="">35</td>

                <td class="">1</td>

                <td class="">17</td>

                <td class="">12</td>

                <td class="trendBall-3">5</td>

                <td class="">4</td>

                <td class="">6</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class="trendBall-4 trendBorder-l">0</td>

                <td class="">16</td>

                <td class="">15</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">9</td>

                <td class="">8</td>

                <td class="">13</td>

                <td class="">6</td>

                <td class="">2</td>

                <td class=" trendBorder-l">9</td>

                <td class="">3</td>

                <td class="trendBall-5">2</td>

                <td class="">18</td>

                <td class="">8</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="">5</td>

                <td class="">11</td>

                <td class="">25</td>

                <td class="clustNumBallWarm trendBorder-l">0</td>

                <td class="">3</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="">2</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-107</td>
                <td class="fontColorBlack trendBorder-l" width="80">8,7,5,4,7</td>

                <td class=" trendBorder-l">13</td>

                <td class="">7</td>

                <td class="">4</td>

                <td class="">28</td>

                <td class="">8</td>

                <td class="">12</td>

                <td class="">2</td>

                <td class="">3</td>

                <td class="trendBall-1">8</td>

                <td class="">11</td>

                <td class=" trendBorder-l">1</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">11</td>

                <td class="">23</td>

                <td class="">7</td>

                <td class="">26</td>

                <td class="trendBall-2">7</td>

                <td class="">20</td>

                <td class="">30</td>

                <td class=" trendBorder-l">3</td>

                <td class="">36</td>

                <td class="">2</td>

                <td class="">18</td>

                <td class="">13</td>

                <td class="trendBall-3">5</td>

                <td class="">5</td>

                <td class="">7</td>

                <td class="">4</td>

                <td class="">6</td>

                <td class=" trendBorder-l">1</td>

                <td class="">17</td>

                <td class="">16</td>

                <td class="">5</td>

                <td class="trendBall-4">4</td>

                <td class="">10</td>

                <td class="">9</td>

                <td class="">14</td>

                <td class="">7</td>

                <td class="">3</td>

                <td class=" trendBorder-l">10</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">19</td>

                <td class="">9</td>

                <td class="">2</td>

                <td class="">8</td>

                <td class="trendBall-5">7</td>

                <td class="">12</td>

                <td class="">26</td>

                <td class=" trendBorder-l">1</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">5</td>

                <td class="clustNumBallOverlap">4</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="">2</td>

                <td class="clustNumBallWarm">7</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="">3</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-108</td>
                <td class="fontColorBlack trendBorder-l" width="80">2,9,1,2,1</td>

                <td class=" trendBorder-l">14</td>

                <td class="">8</td>

                <td class="trendBall-1">2</td>

                <td class="">29</td>

                <td class="">9</td>

                <td class="">13</td>

                <td class="">3</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">12</td>

                <td class=" trendBorder-l">2</td>

                <td class="">5</td>

                <td class="">6</td>

                <td class="">12</td>

                <td class="">24</td>

                <td class="">8</td>

                <td class="">27</td>

                <td class="">1</td>

                <td class="">21</td>

                <td class="trendBall-2">9</td>

                <td class=" trendBorder-l">4</td>

                <td class="trendBall-3">1</td>

                <td class="">3</td>

                <td class="">19</td>

                <td class="">14</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class="">8</td>

                <td class="">5</td>

                <td class="">7</td>

                <td class=" trendBorder-l">2</td>

                <td class="">18</td>

                <td class="trendBall-4">2</td>

                <td class="">6</td>

                <td class="">1</td>

                <td class="">11</td>

                <td class="">10</td>

                <td class="">15</td>

                <td class="">8</td>

                <td class="">4</td>

                <td class=" trendBorder-l">11</td>

                <td class="trendBall-5">1</td>

                <td class="">2</td>

                <td class="">20</td>

                <td class="">10</td>

                <td class="">3</td>

                <td class="">9</td>

                <td class="">1</td>

                <td class="">13</td>

                <td class="">27</td>

                <td class=" trendBorder-l">2</td>

                <td class="clustNumBallWarm">1</td>

                <td class="clustNumBallWarm">2</td>

                <td class="">6</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-109</td>
                <td class="fontColorBlack trendBorder-l" width="80">9,4,7,6,5</td>

                <td class=" trendBorder-l">15</td>

                <td class="">9</td>

                <td class="">1</td>

                <td class="">30</td>

                <td class="">10</td>

                <td class="">14</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">2</td>

                <td class="trendBall-1">9</td>

                <td class=" trendBorder-l">3</td>

                <td class="">6</td>

                <td class="">7</td>

                <td class="">13</td>

                <td class="trendBall-2">4</td>

                <td class="">9</td>

                <td class="">28</td>

                <td class="">2</td>

                <td class="">22</td>

                <td class="">1</td>

                <td class=" trendBorder-l">5</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="">20</td>

                <td class="">15</td>

                <td class="">2</td>

                <td class="">7</td>

                <td class="trendBall-3">7</td>

                <td class="">6</td>

                <td class="">8</td>

                <td class=" trendBorder-l">3</td>

                <td class="">19</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="">2</td>

                <td class="">12</td>

                <td class="trendBall-4">6</td>

                <td class="">16</td>

                <td class="">9</td>

                <td class="">5</td>

                <td class=" trendBorder-l">12</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">21</td>

                <td class="">11</td>

                <td class="trendBall-5">5</td>

                <td class="">10</td>

                <td class="">2</td>

                <td class="">14</td>

                <td class="">28</td>

                <td class=" trendBorder-l">3</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="clustNumBallOverlap">4</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-110</td>
                <td class="fontColorBlack trendBorder-l" width="80">6,7,1,5,4</td>

                <td class=" trendBorder-l">16</td>

                <td class="">10</td>

                <td class="">2</td>

                <td class="">31</td>

                <td class="">11</td>

                <td class="">15</td>

                <td class="trendBall-1">6</td>

                <td class="">6</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class=" trendBorder-l">4</td>

                <td class="">7</td>

                <td class="">8</td>

                <td class="">14</td>

                <td class="">1</td>

                <td class="">10</td>

                <td class="">29</td>

                <td class="trendBall-2">7</td>

                <td class="">23</td>

                <td class="">2</td>

                <td class=" trendBorder-l">6</td>

                <td class="trendBall-3">1</td>

                <td class="">5</td>

                <td class="">21</td>

                <td class="">16</td>

                <td class="">3</td>

                <td class="">8</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="">9</td>

                <td class=" trendBorder-l">4</td>

                <td class="">20</td>

                <td class="">2</td>

                <td class="">8</td>

                <td class="">3</td>

                <td class="trendBall-4">5</td>

                <td class="">1</td>

                <td class="">17</td>

                <td class="">10</td>

                <td class="">6</td>

                <td class=" trendBorder-l">13</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">22</td>

                <td class="trendBall-5">4</td>

                <td class="">1</td>

                <td class="">11</td>

                <td class="">3</td>

                <td class="">15</td>

                <td class="">29</td>

                <td class=" trendBorder-l">4</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="">2</td>

                <td class="">8</td>

                <td class="clustNumBallOverlap">4</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="">3</td>

                <td class="">1</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-111</td>
                <td class="fontColorBlack trendBorder-l" width="80">0,2,7,8,6</td>

                <td class="trendBall-1 trendBorder-l">0</td>

                <td class="">11</td>

                <td class="">3</td>

                <td class="">32</td>

                <td class="">12</td>

                <td class="">16</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class=" trendBorder-l">5</td>

                <td class="">8</td>

                <td class="trendBall-2">2</td>

                <td class="">15</td>

                <td class="">2</td>

                <td class="">11</td>

                <td class="">30</td>

                <td class="">1</td>

                <td class="">24</td>

                <td class="">3</td>

                <td class=" trendBorder-l">7</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class="">22</td>

                <td class="">17</td>

                <td class="">4</td>

                <td class="">9</td>

                <td class="trendBall-3">7</td>

                <td class="">8</td>

                <td class="">10</td>

                <td class=" trendBorder-l">5</td>

                <td class="">21</td>

                <td class="">3</td>

                <td class="">9</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">18</td>

                <td class="trendBall-4">8</td>

                <td class="">7</td>

                <td class=" trendBorder-l">14</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class="">23</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="trendBall-5">6</td>

                <td class="">4</td>

                <td class="">16</td>

                <td class="">30</td>

                <td class="clustNumBallOverlap trendBorder-l">0</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">9</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="">2</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-112</td>
                <td class="fontColorBlack trendBorder-l" width="80">1,2,4,4,1</td>

                <td class=" trendBorder-l">1</td>

                <td class="trendBall-1">1</td>

                <td class="">4</td>

                <td class="">33</td>

                <td class="">13</td>

                <td class="">17</td>

                <td class="">2</td>

                <td class="">8</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class=" trendBorder-l">6</td>

                <td class="">9</td>

                <td class="trendBall-2">2</td>

                <td class="">16</td>

                <td class="">3</td>

                <td class="">12</td>

                <td class="">31</td>

                <td class="">2</td>

                <td class="">25</td>

                <td class="">4</td>

                <td class=" trendBorder-l">8</td>

                <td class="">2</td>

                <td class="">7</td>

                <td class="">23</td>

                <td class="trendBall-3">4</td>

                <td class="">5</td>

                <td class="">10</td>

                <td class="">1</td>

                <td class="">9</td>

                <td class="">11</td>

                <td class=" trendBorder-l">6</td>

                <td class="">22</td>

                <td class="">4</td>

                <td class="">10</td>

                <td class="trendBall-4">4</td>

                <td class="">2</td>

                <td class="">3</td>

                <td class="">19</td>

                <td class="">1</td>

                <td class="">8</td>

                <td class=" trendBorder-l">15</td>

                <td class="trendBall-5">1</td>

                <td class="">6</td>

                <td class="">24</td>

                <td class="">2</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">5</td>

                <td class="">17</td>

                <td class="">31</td>

                <td class=" trendBorder-l">1</td>

                <td class="clustNumBallWarm">1</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">10</td>

                <td class="clustNumBallWarm">4</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">3</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-113</td>
                <td class="fontColorBlack trendBorder-l" width="80">1,8,3,3,7</td>

                <td class=" trendBorder-l">2</td>

                <td class="trendBall-1">1</td>

                <td class="">5</td>

                <td class="">34</td>

                <td class="">14</td>

                <td class="">18</td>

                <td class="">3</td>

                <td class="">9</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class=" trendBorder-l">7</td>

                <td class="">10</td>

                <td class="">1</td>

                <td class="">17</td>

                <td class="">4</td>

                <td class="">13</td>

                <td class="">32</td>

                <td class="">3</td>

                <td class="trendBall-2">8</td>

                <td class="">5</td>

                <td class=" trendBorder-l">9</td>

                <td class="">3</td>

                <td class="">8</td>

                <td class="trendBall-3">3</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class="">11</td>

                <td class="">2</td>

                <td class="">10</td>

                <td class="">12</td>

                <td class=" trendBorder-l">7</td>

                <td class="">23</td>

                <td class="">5</td>

                <td class="trendBall-4">3</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">4</td>

                <td class="">20</td>

                <td class="">2</td>

                <td class="">9</td>

                <td class=" trendBorder-l">16</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="">25</td>

                <td class="">3</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="trendBall-5">7</td>

                <td class="">18</td>

                <td class="">32</td>

                <td class=" trendBorder-l">2</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="">1</td>

                <td class="clustNumBallWarm">3</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="">4</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-114</td>
                <td class="fontColorBlack trendBorder-l" width="80">8,7,7,4,1</td>

                <td class=" trendBorder-l">3</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class="">35</td>

                <td class="">15</td>

                <td class="">19</td>

                <td class="">4</td>

                <td class="">10</td>

                <td class="trendBall-1">8</td>

                <td class="">5</td>

                <td class=" trendBorder-l">8</td>

                <td class="">11</td>

                <td class="">2</td>

                <td class="">18</td>

                <td class="">5</td>

                <td class="">14</td>

                <td class="">33</td>

                <td class="trendBall-2">7</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class=" trendBorder-l">10</td>

                <td class="">4</td>

                <td class="">9</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">7</td>

                <td class="">12</td>

                <td class="trendBall-3">7</td>

                <td class="">11</td>

                <td class="">13</td>

                <td class=" trendBorder-l">8</td>

                <td class="">24</td>

                <td class="">6</td>

                <td class="">1</td>

                <td class="trendBall-4">4</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">21</td>

                <td class="">3</td>

                <td class="">10</td>

                <td class=" trendBorder-l">17</td>

                <td class="trendBall-5">1</td>

                <td class="">8</td>

                <td class="">26</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">19</td>

                <td class="">33</td>

                <td class=" trendBorder-l">3</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">4</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="clustNumBallWarm">7</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="">5</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-115</td>
                <td class="fontColorBlack trendBorder-l" width="80">4,7,4,9,2</td>

                <td class=" trendBorder-l">4</td>

                <td class="">2</td>

                <td class="">7</td>

                <td class="">36</td>

                <td class="trendBall-1">4</td>

                <td class="">20</td>

                <td class="">5</td>

                <td class="">11</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class=" trendBorder-l">9</td>

                <td class="">12</td>

                <td class="">3</td>

                <td class="">19</td>

                <td class="">6</td>

                <td class="">15</td>

                <td class="">34</td>

                <td class="trendBall-2">7</td>

                <td class="">2</td>

                <td class="">7</td>

                <td class=" trendBorder-l">11</td>

                <td class="">5</td>

                <td class="">10</td>

                <td class="">2</td>

                <td class="trendBall-3">4</td>

                <td class="">8</td>

                <td class="">13</td>

                <td class="">1</td>

                <td class="">12</td>

                <td class="">14</td>

                <td class=" trendBorder-l">9</td>

                <td class="">25</td>

                <td class="">7</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">5</td>

                <td class="">6</td>

                <td class="">22</td>

                <td class="">4</td>

                <td class="trendBall-4">9</td>

                <td class=" trendBorder-l">18</td>

                <td class="">1</td>

                <td class="trendBall-5">2</td>

                <td class="">27</td>

                <td class="">5</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">20</td>

                <td class="">34</td>

                <td class=" trendBorder-l">4</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">2</td>

                <td class="clustNumBallWarm">4</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-116</td>
                <td class="fontColorBlack trendBorder-l" width="80">8,5,1,5,2</td>

                <td class=" trendBorder-l">5</td>

                <td class="">3</td>

                <td class="">8</td>

                <td class="">37</td>

                <td class="">1</td>

                <td class="">21</td>

                <td class="">6</td>

                <td class="">12</td>

                <td class="trendBall-1">8</td>

                <td class="">7</td>

                <td class=" trendBorder-l">10</td>

                <td class="">13</td>

                <td class="">4</td>

                <td class="">20</td>

                <td class="">7</td>

                <td class="trendBall-2">5</td>

                <td class="">35</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">8</td>

                <td class=" trendBorder-l">12</td>

                <td class="trendBall-3">1</td>

                <td class="">11</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">9</td>

                <td class="">14</td>

                <td class="">2</td>

                <td class="">13</td>

                <td class="">15</td>

                <td class=" trendBorder-l">10</td>

                <td class="">26</td>

                <td class="">8</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="trendBall-4">5</td>

                <td class="">7</td>

                <td class="">23</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class=" trendBorder-l">19</td>

                <td class="">2</td>

                <td class="trendBall-5">2</td>

                <td class="">28</td>

                <td class="">6</td>

                <td class="">7</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">21</td>

                <td class="">35</td>

                <td class=" trendBorder-l">5</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="clustNumBallWarm">5</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="">1</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-117</td>
                <td class="fontColorBlack trendBorder-l" width="80">4,7,4,8,0</td>

                <td class=" trendBorder-l">6</td>

                <td class="">4</td>

                <td class="">9</td>

                <td class="">38</td>

                <td class="trendBall-1">4</td>

                <td class="">22</td>

                <td class="">7</td>

                <td class="">13</td>

                <td class="">1</td>

                <td class="">8</td>

                <td class=" trendBorder-l">11</td>

                <td class="">14</td>

                <td class="">5</td>

                <td class="">21</td>

                <td class="">8</td>

                <td class="">1</td>

                <td class="">36</td>

                <td class="trendBall-2">7</td>

                <td class="">4</td>

                <td class="">9</td>

                <td class=" trendBorder-l">13</td>

                <td class="">1</td>

                <td class="">12</td>

                <td class="">4</td>

                <td class="trendBall-3">4</td>

                <td class="">10</td>

                <td class="">15</td>

                <td class="">3</td>

                <td class="">14</td>

                <td class="">16</td>

                <td class=" trendBorder-l">11</td>

                <td class="">27</td>

                <td class="">9</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">8</td>

                <td class="">24</td>

                <td class="trendBall-4">8</td>

                <td class="">2</td>

                <td class="trendBall-5 trendBorder-l">0</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">29</td>

                <td class="">7</td>

                <td class="">8</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class="">22</td>

                <td class="">36</td>

                <td class="clustNumBallOverlap trendBorder-l">0</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="clustNumBallWarm">4</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="">2</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-118</td>
                <td class="fontColorBlack trendBorder-l" width="80">6,3,7,6,6</td>

                <td class=" trendBorder-l">7</td>

                <td class="">5</td>

                <td class="">10</td>

                <td class="">39</td>

                <td class="">1</td>

                <td class="">23</td>

                <td class="trendBall-1">6</td>

                <td class="">14</td>

                <td class="">2</td>

                <td class="">9</td>

                <td class=" trendBorder-l">12</td>

                <td class="">15</td>

                <td class="">6</td>

                <td class="trendBall-2">3</td>

                <td class="">9</td>

                <td class="">2</td>

                <td class="">37</td>

                <td class="">1</td>

                <td class="">5</td>

                <td class="">10</td>

                <td class=" trendBorder-l">14</td>

                <td class="">2</td>

                <td class="">13</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="">11</td>

                <td class="">16</td>

                <td class="trendBall-3">7</td>

                <td class="">15</td>

                <td class="">17</td>

                <td class=" trendBorder-l">12</td>

                <td class="">28</td>

                <td class="">10</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="trendBall-4">6</td>

                <td class="">25</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class=" trendBorder-l">1</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">30</td>

                <td class="">8</td>

                <td class="">9</td>

                <td class="trendBall-5">6</td>

                <td class="">5</td>

                <td class="">23</td>

                <td class="">37</td>

                <td class=" trendBorder-l">1</td>

                <td class="">2</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">3</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="clustNumBallWarm">6</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="">1</td>

                <td class="">3</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-119</td>
                <td class="fontColorBlack trendBorder-l" width="80">7,4,5,7,8</td>

                <td class=" trendBorder-l">8</td>

                <td class="">6</td>

                <td class="">11</td>

                <td class="">40</td>

                <td class="">2</td>

                <td class="">24</td>

                <td class="">1</td>

                <td class="trendBall-1">7</td>

                <td class="">3</td>

                <td class="">10</td>

                <td class=" trendBorder-l">13</td>

                <td class="">16</td>

                <td class="">7</td>

                <td class="">1</td>

                <td class="trendBall-2">4</td>

                <td class="">3</td>

                <td class="">38</td>

                <td class="">2</td>

                <td class="">6</td>

                <td class="">11</td>

                <td class=" trendBorder-l">15</td>

                <td class="">3</td>

                <td class="">14</td>

                <td class="">6</td>

                <td class="">2</td>

                <td class="trendBall-3">5</td>

                <td class="">17</td>

                <td class="">1</td>

                <td class="">16</td>

                <td class="">18</td>

                <td class=" trendBorder-l">13</td>

                <td class="">29</td>

                <td class="">11</td>

                <td class="">6</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="trendBall-4">7</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class=" trendBorder-l">2</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">31</td>

                <td class="">9</td>

                <td class="">10</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class="trendBall-5">8</td>

                <td class="">38</td>

                <td class=" trendBorder-l">2</td>

                <td class="">3</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">4</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="">1</td>

                <td class="clustNumBallWarm">7</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="">4</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180427-120</td>
                <td class="fontColorBlack trendBorder-l" width="80">1,6,4,2,4</td>

                <td class=" trendBorder-l">9</td>

                <td class="trendBall-1">1</td>

                <td class="">12</td>

                <td class="">41</td>

                <td class="">3</td>

                <td class="">25</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="">11</td>

                <td class=" trendBorder-l">14</td>

                <td class="">17</td>

                <td class="">8</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="trendBall-2">6</td>

                <td class="">3</td>

                <td class="">7</td>

                <td class="">12</td>

                <td class=" trendBorder-l">16</td>

                <td class="">4</td>

                <td class="">15</td>

                <td class="">7</td>

                <td class="trendBall-3">4</td>

                <td class="">1</td>

                <td class="">18</td>

                <td class="">2</td>

                <td class="">17</td>

                <td class="">19</td>

                <td class=" trendBorder-l">14</td>

                <td class="">30</td>

                <td class="trendBall-4">2</td>

                <td class="">7</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class=" trendBorder-l">3</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class="">32</td>

                <td class="trendBall-5">4</td>

                <td class="">11</td>

                <td class="">2</td>

                <td class="">7</td>

                <td class="">1</td>

                <td class="">39</td>

                <td class=" trendBorder-l">3</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">2</td>

                <td class="clustNumBallWarm">4</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">5</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180428-001</td>
                <td class="fontColorBlack trendBorder-l" width="80">0,7,5,6,5</td>

                <td class="trendBall-1 trendBorder-l">0</td>

                <td class="">1</td>

                <td class="">13</td>

                <td class="">42</td>

                <td class="">4</td>

                <td class="">26</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="">5</td>

                <td class="">12</td>

                <td class=" trendBorder-l">15</td>

                <td class="">18</td>

                <td class="">9</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="trendBall-2">7</td>

                <td class="">8</td>

                <td class="">13</td>

                <td class=" trendBorder-l">17</td>

                <td class="">5</td>

                <td class="">16</td>

                <td class="">8</td>

                <td class="">1</td>

                <td class="trendBall-3">5</td>

                <td class="">19</td>

                <td class="">3</td>

                <td class="">18</td>

                <td class="">20</td>

                <td class=" trendBorder-l">15</td>

                <td class="">31</td>

                <td class="">1</td>

                <td class="">8</td>

                <td class="">7</td>

                <td class="">5</td>

                <td class="trendBall-4">6</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">6</td>

                <td class=" trendBorder-l">4</td>

                <td class="">7</td>

                <td class="">5</td>

                <td class="">33</td>

                <td class="">1</td>

                <td class="trendBall-5">5</td>

                <td class="">3</td>

                <td class="">8</td>

                <td class="">2</td>

                <td class="">40</td>

                <td class="clustNumBallOverlap trendBorder-l">0</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="clustNumBallWarm">5</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="">2</td>

                <td class="">6</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180428-002</td>
                <td class="fontColorBlack trendBorder-l" width="80">0,4,6,1,4</td>

                <td class="trendBall-1 trendBorder-l">0</td>

                <td class="">2</td>

                <td class="">14</td>

                <td class="">43</td>

                <td class="">5</td>

                <td class="">27</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">6</td>

                <td class="">13</td>

                <td class=" trendBorder-l">16</td>

                <td class="">19</td>

                <td class="">10</td>

                <td class="">4</td>

                <td class="trendBall-2">4</td>

                <td class="">6</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">9</td>

                <td class="">14</td>

                <td class=" trendBorder-l">18</td>

                <td class="">6</td>

                <td class="">17</td>

                <td class="">9</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="trendBall-3">6</td>

                <td class="">4</td>

                <td class="">19</td>

                <td class="">21</td>

                <td class=" trendBorder-l">16</td>

                <td class="trendBall-4">1</td>

                <td class="">2</td>

                <td class="">9</td>

                <td class="">8</td>

                <td class="">6</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class="">7</td>

                <td class=" trendBorder-l">5</td>

                <td class="">8</td>

                <td class="">6</td>

                <td class="">34</td>

                <td class="trendBall-5">4</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="">9</td>

                <td class="">3</td>

                <td class="">41</td>

                <td class="clustNumBallOverlap trendBorder-l">0</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="clustNumBallWarm">4</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">7</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180428-003</td>
                <td class="fontColorBlack trendBorder-l" width="80">0,1,1,3,9</td>

                <td class="trendBall-1 trendBorder-l">0</td>

                <td class="">3</td>

                <td class="">15</td>

                <td class="">44</td>

                <td class="">6</td>

                <td class="">28</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">7</td>

                <td class="">14</td>

                <td class=" trendBorder-l">17</td>

                <td class="trendBall-2">1</td>

                <td class="">11</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="">10</td>

                <td class="">15</td>

                <td class=" trendBorder-l">19</td>

                <td class="trendBall-3">1</td>

                <td class="">18</td>

                <td class="">10</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">5</td>

                <td class="">20</td>

                <td class="">22</td>

                <td class=" trendBorder-l">17</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="trendBall-4">3</td>

                <td class="">9</td>

                <td class="">7</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">6</td>

                <td class="">8</td>

                <td class=" trendBorder-l">6</td>

                <td class="">9</td>

                <td class="">7</td>

                <td class="">35</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">5</td>

                <td class="">10</td>

                <td class="">4</td>

                <td class="trendBall-5">9</td>

                <td class="clustNumBallOverlap trendBorder-l">0</td>

                <td class="clustNumBallWarm">1</td>

                <td class="">3</td>

                <td class="clustNumBallOverlap">3</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180428-004</td>
                <td class="fontColorBlack trendBorder-l" width="80">2,5,6,9,7</td>

                <td class=" trendBorder-l">1</td>

                <td class="">4</td>

                <td class="trendBall-1">2</td>

                <td class="">45</td>

                <td class="">7</td>

                <td class="">29</td>

                <td class="">6</td>

                <td class="">5</td>

                <td class="">8</td>

                <td class="">15</td>

                <td class=" trendBorder-l">18</td>

                <td class="">1</td>

                <td class="">12</td>

                <td class="">6</td>

                <td class="">2</td>

                <td class="trendBall-2">5</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">11</td>

                <td class="">16</td>

                <td class=" trendBorder-l">20</td>

                <td class="">1</td>

                <td class="">19</td>

                <td class="">11</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="trendBall-3">6</td>

                <td class="">6</td>

                <td class="">21</td>

                <td class="">23</td>

                <td class=" trendBorder-l">18</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">10</td>

                <td class="">8</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class="">7</td>

                <td class="trendBall-4">9</td>

                <td class=" trendBorder-l">7</td>

                <td class="">10</td>

                <td class="">8</td>

                <td class="">36</td>

                <td class="">2</td>

                <td class="">3</td>

                <td class="">6</td>

                <td class="trendBall-5">7</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class=" trendBorder-l">1</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap">5</td>

                <td class="clustNumBallOverlap">6</td>

                <td class="clustNumBallOverlap">7</td>

                <td class="">5</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            <tr>
                <td class="fontColorBlack" width="110">20180428-005</td>
                <td class="fontColorBlack trendBorder-l" width="80">9,0,8,1,2</td>

                <td class=" trendBorder-l">2</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="">46</td>

                <td class="">8</td>

                <td class="">30</td>

                <td class="">7</td>

                <td class="">6</td>

                <td class="">9</td>

                <td class="trendBall-1">9</td>

                <td class="trendBall-2 trendBorder-l">0</td>

                <td class="">2</td>

                <td class="">13</td>

                <td class="">7</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">12</td>

                <td class="">17</td>

                <td class=" trendBorder-l">21</td>

                <td class="">2</td>

                <td class="">20</td>

                <td class="">12</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">7</td>

                <td class="trendBall-3">8</td>

                <td class="">24</td>

                <td class=" trendBorder-l">19</td>

                <td class="trendBall-4">1</td>

                <td class="">5</td>

                <td class="">2</td>

                <td class="">11</td>

                <td class="">9</td>

                <td class="">4</td>

                <td class="">6</td>

                <td class="">8</td>

                <td class="">1</td>

                <td class=" trendBorder-l">8</td>

                <td class="">11</td>

                <td class="trendBall-5">2</td>

                <td class="">37</td>

                <td class="">3</td>

                <td class="">4</td>

                <td class="">7</td>

                <td class="">1</td>

                <td class="">6</td>

                <td class="">2</td>

                <td class="clustNumBallOverlap trendBorder-l">0</td>

                <td class="clustNumBallOverlap">1</td>

                <td class="clustNumBallOverlap">2</td>

                <td class="">2</td>

                <td class="">3</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="clustNumBallOverlap">8</td>

                <td class="clustNumBallOverlap">9</td>

            </tr>

            </tbody>
            <tfoot>

            <tr class="trendNumTotal">
                <td class="smallFont14">出现总次数</td>
                <td class="trendBorder-l"></td>

                <td class="trendBorder-l">4</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">0</td>

                <td class="">3</td>

                <td class="">0</td>

                <td class="">5</td>

                <td class="">2</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="trendBorder-l">3</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">2</td>

                <td class="">3</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">9</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="trendBorder-l">2</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">2</td>

                <td class="">2</td>

                <td class="trendBorder-l">1</td>

                <td class="">2</td>

                <td class="">2</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">4</td>

                <td class="">4</td>

                <td class="">1</td>

                <td class="">3</td>

                <td class="">4</td>

                <td class="trendBorder-l">2</td>

                <td class="">5</td>

                <td class="">4</td>

                <td class="">0</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">3</td>

                <td class="">5</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="trendBorder-l">10</td>

                <td class="">14</td>

                <td class="">13</td>

                <td class="">7</td>

                <td class="">13</td>

                <td class="">14</td>

                <td class="">13</td>

                <td class="">17</td>

                <td class="">12</td>

                <td class="">11</td>

            </tr>

            <tr class="trendNumTotal">
                <td class="smallFont14">最大遗漏值</td>
                <td class="trendBorder-l"></td>

                <td class="trendBorder-l">16</td>

                <td class="">11</td>

                <td class="">15</td>

                <td class="">46</td>

                <td class="">15</td>

                <td class="">30</td>

                <td class="">8</td>

                <td class="">29</td>

                <td class="">22</td>

                <td class="">15</td>

                <td class="trendBorder-l">18</td>

                <td class="">19</td>

                <td class="">31</td>

                <td class="">21</td>

                <td class="">24</td>

                <td class="">15</td>

                <td class="">38</td>

                <td class="">8</td>

                <td class="">25</td>

                <td class="">30</td>

                <td class="trendBorder-l">21</td>

                <td class="">36</td>

                <td class="">20</td>

                <td class="">23</td>

                <td class="">17</td>

                <td class="">15</td>

                <td class="">19</td>

                <td class="">19</td>

                <td class="">21</td>

                <td class="">24</td>

                <td class="trendBorder-l">19</td>

                <td class="">31</td>

                <td class="">16</td>

                <td class="">37</td>

                <td class="">16</td>

                <td class="">12</td>

                <td class="">14</td>

                <td class="">25</td>

                <td class="">10</td>

                <td class="">16</td>

                <td class="trendBorder-l">19</td>

                <td class="">11</td>

                <td class="">31</td>

                <td class="">37</td>

                <td class="">11</td>

                <td class="">12</td>

                <td class="">11</td>

                <td class="">10</td>

                <td class="">23</td>

                <td class="">41</td>

                <td class="trendBorder-l">6</td>

                <td class="">4</td>

                <td class="">6</td>

                <td class="">10</td>

                <td class="">5</td>

                <td class="">5</td>

                <td class="">6</td>

                <td class="">4</td>

                <td class="">5</td>

                <td class="">7</td>

            </tr>

            <tr class="trendNumTotal">
                <td class="smallFont14">最大连出值</td>
                <td class="trendBorder-l"></td>

                <td class="trendBorder-l">3</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">0</td>

                <td class="">1</td>

                <td class="">0</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="trendBorder-l">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="trendBorder-l">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="trendBorder-l">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="trendBorder-l">1</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">0</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">2</td>

                <td class="">1</td>

                <td class="">1</td>

                <td class="trendBorder-l">3</td>

                <td class="">3</td>

                <td class="">2</td>

                <td class="">2</td>

                <td class="">2</td>

                <td class="">4</td>

                <td class="">3</td>

                <td class="">3</td>

                <td class="">2</td>

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

<script type="text/javascript" src="/res/home/js/jquery-1.11.0.min.js?ver=20180410"></script>
<script src="/res/home/js/trend/dh-trend.js"></script>
<script src="/res/home/js/My97DatePicker/WdatePicker.js"></script>
</body>
</html>

