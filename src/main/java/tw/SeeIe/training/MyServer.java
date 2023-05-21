package tw.SeeIe.training;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;


@ServerEndpoint("/myserver")
public class MyServer {
	private static HashSet<Session> sessions;
	private static HashMap<String, Session> users;
	public long i;
	
	public MyServer() {
		System.out.println("MyServer()");
		if (sessions == null) {
			sessions = new HashSet<>();
		}
	}
	@OnOpen
	public void onOpen(Session session) {
//		if(sessions.add(session)) {
//			users.put(session.getId(), session);
//		}
		
		i = System.currentTimeMillis();
		System.out.println("onOpen(): " + session.getId());
		session.setMaxIdleTimeout(20*1000);
		sessions.add(session);
		System.out.println("Count: "+sessions.size());
		
	}
	@OnMessage
	public void onMessage(String mesg, Session session) {
		System.out.println(mesg);
		for(Session user: sessions) {
			try {
				user.getBasicRemote().sendText(mesg);
			} catch (IOException e) {
				System.out.println(e);
			}
		}
		
//		try {
//			users.get("1").getBasicRemote().sendText(mesg);
//		}catch (Exception e) {
//		}
		
		
	}
	

	
	@OnClose
	public void onClose(Session session) {
		System.out.println("onClose()"+ (System.currentTimeMillis()-i));
		sessions.remove(session);
	}
	@OnError
	public void onError(Session session, Throwable e) {
		System.out.println("onError():"+ e);
		sessions.remove(session);
	}
}
