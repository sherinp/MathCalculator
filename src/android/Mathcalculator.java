package cordova.plugin.mathcalculator;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class Mathcalculator extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
       if(action.equals("add"))
       {
           this.add(arg,callbackContext);
           return true;
       }else if(action.equals("substract")) 
       {
           this.substract(arg,callbackContext);
           return true;
       }
        return false;
    }

    
    private void add(JSONArray arg0,callbackContext callback)
    {
        if(arg != null)
        {
            try
        {
            int p1 = Integer.parsInt(args.getJSONObject(0).getString("param1"));
            int p2 = Integer.parsInt(args.getJSONObject(0).getString("param2"));
            callback.success(""+(p1+p2));
        }catch(exception ex)
        {
            callback.error("something went wrong"+ex);
        }
        }else{
            callback.error("pls do not pass null value");
        }

    }
    private void substract(JSONArray arg0,callbackContext callback)
    {
        if(arg != null)
        {
            try
        {
            int p1 = Integer.parsInt(args.getJSONObject(0).getString("param1"));
            int p2 = Integer.parsInt(args.getJSONObject(0).getString("param2"));
            callback.success(""+(p1-p2));
        }catch(exception ex)
        {
            callback.error("something went wrong"+ex);
        }
        }else{
            callback.error("pls do not pass null value");
        }

    }
}
