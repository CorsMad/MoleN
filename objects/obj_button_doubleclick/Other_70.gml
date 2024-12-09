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
				button_on_off(0);
				var _ad = instance_create_depth(0,0,-15500,obj_fsad_screen);
				_ad.t = 241;
            break;
            case YaGames_CallRewardReceived:
                // The video ads has been successfully completed. The reward has been received.
				//turn_off(1);				
				activated = 1;
				obj_score.t_sec = obj_score.t_sec_max;
				
				// звук
				audio_play_sound(snd_button_mission_success,10,false);
				instance_create_depth(x,y,depth-1,obj_button_effect_complete);
				obj_FSAD.t = 4500;
            break;
            case YaGames_CallRewardClosed:
            break;
            case YaGames_CallRewardError:
				// Error displaying video ads
				button_on_off(1);
                var errCode = async_load[? "code"];
                var errName = async_load[? "name"];
                var errMessage = async_load[? "message"];			
                
            break;
			
            case YaGames_CallNotInitSDK:
				// SDK not initialized
				turn_off(1);
				activated = 1;
				obj_score.t_sec = obj_score.t_sec_max;
				
				// звук
				audio_play_sound(snd_button_mission_success,10,false);
				instance_create_depth(x,y,depth-1,obj_button_effect_complete);
                
            break;
            case YaGames_CallRuntimeError:
				// SDK runtime error
				button_on_off(1);
                var errCode = async_load[? "code"];
                var errName = async_load[? "name"];
                var errMessage = async_load[? "message"];	
                
            break;
        }
   }
}

