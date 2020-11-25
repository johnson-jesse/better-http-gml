#macro USER_SEED "/?seed="

function User_Struct(_code, _uuid, _email, _first, _last) constructor { 
    code = _code;
    uuid = _uuid;
	email = _email;
	first = _first;
	last = _last;
	toString = function() {
        return code == 200 ?
			"<"+ email + "> " + last + ", " + first :
			"Error: [" + code + "] uuid: " + uuid;
    }
}

function User_Get(_payload) {
	with(aUser) {
		payload = _payload;
		event_perform(ev_other, ev_user0);
	}
}

function User_Set(_user) {
	with(eUser) {
		delete user;
		user = _user;
		loading = false;
	}
}

function User_Map(_data) {
	var map = json_parse(_data).results[0]; // This is a good place for try catch if you don't trust the api
	
	return new User_Struct(
		200,
		map.login.uuid,
		map.email,
		map.name.first,
		map.name.last
	);
}

function User_Map_Error(_code, _uuid) {
	return { code: _code, uuid: _uuid };
}