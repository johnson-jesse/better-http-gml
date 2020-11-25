if (ds_map_find_value(async_load, "id") == requestId) {
	if (ds_map_find_value(async_load, "status") == 0) {
		
		if (payload.callback > 0) {
			var code = ds_map_find_value(async_load, "http_status");
			
			payload.callback(
				code == 200 ?
					User_Map(ds_map_find_value(async_load, "result")) :
					User_Map_Error(code, payload.uuid)
			);
		}
		
		payload = {};
	}
}