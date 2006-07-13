		for (i = -20; i < len; i++) {
			for (j = 0; j < 20; j++) {
				if (((i+j) >= len) || ((i+j) < 0)) writelcdata(' ');
				else writelcdata(text[i + j]);
			}
			
			writelcdcmd(0x02);	/* cursor return home */
			wait();
		}
// ===================================================================

unsigned char roundchar(unsigned char byte)
{
	unsigned char h = 0, b = 0;
	unsigned char m = 0;
	b = byte;
	m = m | (b & 0x1);
	for(; h < 7; ++h)
	{
		b >>= 1;
		m <<= 1;
		m = m | (b & 0x1);
	}
	return m;
}

// Stare fragmenty kodu z przed 2005 roku

void resetlcd() {
	register unsigned char j, i = 0;
	LCD_CMDS = 0x3F;
	for (j = 0; j < 250; j++) { i = i * 10; };
	LCD_CMDS = 0x3F;
	i = 0;
	for (j = 0; j < 250; j++) { i = i * 10; };
	LCD_CMDS = 0x3F;
	i = 0;
	for (j = 0; j < 250; j++) { i = i * 10; };
}

void writelcdcmd(unsigned char byte) {
		register unsigned char j;
		P4 |= 0x02;
		LCD_CMDS = byte;	/ * send cmd * /
		for (j = 0; j < 250; j++) {};
		while ((LCD_CMDS & 0x80) != 0) { P4 &= ~0x02; };	
}

void writelcdata(unsigned char byte) {
		register unsigned char j;
		P4 |= 0x02;
		LCD_DATA = byte;	/ * send cmd * /
		for (j = 0; j < 250; j++) {};
		while ((LCD_CMDS & 0x80) != 0) { P4 &= ~0x02; };	
}

/* OLD idea of catching keys */
menu_keys_t xxmenu_check_keys()
{
	menu_keys_t detected_key = NONE;
	static unsigned char pressed_key = 0x0;

	if (kbd_keys_state & 0x01)
	{
		pressed_key = kbd_keys_state;
	}
	else
	{
		if(pressed_key & 0x01) {
			pressed_key = 0;
		}
	}
	if (kbd_keys_state & 0x02)
	{
		pressed_key = kbd_keys_state;
	}
	else
	{
		if(pressed_key & 0x02) {
			pressed_key = 0;
		}
	}
	if (kbd_keys_state & 0x04)
	{
		pressed_key = kbd_keys_state;
	}
	else
	{
		if(pressed_key & 0x04) {
			detected_key = UP;
			pressed_key = 0;
		}
	}
	if (kbd_keys_state & 0x08)
	{
		//lcd_putstring(6, 2, "4");
		pressed_key = kbd_keys_state;
	}
	else
	{
		if(pressed_key & 0x08) {
			detected_key = DOWN;
			pressed_key = 0;
		}
		//lcd_putstring(6, 2, "-");
	}
	if (kbd_keys_state & 0x10)
	{
		//lcd_putstring(7, 2, "5");
		pressed_key = kbd_keys_state;
	}
	else
	{
		
		if(pressed_key & 0x10) {
			detected_key = ENTER;
			pressed_key = 0;
		}
		//lcd_putstring(7, 2, "-");
	}
	return detected_key;
}
