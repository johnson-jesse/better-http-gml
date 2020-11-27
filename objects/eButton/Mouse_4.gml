loading = true;
delete user;
user = "";

User_Get(function(_code, _payload) {
	user = User_Map_Single(_code, _payload);
	loading = false;
});