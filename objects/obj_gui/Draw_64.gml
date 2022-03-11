draw_set_font(GameFont);

draw_text_color(10, 10, "Winchester's Inventory:", c_green, c_green, c_green, c_green, 1);
draw_text_color(10, 26, "Books Collected: " + string(obj_pc2.numberOfBooks), c_green, c_green, c_green, c_green, 1);

draw_text_color(10, 42, "Bertrand's Inventory:", c_red, c_red, c_red, c_red, 1);
draw_text_color(10, 58, "Coins Collected: " + string(obj_pc1.numberOfCoins), c_red, c_red, c_red, c_red, 1);

draw_text_color(10, 74, "Mortimer's Inventory:", c_purple, c_purple, c_purple, c_purple, 1);
draw_text_color(10, 90, "Treasure Collected: " + string(obj_pc3.numberOfTreasure), c_purple, c_purple, c_purple, c_purple, 1);

draw_text_color(10, 106, "Grab 10 books", c_green, c_green, c_green, c_green, 1);
draw_text_color(10, 122, "Grab 5 coins", c_red, c_red, c_red, c_red, 1);
draw_text_color(10, 138, "Grab 7 treasure chests", c_purple, c_purple, c_purple, c_purple, 1);