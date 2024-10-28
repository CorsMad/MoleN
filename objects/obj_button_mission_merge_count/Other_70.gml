/// @description Parse YaGames events
if (not isMap(async_load)) {
    //log("async_load got lost in cyberspace");
} else {
    if ((async_load[? "type"]== YaGames_AsyncEvent) and (async_load[? "request_id"] == req_id)) {
		// Logging
        var _msg = json_encode(async_load);
        //log(_msg);
		//
        switch (async_load[? "event"]) {	
			
            case YaGames_CallRewardOpened:
				turn_off(0);
            break;
            case YaGames_CallRewardReceived:
                // The video ads has been successfully completed. The reward has been received.
				turn_off(1);
				ad_counter = 1;
				get_reward_merge();
				
            break;
            case YaGames_CallRewardClosed:
				turn_off(1);
                // The video ads is closed
				
            break;
            case YaGames_CallRewardError:
				// Error displaying video ads
				turn_off(1);
                var errCode = async_load[? "code"];
                var errName = async_load[? "name"];
                var errMessage = async_load[? "message"];			
                
            break;
			
            case YaGames_CallNotInitSDK:
				// SDK not initialized
				turn_off(1);
				ad_counter = 1;
				get_reward_merge();
                
            break;
            case YaGames_CallRuntimeError:
				// SDK runtime error
				turn_off(1);
				ad_counter = 1;
				get_reward_merge();
                var errCode = async_load[? "code"];
                var errName = async_load[? "name"];
                var errMessage = async_load[? "message"];	
                
            break;
        }
   }
}

