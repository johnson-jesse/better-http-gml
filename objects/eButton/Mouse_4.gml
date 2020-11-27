loading = true;
delete user;
user = "";

User_Get(function(_data) {
	user = _data;
	loading = false;
});