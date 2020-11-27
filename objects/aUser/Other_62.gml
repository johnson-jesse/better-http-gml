if (ds_map_find_value(async_load, "id") == requestId) {
    if (ds_map_find_value(async_load, "status") == 0) {

		if (callback != undefined) {
			var _payload = ds_map_find_value(async_load, "result");
			var _code = ds_map_find_value(async_load, "http_status");
			callback(User_Map_Single(_code, _payload));
		}
		
		callback = undefined;
    }
}
