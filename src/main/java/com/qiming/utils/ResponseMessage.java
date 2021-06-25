package com.qiming.utils;
import com.qiming.domain.PageBean;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResponseMessage {
    private boolean flag;
    private String message;
    private Object data;
    private PageBean pb;
    public ResponseMessage(boolean flag, String message) {
        this.flag = flag;
        this.message = message;
    }

    public ResponseMessage(boolean flag, String message, Object data) {
        this.flag = flag;
        this.message = message;
        this.data = data;
    }

}

