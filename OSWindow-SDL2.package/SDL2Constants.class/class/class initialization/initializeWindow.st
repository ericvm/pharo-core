initializeWindow
	"
	Window related constants.
	"
    SDL_WINDOW_FULLSCREEN := 16r00000001.
    SDL_WINDOW_OPENGL := 16r00000002.
    SDL_WINDOW_SHOWN := 16r00000004.
    SDL_WINDOW_HIDDEN := 16r00000008.
    SDL_WINDOW_BORDERLESS := 16r00000010.
    SDL_WINDOW_RESIZABLE := 16r00000020.
    SDL_WINDOW_MINIMIZED := 16r00000040.
    SDL_WINDOW_MAXIMIZED := 16r00000080.
    SDL_WINDOW_INPUT_GRABBED := 16r00000100.
    SDL_WINDOW_INPUT_FOCUS := 16r00000200.
    SDL_WINDOW_MOUSE_FOCUS := 16r00000400.
    SDL_WINDOW_FULLSCREEN_DESKTOP := ( SDL_WINDOW_FULLSCREEN | 16r00001000 ).
    SDL_WINDOW_FOREIGN := 16r00000800.
    SDL_WINDOW_ALLOW_HIGHDPI := 16r00002000.

    SDL_WINDOWPOS_UNDEFINED_MASK := 16r1FFF0000.
    SDL_WINDOWPOS_UNDEFINED := SDL_WINDOWPOS_UNDEFINED_MASK.
	
    SDL_WINDOWPOS_CENTERED_MASK := 16r2FFF0000.
    SDL_WINDOWPOS_CENTERED := SDL_WINDOWPOS_CENTERED_MASK.

    SDL_WINDOWEVENT_NONE			:= 0.
    SDL_WINDOWEVENT_SHOWN		:= 1.
    SDL_WINDOWEVENT_HIDDEN			:= 2.
    SDL_WINDOWEVENT_EXPOSED		:= 3.
    SDL_WINDOWEVENT_MOVED			:= 4.
    SDL_WINDOWEVENT_RESIZED		:= 5.
    SDL_WINDOWEVENT_SIZE_CHANGED		:= 6.
    SDL_WINDOWEVENT_MINIMIZED		:= 7.
    SDL_WINDOWEVENT_MAXIMIZED		:= 8.
    SDL_WINDOWEVENT_RESTORED		:= 9.
    SDL_WINDOWEVENT_ENTER			:= 10.
    SDL_WINDOWEVENT_LEAVE			:= 11.
    SDL_WINDOWEVENT_FOCUS_GAINED		:= 12.
    SDL_WINDOWEVENT_FOCUS_LOST		:= 13.
    SDL_WINDOWEVENT_CLOSE			:= 14.