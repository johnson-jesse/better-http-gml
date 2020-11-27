draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_font(fnt_default);
var msg = user == undefined ? message : user.name.last + ", " + user.name.first;
draw_text(room_width / 2, y + 50, msg);
