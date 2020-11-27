if (ds_map_find_value(async_load, "id") == requestId) {
    if (ds_map_find_value(async_load, "status") == 0) {
        var _payload = ds_map_find_value(async_load, "result");
		show_debug_message("\n" + _payload + "\n");
        var _data = json_parse(_payload);
        
        with (eButton) {
            loading = false;
            user = _data.results[0];
        }
    }
}
