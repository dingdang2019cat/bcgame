package com.hehaoyisheng.bcgame.entity.vo;

public class Result {
    private Object content;
    private int status;
    private String url;

    public Object getContent() {
        return content;
    }

    public void setContent(Object content) {
        this.content = content;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public static Result success(Object content){
        Result result = new Result();
        result.setContent(content);
        result.setStatus(200);
        return result;
    }
}
