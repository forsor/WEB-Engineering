package Action;
import java.util.*;
import com.opensymphony.xwork2.*;
import com.opensymphony.xwork2.interceptor.*;

public class MyInterceptor extends AbstractInterceptor {
	@Override
    public String intercept(ActionInvocation invocation) throws Exception{
    	Map session = ActionContext.getContext().getSession();		//�õ�session
    	System.out.println("=============������=============" + new Date());
    	String result = "LOGIN";							//���ؽ���ַ���	    	
    	if(session.get("uid") != null){
    		return invocation.invoke();
    	}
		return result;
	}
}