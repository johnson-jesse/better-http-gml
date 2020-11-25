draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_font(fnt_skia);

var msg = user == undefined ?
	message :
	string(user) +
	"\n\n------------------------------------------------------\n" +
	user.uuid;

draw_text(room_width / 2, y + 50, msg);