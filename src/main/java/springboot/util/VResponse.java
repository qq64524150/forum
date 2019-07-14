package springboot.util;

/**
 * @author HuangZhen
 * @mail Can you guess what
 * @phone You guess again
 * @date 2019/7/14 12:16
 *
 * 通用错误
 */
public class VResponse<T> {
    //通用错误码
    public static final int SUCCESS = 1;
    private int code = 1;
    private String msg = "";
    private T result;

    public VResponse(int errCode, String errMsg) {
        this.code = errCode;
        this.msg = errMsg;
    }

    public VResponse() {

    }

    public static <T> VResponse<T> success(T result){
        VResponse<T> response = new VResponse<T>(SUCCESS, null);
        response.result = result;
        return response;
    }

    public static <T> VResponse<T> success(String msg){
        return new VResponse<T>(SUCCESS, msg);
    }

    public static <T> VResponse<T> success(){
        return new VResponse<T>(SUCCESS, null);
    }

    public static <T> VResponse<T> error(int code,String msg){
        VResponse<T> response = new VResponse<T>();
        response.setCode(code);
        response.setMsg(msg);
        return response;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getResult() {
        return result;
    }

    public void setResult(T result) {
        this.result = result;
    }
}
