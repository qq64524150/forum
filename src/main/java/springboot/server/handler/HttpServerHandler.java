package springboot.server.handler;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.HttpRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import springboot.dao.UserVoMapper;
import springboot.modal.vo.UserVo;
import springboot.server.codec.HttpJsonRequest;
import springboot.server.codec.HttpJsonResponse;

import javax.annotation.Resource;

/**

 */
public class HttpServerHandler extends SimpleChannelInboundHandler<HttpJsonRequest>{

    @Resource
    private UserVoMapper userDao;

    private static final  Logger logger = LoggerFactory.getLogger(HttpServerHandler.class);
    @Override
    protected void channelRead0(ChannelHandlerContext ctx, HttpJsonRequest msg) throws Exception {
        HttpRequest request = msg.getRequest();
        UserVo user = (UserVo)msg.getBody();
        userDao.insert(user);
        logger.info("服务端收到消息"+user);
        ctx.writeAndFlush(new HttpJsonResponse(null,user));
    }


}
