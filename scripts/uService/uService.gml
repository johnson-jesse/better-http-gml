function User_Get (_callback) {
	with (uAgent) {
		callback = _callback;
		event_perform(ev_other, ev_user0);
	}
}

#region Data Mapping

function User_Map_Single (_code, _payload) {
	switch(_code) {
		case 200:
			var _data = json_parse(_payload);
			var _map = _data.results[0];
			
			return new User_Model(
				_code,
				_map.login.uuid,
				_map.email,
				_map.name.first,
				_map.name.last
			);
		break;
		case 404:
			return new User_Error(_code, "Not Found");
		break;
		default:
			show_debug_message("\n" + string(_code) + "\n" + _payload + "\n");
			return new User_Error(_code, "Unsupported Scenario");
		break;
	}
}

#endregion

#region Data Modeling
function User_(_code) constructor {
	code = _code;
	out = string(_code);
	toString = function() {
		return out;	
	}
}

function User_Model(_code, _uuid, _email, _first, _last) : User_(_code) constructor {
	uuid = _uuid;
	email = _email;
	first = _first;
	last = _last;
	out = "<" + email + "> " + last + ", " + first;
}

function User_Error(_code, _issue) : User_(_code) constructor {
	out = "Oops! " + out + " - " + _issue;
}
#endregion