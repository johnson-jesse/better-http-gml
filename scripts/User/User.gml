function User_Get (_callback) {
	with (aUser) {
		callback = _callback;
		event_perform(ev_other, ev_user0);
	}
}

function User_Map_Single (_code, _payload) {
	switch(_code) {
		case 200:
			var _data = json_parse(_payload);
			return _data.results[0];
		break;
		default:
		
		show_debug_message("\n" + string(_code) + "\n" + _payload + "\n");
	}
}