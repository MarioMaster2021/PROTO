package;

import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;
import flixel.group.FlxGroup;
import ui.Hitbox;
import ui.FlxVirtualPad;
import flixel.ui.FlxButton;

#if (haxe >= "4.0.0")
enum abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";
	
	var S0 = "s0";
	var S1 = "s1";
	var S2 = "s2";
	var S3 = "s3";
	var S4 = "s4";
	var S5 = "s5";
	var S6 = "s6";
	
	var S0_P = "s0-press";
	var S1_P = "s1-press";
	var S2_P = "s2-press";
	var S3_P = "s3-press";
	var S4_P = "s4-press";
	var S5_P = "s5-press";
	var S6_P = "s6-press";
	
	var S0_R = "s0-release";
	var S1_R = "s1-release";
	var S2_R = "s2-release";
	var S3_R = "s3-release";
	var S4_R = "s4-release";
	var S5_R = "s5-release";
	var S6_R = "s6-release";
	
	var N0 = "n0";
	var N1 = "n1";
	var N2 = "n2";
	var N3 = "n3";
	var N4 = "n4";
	var N5 = "n5";
	var N6 = "n6";
	var N7 = "n7";
	var N8 = "n8";
	
	var N0_P = "n0-press";
	var N1_P = "n1-press";
	var N2_P = "n2-press";
	var N3_P = "n3-press";
	var N4_P = "n4-press";
	var N5_P = "n5-press";
	var N6_P = "n6-press";
	var N7_P = "n7-press";
	var N8_P = "n8-press";
	
	var N0_R = "n0-release";
	var N1_R = "n1-release";
	var N2_R = "n2-release";
	var N3_R = "n3-release";
	var N4_R = "n4-release";
	var N5_R = "n5-release";
	var N6_R = "n6-release";
	var N7_R = "n7-release";
	var N8_R = "n8-release";
}
#else
@:enum
abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";
	
	var S0 = "s0";
	var S1 = "s1";
	var S2 = "s2";
	var S3 = "s3";
	var S4 = "s4";
	var S5 = "s5";
	var S6 = "s6";
	
	var S0_P = "s0-press";
	var S1_P = "s1-press";
	var S2_P = "s2-press";
	var S3_P = "s3-press";
	var S4_P = "s4-press";
	var S5_P = "s5-press";
	var S6_P = "s6-press";
	
	var S0_R = "s0-release";
	var S1_R = "s1-release";
	var S2_R = "s2-release";
	var S3_R = "s3-release";
	var S4_R = "s4-release";
	var S5_R = "s5-release";
	var S6_R = "s6-release";
	
	var N0 = "n0";
	var N1 = "n1";
	var N2 = "n2";
	var N3 = "n3";
	var N4 = "n4";
	var N5 = "n5";
	var N6 = "n6";
	var N7 = "n7";
	var N8 = "n8";
	
	var N0_P = "n0-press";
	var N1_P = "n1-press";
	var N2_P = "n2-press";
	var N3_P = "n3-press";
	var N4_P = "n4-press";
	var N5_P = "n5-press";
	var N6_P = "n6-press";
	var N7_P = "n7-press";
	var N8_P = "n8-press";
	
	var N0_R = "n0-release";
	var N1_R = "n1-release";
	var N2_R = "n2-release";
	var N3_R = "n3-release";
	var N4_R = "n4-release";
	var N5_R = "n5-release";
	var N6_R = "n6-release";
	var N7_R = "n7-release";
	var N8_R = "n8-release";
}
#end

enum Device
{
	Keys;
	Gamepad(id:Int);
}

/**
 * Since, in many cases multiple actions should use similar keys, we don't want the
 * rebinding UI to list every action. ActionBinders are what the user percieves as
 * an input so, for instance, they can't set jump-press and jump-release to different keys.
 */
enum Control
{
	UI_UP;
	UI_LEFT;
	UI_RIGHT;
	UI_DOWN;
	NOTE_UP;
	NOTE_LEFT;
	NOTE_RIGHT;
	NOTE_DOWN;
	RESET;
	ACCEPT;
	BACK;
	PAUSE;
	
	S0;
	S1;
	S2;
	S3;
	S4;
	S5;
	S6;
	
	N0;
	N1;
	N2;
	N3;
	N4;
	N5;
	N6;
	N7;
	N8;
}

enum KeyboardScheme
{
	Solo;
	Duo(first:Bool);
	None;
	Custom;
}

/**
 * A list of actions that a player would invoke via some input device.
 * Uses FlxActions to funnel various inputs to a single action.
 */
class Controls extends FlxActionSet
{
	var _ui_up = new FlxActionDigital(Action.UI_UP);
	var _ui_left = new FlxActionDigital(Action.UI_LEFT);
	var _ui_right = new FlxActionDigital(Action.UI_RIGHT);
	var _ui_down = new FlxActionDigital(Action.UI_DOWN);
	var _ui_upP = new FlxActionDigital(Action.UI_UP_P);
	var _ui_leftP = new FlxActionDigital(Action.UI_LEFT_P);
	var _ui_rightP = new FlxActionDigital(Action.UI_RIGHT_P);
	var _ui_downP = new FlxActionDigital(Action.UI_DOWN_P);
	var _ui_upR = new FlxActionDigital(Action.UI_UP_R);
	var _ui_leftR = new FlxActionDigital(Action.UI_LEFT_R);
	var _ui_rightR = new FlxActionDigital(Action.UI_RIGHT_R);
	var _ui_downR = new FlxActionDigital(Action.UI_DOWN_R);
	var _note_up = new FlxActionDigital(Action.NOTE_UP);
	var _note_left = new FlxActionDigital(Action.NOTE_LEFT);
	var _note_right = new FlxActionDigital(Action.NOTE_RIGHT);
	var _note_down = new FlxActionDigital(Action.NOTE_DOWN);
	var _note_upP = new FlxActionDigital(Action.NOTE_UP_P);
	var _note_leftP = new FlxActionDigital(Action.NOTE_LEFT_P);
	var _note_rightP = new FlxActionDigital(Action.NOTE_RIGHT_P);
	var _note_downP = new FlxActionDigital(Action.NOTE_DOWN_P);
	var _note_upR = new FlxActionDigital(Action.NOTE_UP_R);
	var _note_leftR = new FlxActionDigital(Action.NOTE_LEFT_R);
	var _note_rightR = new FlxActionDigital(Action.NOTE_RIGHT_R);
	var _note_downR = new FlxActionDigital(Action.NOTE_DOWN_R);
	var _accept = new FlxActionDigital(Action.ACCEPT);
	var _back = new FlxActionDigital(Action.BACK);
	var _pause = new FlxActionDigital(Action.PAUSE);
	var _reset = new FlxActionDigital(Action.RESET);
	
	var _s0 = new FlxActionDigital(Action.S0);
	var _s1 = new FlxActionDigital(Action.S1);
	var _s2 = new FlxActionDigital(Action.S2);
	var _s3 = new FlxActionDigital(Action.S3);
	var _s4 = new FlxActionDigital(Action.S4);
	var _s5 = new FlxActionDigital(Action.S5);
	var _s6 = new FlxActionDigital(Action.S6);

	var _s0P = new FlxActionDigital(Action.S0_P);
	var _s1P = new FlxActionDigital(Action.S1_P);
	var _s2P = new FlxActionDigital(Action.S2_P);
	var _s3P = new FlxActionDigital(Action.S3_P);
	var _s4P = new FlxActionDigital(Action.S4_P);
	var _s5P = new FlxActionDigital(Action.S5_P);
	var _s6P = new FlxActionDigital(Action.S6_P);

	var _s0R = new FlxActionDigital(Action.S0_R);
	var _s1R = new FlxActionDigital(Action.S1_R);
	var _s2R = new FlxActionDigital(Action.S2_R);
	var _s3R = new FlxActionDigital(Action.S3_R);
	var _s4R = new FlxActionDigital(Action.S4_R);
	var _s5R = new FlxActionDigital(Action.S5_R);
	var _s6R = new FlxActionDigital(Action.S6_R);
	
	var _n0 = new FlxActionDigital(Action.N0);
	var _n1 = new FlxActionDigital(Action.N1);
	var _n2 = new FlxActionDigital(Action.N2);
	var _n3 = new FlxActionDigital(Action.N3);
	var _n4 = new FlxActionDigital(Action.N4);
	var _n5 = new FlxActionDigital(Action.N5);
	var _n6 = new FlxActionDigital(Action.N6);
	var _n7 = new FlxActionDigital(Action.N7);
	var _n8 = new FlxActionDigital(Action.N8);

	var _n0P = new FlxActionDigital(Action.N0_P);
	var _n1P = new FlxActionDigital(Action.N1_P);
	var _n2P = new FlxActionDigital(Action.N2_P);
	var _n3P = new FlxActionDigital(Action.N3_P);
	var _n4P = new FlxActionDigital(Action.N4_P);
	var _n5P = new FlxActionDigital(Action.N5_P);
	var _n6P = new FlxActionDigital(Action.N6_P);
	var _n7P = new FlxActionDigital(Action.N7_P);
	var _n8P = new FlxActionDigital(Action.N8_P);

	var _n0R = new FlxActionDigital(Action.N0_R);
	var _n1R = new FlxActionDigital(Action.N1_R);
	var _n2R = new FlxActionDigital(Action.N2_R);
	var _n3R = new FlxActionDigital(Action.N3_R);
	var _n4R = new FlxActionDigital(Action.N4_R);
	var _n5R = new FlxActionDigital(Action.N5_R);
	var _n6R = new FlxActionDigital(Action.N6_R);
	var _n7R = new FlxActionDigital(Action.N7_R);
	var _n8R = new FlxActionDigital(Action.N8_R);

	#if (haxe >= "4.0.0")
	var byName:Map<String, FlxActionDigital> = [];
	#else
	var byName:Map<String, FlxActionDigital> = new Map<String, FlxActionDigital>();
	#end

	public var gamepadsAdded:Array<Int> = [];
	public var keyboardScheme = KeyboardScheme.None;

	public var UI_UP(get, never):Bool;

	inline function get_UI_UP()
		return _ui_up.check();

	public var UI_LEFT(get, never):Bool;

	inline function get_UI_LEFT()
		return _ui_left.check();

	public var UI_RIGHT(get, never):Bool;

	inline function get_UI_RIGHT()
		return _ui_right.check();

	public var UI_DOWN(get, never):Bool;

	inline function get_UI_DOWN()
		return _ui_down.check();

	public var UI_UP_P(get, never):Bool;

	inline function get_UI_UP_P()
		return _ui_upP.check();

	public var UI_LEFT_P(get, never):Bool;

	inline function get_UI_LEFT_P()
		return _ui_leftP.check();

	public var UI_RIGHT_P(get, never):Bool;

	inline function get_UI_RIGHT_P()
		return _ui_rightP.check();

	public var UI_DOWN_P(get, never):Bool;

	inline function get_UI_DOWN_P()
		return _ui_downP.check();

	public var UI_UP_R(get, never):Bool;

	inline function get_UI_UP_R()
		return _ui_upR.check();

	public var UI_LEFT_R(get, never):Bool;

	inline function get_UI_LEFT_R()
		return _ui_leftR.check();

	public var UI_RIGHT_R(get, never):Bool;

	inline function get_UI_RIGHT_R()
		return _ui_rightR.check();

	public var UI_DOWN_R(get, never):Bool;

	inline function get_UI_DOWN_R()
		return _ui_downR.check();

	public var NOTE_UP(get, never):Bool;

	inline function get_NOTE_UP()
		return _note_up.check();

	public var NOTE_LEFT(get, never):Bool;

	inline function get_NOTE_LEFT()
		return _note_left.check();

	public var NOTE_RIGHT(get, never):Bool;

	inline function get_NOTE_RIGHT()
		return _note_right.check();

	public var NOTE_DOWN(get, never):Bool;

	inline function get_NOTE_DOWN()
		return _note_down.check();

	public var NOTE_UP_P(get, never):Bool;

	inline function get_NOTE_UP_P()
		return _note_upP.check();

	public var NOTE_LEFT_P(get, never):Bool;

	inline function get_NOTE_LEFT_P()
		return _note_leftP.check();

	public var NOTE_RIGHT_P(get, never):Bool;

	inline function get_NOTE_RIGHT_P()
		return _note_rightP.check();

	public var NOTE_DOWN_P(get, never):Bool;

	inline function get_NOTE_DOWN_P()
		return _note_downP.check();

	public var NOTE_UP_R(get, never):Bool;

	inline function get_NOTE_UP_R()
		return _note_upR.check();

	public var NOTE_LEFT_R(get, never):Bool;

	inline function get_NOTE_LEFT_R()
		return _note_leftR.check();

	public var NOTE_RIGHT_R(get, never):Bool;

	inline function get_NOTE_RIGHT_R()
		return _note_rightR.check();

	public var NOTE_DOWN_R(get, never):Bool;

	inline function get_NOTE_DOWN_R()
		return _note_downR.check();

	public var ACCEPT(get, never):Bool;

	inline function get_ACCEPT()
		return _accept.check();

	public var BACK(get, never):Bool;

	inline function get_BACK()
		return _back.check();

	public var PAUSE(get, never):Bool;

	inline function get_PAUSE()
		return _pause.check();

	public var RESET(get, never):Bool;

	inline function get_RESET()
		return _reset.check();
	
	public var S0(get, never):Bool;
	
	inline function get_S0() 
	        return _s0.check();
	
	public var S1(get, never):Bool;
	
	inline function get_S1()
	        return _s1.check();
	
	public var S2(get, never):Bool;
	
	inline function get_S2()
	        return _s2.check();
	
	public var S3(get, never):Bool;
	
	inline function get_S3()
		return _s3.check();
	
	public var S4(get, never):Bool;
	
	inline function get_S4() 
	        return _s4.check();
	
	public var S5(get, never):Bool;
	
	inline function get_S5() 
	        return _s5.check();
	
	public var S6(get, never):Bool;
	
	inline function get_S6() 
		return _s6.check();

	public var S0_P(get, never):Bool;
	
	inline function get_S0_P() 
		return _s0P.check();
	
	public var S1_P(get, never):Bool;
	
	inline function get_S1_P() 
		return _s1P.check();
	
	public var S2_P(get, never):Bool;
	
	inline function get_S2_P()
		return _s2P.check();
	
	public var S3_P(get, never):Bool;
	
	inline function get_S3_P() 
		return _s3P.check();
	
	public var S4_P(get, never):Bool;
	
	inline function get_S4_P()
		return _s4P.check();
	
	public var S5_P(get, never):Bool;
	
	inline function get_S5_P() 
		return _s5P.check();
	
	public var S6_P(get, never):Bool;
	
	inline function get_S6_P()
	        return _s6P.check();

	public var S0_R(get, never):Bool;
	
	inline function get_S0_R()
		return _s0R.check();
	
	public var S1_R(get, never):Bool;
	
	inline function get_S1_R() 
		return _s1R.check();
	
	public var S2_R(get, never):Bool;
	
	inline function get_S2_R()
		return _s2R.check();
	
	public var S3_R(get, never):Bool;
	
	inline function get_S3_R() 
		return _s3R.check();
	
	public var S4_R(get, never):Bool;
	
	inline function get_S4_R()
		return _s4R.check();
	
	public var S5_R(get, never):Bool;
	
	inline function get_S5_R()
		return _s5R.check();
	
	public var S6_R(get, never):Bool;
	
	inline function get_S6_R()
		return _s6R.check();
	
	
	public var N0(get, never):Bool;
	
	inline function get_N0()
		return _n0.check();
	
	public var N1(get, never):Bool;
	
	inline function get_N1()
		return _n1.check();
	
	public var N2(get, never):Bool;
	
	inline function get_N2()
		return _n2.check();
	
	public var N3(get, never):Bool;
	
	inline function get_N3()
		return _n3.check();
	
	public var N4(get, never):Bool;
	
	inline function get_N4()
		return _n4.check();
	
	public var N5(get, never):Bool;
	
	inline function get_N5()
		return _n5.check();
	
	public var N6(get, never):Bool;
	
	inline function get_N6()
		return _n6.check();
	
	public var N7(get, never):Bool;
	
	inline function get_N7()
		return _n7.check();
	
	public var N8(get, never):Bool;
	
	inline function get_N8() 
		return _n8.check();

	public var N0_P(get, never):Bool;
	
	inline function get_N0_P() 
		return _n0P.check();
	
	public var N1_P(get, never):Bool;
	
	inline function get_N1_P()
		return _n1P.check();
	
	public var N2_P(get, never):Bool;
	
	inline function get_N2_P()
		return _n2P.check();
	
	public var N3_P(get, never):Bool;
	
	inline function get_N3_P()
		return _n3P.check();
	
	public var N4_P(get, never):Bool;
	
	inline function get_N4_P()
	        return _n4P.check();
	
	public var N5_P(get, never):Bool;
	
	inline function get_N5_P()
		return _n5P.check();
	
	public var N6_P(get, never):Bool;
	
	inline function get_N6_P()
		return _n6P.check();
	
	public var N7_P(get, never):Bool;
	
	inline function get_N7_P() 
	        return _n7P.check();
	
	public var N8_P(get, never):Bool;
	inline function get_N8_P()
		return _n8P.check();

	public var N0_R(get, never):Bool;
	
	inline function get_N0_R()
	        return _n0R.check();
	
	public var N1_R(get, never):Bool;
	
	inline function get_N1_R()
		return _n1R.check();
	
	public var N2_R(get, never):Bool;
	
	inline function get_N2_R()
		return _n2R.check();
	
	public var N3_R(get, never):Bool;
	
	inline function get_N3_R()
		return _n3R.check();
	
	public var N4_R(get, never):Bool;
	
	inline function get_N4_R()
		return _n4R.check();
	
	public var N5_R(get, never):Bool;
	
	inline function get_N5_R()
		return _n5R.check();
	
	public var N6_R(get, never):Bool;
	
	inline function get_N6_R() 
		return _n6R.check();
	
	public var N7_R(get, never):Bool;
	
	inline function get_N7_R()
		return _n7R.check();
	
	public var N8_R(get, never):Bool;
	
	inline function get_N8_R()
		return _n8R.check();

	#if (haxe >= "4.0.0")
	public function new(name, scheme = None)
	{
		super(name);

		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);
		
		add(_s0);
		add(_s1);
		add(_s2);
		add(_s3);
		add(_s4);
		add(_s5);
		add(_s6);
		
		add(_s0P);
		add(_s1P);
		add(_s2P);
		add(_s3P);
		add(_s4P);
		add(_s5P);
		add(_s6P);
		
		add(_s0R);
		add(_s1R);
		add(_s2R);
		add(_s3R);
		add(_s4R);
		add(_s5R);
		add(_s6R);
		
		
		add(_n0);
		add(_n1);
		add(_n2);
		add(_n3);
		add(_n4);
		add(_n5);
		add(_n6);
		add(_n7);
		add(_n8);
		
		add(_n0P);
		add(_n1P);
		add(_n2P);
		add(_n3P);
		add(_n4P);
		add(_n5P);
		add(_n6P);
		add(_n7P);
		add(_n8P);
		
		add(_n0R);
		add(_n1R);
		add(_n2R);
		add(_n3R);
		add(_n4R);
		add(_n5R);
		add(_n6R);
		add(_n7R);
		add(_n8R);


		for (action in digitalActions)
			byName[action.name] = action;

		setKeyboardScheme(scheme, false);
	}
	#else
	public function new(name, scheme:KeyboardScheme = null)
	{
		super(name);

		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);
		
		add(_s0);
		add(_s1);
		add(_s2);
		add(_s3);
		add(_s4);
		add(_s5);
		add(_s6);
		
		add(_s0P);
		add(_s1P);
		add(_s2P);
		add(_s3P);
		add(_s4P);
		add(_s5P);
		add(_s6P);
		
		add(_s0R);
		add(_s1R);
		add(_s2R);
		add(_s3R);
		add(_s4R);
		add(_s5R);
		add(_s6R);
		
		
		add(_n0);
		add(_n1);
		add(_n2);
		add(_n3);
		add(_n4);
		add(_n5);
		add(_n6);
		add(_n7);
		add(_n8);
		
		add(_n0P);
		add(_n1P);
		add(_n2P);
		add(_n3P);
		add(_n4P);
		add(_n5P);
		add(_n6P);
		add(_n7P);
		add(_n8P);
		
		add(_n0R);
		add(_n1R);
		add(_n2R);
		add(_n3R);
		add(_n4R);
		add(_n5R);
		add(_n6R);
		add(_n7R);
		add(_n8R);

		for (action in digitalActions)
			byName[action.name] = action;
			
		if (scheme == null)
			scheme = None;
		setKeyboardScheme(scheme, false);
	}
	#end

	public var trackedinputsUI:Array<FlxActionInput> = [];
	public var trackedinputsNOTES:Array<FlxActionInput> = [];	

	public function addbuttonuNOTES(action:FlxActionDigital, button:FlxButton, state:FlxInputState) 
	{
		var input = new FlxActionInputDigitalIFlxInput(button, state);
		trackedinputsNOTES.push(input);
		
		action.add(input);
	}
	
	public function setHitBoxNOTES(hitbox:Hitbox, ?Type:HitboxType) 
	{
	if (Type == null)
	Type = DEFAULT;
        
	switch(Type){
	case ONE:
		inline forEachBound(Control.N4, (action, state) -> addbuttonuNOTES(action, hitbox.k1, state));
	case TWO:
		inline forEachBound(Control.NOTE_LEFT, (action, state) -> addbuttonuNOTES(action, hitbox.k1, state));
		inline forEachBound(Control.NOTE_RIGHT, (action, state) -> addbuttonuNOTES(action, hitbox.k2, state));
	case THREE:
		inline forEachBound(Control.NOTE_LEFT, (action, state) -> addbuttonuNOTES(action, hitbox.k1, state));
		inline forEachBound(Control.N4, (action, state) -> addbuttonuNOTES(action, hitbox.k2, state));
		inline forEachBound(Control.NOTE_RIGHT, (action, state) -> addbuttonuNOTES(action, hitbox.k3, state));					
	case FIVE:
		inline forEachBound(Control.NOTE_UP, (action, state) -> addbuttonuNOTES(action, hitbox.k4, state));
		inline forEachBound(Control.NOTE_DOWN, (action, state) -> addbuttonuNOTES(action, hitbox.k2, state));
		inline forEachBound(Control.N4, (action, state) -> addbuttonuNOTES(action, hitbox.k3, state));
		inline forEachBound(Control.NOTE_LEFT, (action, state) -> addbuttonuNOTES(action, hitbox.k1, state));
		inline forEachBound(Control.NOTE_RIGHT, (action, state) -> addbuttonuNOTES(action, hitbox.k5, state));
	case SIX:
		inline forEachBound(Control.S0, (action, state) -> addbuttonuNOTES(action, hitbox.k1, state));
		inline forEachBound(Control.S1, (action, state) -> addbuttonuNOTES(action, hitbox.k2, state));
		inline forEachBound(Control.S2, (action, state) -> addbuttonuNOTES(action, hitbox.k3, state));
		inline forEachBound(Control.S4, (action, state) -> addbuttonuNOTES(action, hitbox.k4, state));
		inline forEachBound(Control.S5, (action, state) -> addbuttonuNOTES(action, hitbox.k5, state));
		inline forEachBound(Control.S6, (action, state) -> addbuttonuNOTES(action, hitbox.k6, state));									
	case SEVEN:	
		inline forEachBound(Control.S0, (action, state) -> addbuttonuNOTES(action, hitbox.k1, state));
		inline forEachBound(Control.S1, (action, state) -> addbuttonuNOTES(action, hitbox.k2, state));
		inline forEachBound(Control.S2, (action, state) -> addbuttonuNOTES(action, hitbox.k3, state));
		inline forEachBound(Control.S3, (action, state) -> addbuttonuNOTES(action, hitbox.k4, state));
		inline forEachBound(Control.S4, (action, state) -> addbuttonuNOTES(action, hitbox.k5, state));
		inline forEachBound(Control.S5, (action, state) -> addbuttonuNOTES(action, hitbox.k6, state));
		inline forEachBound(Control.S6, (action, state) -> addbuttonuNOTES(action, hitbox.k7, state));
	case EIGHT:
		inline forEachBound(Control.N0, (action, state) -> addbuttonuNOTES(action, hitbox.k1, state));
		inline forEachBound(Control.N1, (action, state) -> addbuttonuNOTES(action, hitbox.k2, state));
		inline forEachBound(Control.N2, (action, state) -> addbuttonuNOTES(action, hitbox.k3, state));
		inline forEachBound(Control.N3, (action, state) -> addbuttonuNOTES(action, hitbox.k4, state));
		inline forEachBound(Control.N5, (action, state) -> addbuttonuNOTES(action, hitbox.k5, state));
		inline forEachBound(Control.N6, (action, state) -> addbuttonuNOTES(action, hitbox.k6, state));
		inline forEachBound(Control.N7, (action, state) -> addbuttonuNOTES(action, hitbox.k7, state));
		inline forEachBound(Control.N8, (action, state) -> addbuttonuNOTES(action, hitbox.k8, state));					
	case NINE:
		inline forEachBound(Control.N0, (action, state) -> addbuttonuNOTES(action, hitbox.k1, state));
		inline forEachBound(Control.N1, (action, state) -> addbuttonuNOTES(action, hitbox.k2, state));
		inline forEachBound(Control.N2, (action, state) -> addbuttonuNOTES(action, hitbox.k3, state));
		inline forEachBound(Control.N3, (action, state) -> addbuttonuNOTES(action, hitbox.k4, state));
		inline forEachBound(Control.N4, (action, state) -> addbuttonuNOTES(action, hitbox.k5, state));
		inline forEachBound(Control.N5, (action, state) -> addbuttonuNOTES(action, hitbox.k6, state));
		inline forEachBound(Control.N6, (action, state) -> addbuttonuNOTES(action, hitbox.k7, state));
		inline forEachBound(Control.N7, (action, state) -> addbuttonuNOTES(action, hitbox.k8, state));
		inline forEachBound(Control.N8, (action, state) -> addbuttonuNOTES(action, hitbox.k9, state));											
	case DEFAULT:	
		inline forEachBound(Control.NOTE_UP, (action, state) -> addbuttonuNOTES(action, hitbox.k3, state));
		inline forEachBound(Control.NOTE_DOWN, (action, state) -> addbuttonuNOTES(action, hitbox.k2, state));
		inline forEachBound(Control.NOTE_LEFT, (action, state) -> addbuttonuNOTES(action, hitbox.k1, state));
		inline forEachBound(Control.NOTE_RIGHT, (action, state) -> addbuttonuNOTES(action, hitbox.k4, state));	
	}
	}
	
	public function setVirtualPadNOTES(virtualPad:FlxVirtualPad, ?DPad:FlxDPadMode, ?Action:FlxActionMode) 
	{
		if (DPad == null)
			DPad = NONE;
		if (Action == null)
			Action = NONE;
		
		switch (DPad)
		{
			case UP_DOWN:
				inline forEachBound(Control.NOTE_UP, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonUp, state));
				inline forEachBound(Control.NOTE_DOWN, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonDown, state));
			case LEFT_RIGHT:
				inline forEachBound(Control.NOTE_LEFT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonLeft, state));
				inline forEachBound(Control.NOTE_RIGHT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonRight, state));
			case UP_LEFT_RIGHT:
				inline forEachBound(Control.NOTE_UP, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonUp, state));
				inline forEachBound(Control.NOTE_LEFT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonLeft, state));
				inline forEachBound(Control.NOTE_RIGHT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonRight, state));
			case FULL | RIGHT_FULL:
				inline forEachBound(Control.NOTE_UP, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonUp, state));
				inline forEachBound(Control.NOTE_DOWN, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonDown, state));
				inline forEachBound(Control.NOTE_LEFT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonLeft, state));
				inline forEachBound(Control.NOTE_RIGHT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonRight, state));
			
			case NONE:
		}

		switch (Action)
		{
			case A:
				inline forEachBound(Control.ACCEPT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonA, state));
                        case B:
				inline forEachBound(Control.BACK, (action, state) -> addbuttonuUI(action, virtualPad.buttonB, state));
			case A_B:
				inline forEachBound(Control.ACCEPT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonA, state));
				inline forEachBound(Control.BACK, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonB, state));
			case A_B_C:
				inline forEachBound(Control.ACCEPT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonA, state));
				inline forEachBound(Control.BACK, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonB, state));
			case A_B_X_Y:
				inline forEachBound(Control.ACCEPT, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonA, state));
				inline forEachBound(Control.BACK, (action, state) -> addbuttonuNOTES(action, virtualPad.buttonB, state));
			case D:

			case NONE:
		}
	}
	

	public function addbuttonuUI(action:FlxActionDigital, button:FlxButton, state:FlxInputState) {
		var input = new FlxActionInputDigitalIFlxInput(button, state);
		trackedinputsUI.push(input);
		
		action.add(input);
	}
	
	public function setHitBoxUI(hitbox:Hitbox) 
	{
		inline forEachBound(Control.UI_UP, (action, state) -> addbuttonuUI(action, hitbox.k3, state));
		inline forEachBound(Control.UI_DOWN, (action, state) -> addbuttonuUI(action, hitbox.k2, state));
		inline forEachBound(Control.UI_LEFT, (action, state) -> addbuttonuUI(action, hitbox.k1, state));
		inline forEachBound(Control.UI_RIGHT, (action, state) -> addbuttonuUI(action, hitbox.k4, state));	
	}
	
	public function setVirtualPadUI(virtualPad:FlxVirtualPad, ?DPad:FlxDPadMode, ?Action:FlxActionMode) 
	{
		if (DPad == null)
			DPad = NONE;
		if (Action == null)
			Action = NONE;
		
		switch (DPad)
		{
			case UP_DOWN:
				inline forEachBound(Control.UI_UP, (action, state) -> addbuttonuUI(action, virtualPad.buttonUp, state));
				inline forEachBound(Control.UI_DOWN, (action, state) -> addbuttonuUI(action, virtualPad.buttonDown, state));
			case LEFT_RIGHT:
				inline forEachBound(Control.UI_LEFT, (action, state) -> addbuttonuUI(action, virtualPad.buttonLeft, state));
				inline forEachBound(Control.UI_RIGHT, (action, state) -> addbuttonuUI(action, virtualPad.buttonRight, state));
			case UP_LEFT_RIGHT:
				inline forEachBound(Control.UI_UP, (action, state) -> addbuttonuUI(action, virtualPad.buttonUp, state));
				inline forEachBound(Control.UI_LEFT, (action, state) -> addbuttonuUI(action, virtualPad.buttonLeft, state));
				inline forEachBound(Control.UI_RIGHT, (action, state) -> addbuttonuUI(action, virtualPad.buttonRight, state));
			case FULL | RIGHT_FULL:
				inline forEachBound(Control.UI_UP, (action, state) -> addbuttonuUI(action, virtualPad.buttonUp, state));
				inline forEachBound(Control.UI_DOWN, (action, state) -> addbuttonuUI(action, virtualPad.buttonDown, state));
				inline forEachBound(Control.UI_LEFT, (action, state) -> addbuttonuUI(action, virtualPad.buttonLeft, state));
				inline forEachBound(Control.UI_RIGHT, (action, state) -> addbuttonuUI(action, virtualPad.buttonRight, state));
			
			case NONE:
		}

		switch (Action)
		{
			case A:
				inline forEachBound(Control.ACCEPT, (action, state) -> addbuttonuUI(action, virtualPad.buttonA, state));
                        case B:
				inline forEachBound(Control.BACK, (action, state) -> addbuttonuUI(action, virtualPad.buttonB, state));
			case A_B:
				inline forEachBound(Control.ACCEPT, (action, state) -> addbuttonuUI(action, virtualPad.buttonA, state));
				inline forEachBound(Control.BACK, (action, state) -> addbuttonuUI(action, virtualPad.buttonB, state));
			case A_B_C:
				inline forEachBound(Control.ACCEPT, (action, state) -> addbuttonuUI(action, virtualPad.buttonA, state));
				inline forEachBound(Control.BACK, (action, state) -> addbuttonuUI(action, virtualPad.buttonB, state));
			case A_B_X_Y:
				inline forEachBound(Control.ACCEPT, (action, state) -> addbuttonuUI(action, virtualPad.buttonA, state));
				inline forEachBound(Control.BACK, (action, state) -> addbuttonuUI(action, virtualPad.buttonB, state));
			case D:
				
			case NONE:
		}
	}
	

	public function removeFlxInput(Tinputs) {
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			
			while (i-- > 0)
			{
				var input = action.inputs[i];

				var x = Tinputs.length;
				while (x-- > 0)
					if (Tinputs[x] == input)
						action.remove(input);
			}
		}
	}	

	override function update()
	{
		super.update();
	}

	// inline
	public function checkByName(name:Action):Bool
	{
		#if debug
		if (!byName.exists(name))
			throw 'Invalid name: $name';
		#end
		return byName[name].check();
	}

	public function getDialogueName(action:FlxActionDigital):String
	{
		var input = action.inputs[0];
		return switch input.device
		{
			case KEYBOARD: return '[${(input.inputID : FlxKey)}]';
			case GAMEPAD: return '(${(input.inputID : FlxGamepadInputID)})';
			case device: throw 'unhandled device: $device';
		}
	}

	public function getDialogueNameFromToken(token:String):String
	{
		return getDialogueName(getActionFromControl(Control.createByName(token.toUpperCase())));
	}

	function getActionFromControl(control:Control):FlxActionDigital
	{
		return switch (control)
		{
			case UI_UP: _ui_up;
			case UI_DOWN: _ui_down;
			case UI_LEFT: _ui_left;
			case UI_RIGHT: _ui_right;
			case NOTE_UP: _note_up;
			case NOTE_DOWN: _note_down;
			case NOTE_LEFT: _note_left;
			case NOTE_RIGHT: _note_right;
			case ACCEPT: _accept;
			case BACK: _back;
			case PAUSE: _pause;
			case RESET: _reset;
			
			case S0: _s0;
			case S1: _s1;
			case S2: _s2;
			case S3: _s3;
			case S4: _s4;
			case S5: _s5;
			case S6: _s6;

			
			case N0: _n0;
			case N1: _n1;
			case N2: _n2;
			case N3: _n3;
			case N4: _n4;
			case N5: _n5;
			case N6: _n6;
			case N7: _n7;
			case N8: _n8;
		}
	}

	static function init():Void
	{
		var actions = new FlxActionManager();
		FlxG.inputs.add(actions);
	}

	/**
	 * Calls a function passing each action bound by the specified control
	 * @param control
	 * @param func
	 * @return ->Void)
	 */
	function forEachBound(control:Control, func:FlxActionDigital->FlxInputState->Void)
	{
		switch (control)
		{
			case UI_UP:
				func(_ui_up, PRESSED);
				func(_ui_upP, JUST_PRESSED);
				func(_ui_upR, JUST_RELEASED);
			case UI_LEFT:
				func(_ui_left, PRESSED);
				func(_ui_leftP, JUST_PRESSED);
				func(_ui_leftR, JUST_RELEASED);
			case UI_RIGHT:
				func(_ui_right, PRESSED);
				func(_ui_rightP, JUST_PRESSED);
				func(_ui_rightR, JUST_RELEASED);
			case UI_DOWN:
				func(_ui_down, PRESSED);
				func(_ui_downP, JUST_PRESSED);
				func(_ui_downR, JUST_RELEASED);
			case NOTE_UP:
				func(_note_up, PRESSED);
				func(_note_upP, JUST_PRESSED);
				func(_note_upR, JUST_RELEASED);
			case NOTE_LEFT:
				func(_note_left, PRESSED);
				func(_note_leftP, JUST_PRESSED);
				func(_note_leftR, JUST_RELEASED);
			case NOTE_RIGHT:
				func(_note_right, PRESSED);
				func(_note_rightP, JUST_PRESSED);
				func(_note_rightR, JUST_RELEASED);
			case NOTE_DOWN:
				func(_note_down, PRESSED);
				func(_note_downP, JUST_PRESSED);
				func(_note_downR, JUST_RELEASED);
			case ACCEPT:
				func(_accept, JUST_PRESSED);
			case BACK:
				func(_back, JUST_PRESSED);
			case PAUSE:
				func(_pause, JUST_PRESSED);
			case RESET:
				func(_reset, JUST_PRESSED);
				
			case S0:
				func(_s0, PRESSED);
				func(_s0P, JUST_PRESSED);
				func(_s0R, JUST_RELEASED);
			case S1:
				func(_s1, PRESSED);
				func(_s1P, JUST_PRESSED);
				func(_s1R, JUST_RELEASED);
			case S2:
				func(_s2, PRESSED);
				func(_s2P, JUST_PRESSED);
				func(_s2R, JUST_RELEASED);
			case S3:
				func(_s3, PRESSED);
				func(_s3P, JUST_PRESSED);
				func(_s3R, JUST_RELEASED);
			case S4:
				func(_s4, PRESSED);
				func(_s4P, JUST_PRESSED);
				func(_s4R, JUST_RELEASED);
			case S5:
				func(_s5, PRESSED);
				func(_s5P, JUST_PRESSED);
				func(_s5R, JUST_RELEASED);
			case S6:
				func(_s6, PRESSED);
				func(_s6P, JUST_PRESSED);
				func(_s6R, JUST_RELEASED);
				
				
			case N0:
				func(_n0, PRESSED);
				func(_n0P, JUST_PRESSED);
				func(_n0R, JUST_RELEASED);
			case N1:
				func(_n1, PRESSED);
				func(_n1P, JUST_PRESSED);
				func(_n1R, JUST_RELEASED);
			case N2:
				func(_n2, PRESSED);
				func(_n2P, JUST_PRESSED);
				func(_n2R, JUST_RELEASED);
			case N3:
				func(_n3, PRESSED);
				func(_n3P, JUST_PRESSED);
				func(_n3R, JUST_RELEASED);
			case N4:
				func(_n4, PRESSED);
				func(_n4P, JUST_PRESSED);
				func(_n4R, JUST_RELEASED);
			case N5:
				func(_n5, PRESSED);
				func(_n5P, JUST_PRESSED);
				func(_n5R, JUST_RELEASED);
			case N6:
				func(_n6, PRESSED);
				func(_n6P, JUST_PRESSED);
				func(_n6R, JUST_RELEASED);
			case N7:
				func(_n7, PRESSED);
				func(_n7P, JUST_PRESSED);
				func(_n7R, JUST_RELEASED);
			case N8:
				func(_n8, PRESSED);
				func(_n8P, JUST_PRESSED);
				func(_n8R, JUST_RELEASED);
		}
	}

	public function replaceBinding(control:Control, device:Device, ?toAdd:Int, ?toRemove:Int)
	{
		if (toAdd == toRemove)
			return;

		switch (device)
		{
			case Keys:
				if (toRemove != null)
					unbindKeys(control, [toRemove]);
				if (toAdd != null)
					bindKeys(control, [toAdd]);

			case Gamepad(id):
				if (toRemove != null)
					unbindButtons(control, id, [toRemove]);
				if (toAdd != null)
					bindButtons(control, id, [toAdd]);
		}
	}

	public function copyFrom(controls:Controls, ?device:Device)
	{
		#if (haxe >= "4.0.0")
		for (name => action in controls.byName)
		{
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
					byName[name].add(cast input);
			}
		}
		#else
		for (name in controls.byName.keys())
		{
			var action = controls.byName[name];
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
				byName[name].add(cast input);
			}
		}
		#end

		switch (device)
		{
			case null:
				// add all
				#if (haxe >= "4.0.0")
				for (gamepad in controls.gamepadsAdded)
					if (!gamepadsAdded.contains(gamepad))
						gamepadsAdded.push(gamepad);
				#else
				for (gamepad in controls.gamepadsAdded)
					if (gamepadsAdded.indexOf(gamepad) == -1)
					  gamepadsAdded.push(gamepad);
				#end

				mergeKeyboardScheme(controls.keyboardScheme);

			case Gamepad(id):
				gamepadsAdded.push(id);
			case Keys:
				mergeKeyboardScheme(controls.keyboardScheme);
		}
	}

	inline public function copyTo(controls:Controls, ?device:Device)
	{
		controls.copyFrom(this, device);
	}

	function mergeKeyboardScheme(scheme:KeyboardScheme):Void
	{
		if (scheme != None)
		{
			switch (keyboardScheme)
			{
				case None:
					keyboardScheme = scheme;
				default:
					keyboardScheme = Custom;
			}
		}
	}

	public function bindKeys(control:Control, keys:Array<FlxKey>)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addKeys(action, keys, state));
		#else
		forEachBound(control, function(action, state) addKeys(action, keys, state));
		#end	
	}

	public function unbindKeys(control:Control, keys:Array<FlxKey>)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeKeys(action, keys));
		#else
		forEachBound(control, function(action, _) removeKeys(action, keys));
		#end		
	}	
	
	inline static function addKeys(action:FlxActionDigital, keys:Array<FlxKey>, state:FlxInputState)
	{
		for (key in keys)
			if(key != NONE)
				action.addKey(key, state);
	}

	static function removeKeys(action:FlxActionDigital, keys:Array<FlxKey>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (input.device == KEYBOARD && keys.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function setKeyboardScheme(scheme:KeyboardScheme, reset = true)
	{
		if (reset)
			removeKeyboard();

		keyboardScheme = scheme;
		var keysMap = ClientPrefs.keyBinds;
		
		#if (haxe >= "4.0.0")
		switch (scheme)
		{
			case Solo:
				inline bindKeys(Control.UI_UP, keysMap.get('ui_up'));
				inline bindKeys(Control.UI_DOWN, keysMap.get('ui_down'));
				inline bindKeys(Control.UI_LEFT, keysMap.get('ui_left'));
				inline bindKeys(Control.UI_RIGHT, keysMap.get('ui_right'));
				inline bindKeys(Control.NOTE_UP, keysMap.get('note_up'));
				inline bindKeys(Control.NOTE_DOWN, keysMap.get('note_down'));
				inline bindKeys(Control.NOTE_LEFT, keysMap.get('note_left'));
				inline bindKeys(Control.NOTE_RIGHT, keysMap.get('note_right'));

				inline bindKeys(Control.ACCEPT, keysMap.get('accept'));
				inline bindKeys(Control.BACK, keysMap.get('back'));
				inline bindKeys(Control.PAUSE, keysMap.get('pause'));
				inline bindKeys(Control.RESET, keysMap.get('reset'));
				
				inline bindKeys(Control.S0, keysMap.get('s0'));
				inline bindKeys(Control.S1, keysMap.get('s1'));
				inline bindKeys(Control.S2, keysMap.get('s2'));
				inline bindKeys(Control.S3, keysMap.get('s3'));
				inline bindKeys(Control.S4, keysMap.get('s4'));
				inline bindKeys(Control.S5, keysMap.get('s5'));
				inline bindKeys(Control.S6, keysMap.get('s6'));
				
				inline bindKeys(Control.N0, keysMap.get('n0'));
				inline bindKeys(Control.N1, keysMap.get('n1'));
				inline bindKeys(Control.N2, keysMap.get('n2'));
				inline bindKeys(Control.N3, keysMap.get('n3'));
				inline bindKeys(Control.N4, keysMap.get('n4'));
				inline bindKeys(Control.N5, keysMap.get('n5'));
				inline bindKeys(Control.N6, keysMap.get('n6'));
				inline bindKeys(Control.N7, keysMap.get('n7'));
				inline bindKeys(Control.N8, keysMap.get('n8'));
			case Duo(true):
				inline bindKeys(Control.UI_UP, [W]);
				inline bindKeys(Control.UI_DOWN, [S]);
				inline bindKeys(Control.UI_LEFT, [A]);
				inline bindKeys(Control.UI_RIGHT, [D]);
				inline bindKeys(Control.NOTE_UP, [W]);
				inline bindKeys(Control.NOTE_DOWN, [S]);
				inline bindKeys(Control.NOTE_LEFT, [A]);
				inline bindKeys(Control.NOTE_RIGHT, [D]);
				inline bindKeys(Control.ACCEPT, [G, Z]);
				inline bindKeys(Control.BACK, [H, X]);
				inline bindKeys(Control.PAUSE, [ONE]);
				inline bindKeys(Control.RESET, [R]);
					
				inline bindKeys(Control.S0, [S]);
				inline bindKeys(Control.S1, [D]);
				inline bindKeys(Control.S2, [F]);
				inline bindKeys(Control.S3, [SPACE]);
				inline bindKeys(Control.S4, [J]);
				inline bindKeys(Control.S5, [K]);
				inline bindKeys(Control.S6, [L]);
				
				inline bindKeys(Control.N0, [A]);
				inline bindKeys(Control.N1, [S]);
				inline bindKeys(Control.N2, [D]);
				inline bindKeys(Control.N3, [F]);
				inline bindKeys(Control.N4, [SPACE]);
				inline bindKeys(Control.N5, [H]);
				inline bindKeys(Control.N6, [J]);
				inline bindKeys(Control.N7, [K]);
				inline bindKeys(Control.N8, [L]);
			case Duo(false):
				inline bindKeys(Control.UI_UP, [FlxKey.UP]);
				inline bindKeys(Control.UI_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.UI_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.UI_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.NOTE_UP, [FlxKey.UP]);
				inline bindKeys(Control.NOTE_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.NOTE_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.NOTE_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [O]);
				inline bindKeys(Control.BACK, [P]);
				inline bindKeys(Control.PAUSE, [ENTER]);
				inline bindKeys(Control.RESET, [BACKSPACE]);
				
				inline bindKeys(Control.S0, [W]);
				inline bindKeys(Control.S1, [E]);
				inline bindKeys(Control.S2, [R]);
				inline bindKeys(Control.S3, [G]);
				inline bindKeys(Control.S4, [U]);
				inline bindKeys(Control.S5, [I]);
				inline bindKeys(Control.S6, [O]);
				
				inline bindKeys(Control.N0, [Q]);
				inline bindKeys(Control.N1, [W]);
				inline bindKeys(Control.N2, [E]);
				inline bindKeys(Control.N3, [R]);
				inline bindKeys(Control.N4, [G]);
				inline bindKeys(Control.N5, [Y]);
				inline bindKeys(Control.N6, [U]);
				inline bindKeys(Control.N7, [I]);
				inline bindKeys(Control.N8, [O]);
			case None: // nothing
			case Custom: // nothing
		}
		#else
		switch (scheme)
		{
			case Solo:
				bindKeys(Control.UI_UP, [W, FlxKey.UP]);
				bindKeys(Control.UI_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.UI_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.UI_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.NOTE_UP, [W, FlxKey.UP]);
				bindKeys(Control.NOTE_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.NOTE_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.NOTE_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				bindKeys(Control.RESET, [R]);
				
				bindKeys(Control.S0, [S, W]);
				bindKeys(Control.S1, [D, E]);
				bindKeys(Control.S2, [F, R]);
				bindKeys(Control.S3, [SPACE, G]);
				bindKeys(Control.S4, [J, U]);
				bindKeys(Control.S5, [K, I]);
				bindKeys(Control.S6, [L, O]);
				
				bindKeys(Control.N0, [A, Q]);
				bindKeys(Control.N1, [S, W]);
				bindKeys(Control.N2, [D, E]);
				bindKeys(Control.N3, [F, R]);
				bindKeys(Control.N4, [SPACE, G]);
				bindKeys(Control.N5, [H, Y]);
				bindKeys(Control.N6, [J, U]);
				bindKeys(Control.N7, [K, I]);
				bindKeys(Control.N8, [L, O]);
			case Duo(true):
				bindKeys(Control.UI_UP, [W]);
				bindKeys(Control.UI_DOWN, [S]);
				bindKeys(Control.UI_LEFT, [A]);
				bindKeys(Control.UI_RIGHT, [D]);
				bindKeys(Control.NOTE_UP, [W]);
				bindKeys(Control.NOTE_DOWN, [S]);
				bindKeys(Control.NOTE_LEFT, [A]);
				bindKeys(Control.NOTE_RIGHT, [D]);
				bindKeys(Control.ACCEPT, [G, Z]);
				bindKeys(Control.BACK, [H, X]);
				bindKeys(Control.PAUSE, [ONE]);
				bindKeys(Control.RESET, [R]);
				
				bindKeys(Control.S0, [S]);
				bindKeys(Control.S1, [D]);
				bindKeys(Control.S2, [F]);
				bindKeys(Control.S3, [SPACE]);
				bindKeys(Control.S4, [J]);
				bindKeys(Control.S5, [K]);
				bindKeys(Control.S6, [L]);
				
				bindKeys(Control.N0, [A]);
				bindKeys(Control.N1, [S]);
				bindKeys(Control.N2, [D]);
				bindKeys(Control.N3, [F]);
				bindKeys(Control.N4, [SPACE]);
				bindKeys(Control.N5, [H]);
				bindKeys(Control.N6, [J]);
				bindKeys(Control.N7, [K]);
				bindKeys(Control.N8, [L]);
			case Duo(false):
				bindKeys(Control.UI_UP, [FlxKey.UP]);
				bindKeys(Control.UI_DOWN, [FlxKey.DOWN]);
				bindKeys(Control.UI_LEFT, [FlxKey.LEFT]);
				bindKeys(Control.UI_RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.NOTE_UP, [FlxKey.UP]);
				bindKeys(Control.NOTE_DOWN, [FlxKey.DOWN]);
				bindKeys(Control.NOTE_LEFT, [FlxKey.LEFT]);
				bindKeys(Control.NOTE_RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [O]);
				bindKeys(Control.BACK, [P]);
				bindKeys(Control.PAUSE, [ENTER]);
				bindKeys(Control.RESET, [BACKSPACE]);
				
				bindKeys(Control.S0, [W]);
				bindKeys(Control.S1, [E]);
				bindKeys(Control.S2, [R]);
				bindKeys(Control.S3, [G]);
				bindKeys(Control.S4, [U]);
				bindKeys(Control.S5, [I]);
				bindKeys(Control.S6, [O]);
				
				bindKeys(Control.N0, [Q]);
				bindKeys(Control.N1, [W]);
				bindKeys(Control.N2, [E]);
				bindKeys(Control.N3, [R]);
				bindKeys(Control.N4, [G]);
				bindKeys(Control.N5, [Y]);
				bindKeys(Control.N6, [U]);
				bindKeys(Control.N7, [I]);
				bindKeys(Control.N8, [O]);
			case None: // nothing
			case Custom: // nothing
		}
		#end
	}

	function removeKeyboard()
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == KEYBOARD)
					action.remove(input);
			}
		}
	}

	public function addGamepad(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);
		
		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	inline function addGamepadLiteral(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);

		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	public function removeGamepad(deviceID:Int = FlxInputDeviceID.ALL):Void
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID))
					action.remove(input);
			}
		}

		gamepadsAdded.remove(deviceID);
	}

	public function addDefaultGamepad(id):Void
	{
		#if !switch
		addGamepadLiteral(id, [
			Control.ACCEPT => [A],
			Control.BACK => [B],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			Control.RESET => [Y]
		]);
		#else
		addGamepadLiteral(id, [
			//Swap A and B for switch
			Control.ACCEPT => [B],
			Control.BACK => [A],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			//Swap Y and X for switch
			Control.RESET => [Y],
		]);
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindButtons(control:Control, id, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addButtons(action, buttons, state, id));
		#else
		forEachBound(control, function(action, state) addButtons(action, buttons, state, id));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindButtons(control:Control, gamepadID:Int, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeButtons(action, gamepadID, buttons));
		#else
		forEachBound(control, function(action, _) removeButtons(action, gamepadID, buttons));
		#end
	}

	inline static function addButtons(action:FlxActionDigital, buttons:Array<FlxGamepadInputID>, state, id)
	{
		for (button in buttons)
			action.addGamepad(button, state, id);
	}

	static function removeButtons(action:FlxActionDigital, gamepadID:Int, buttons:Array<FlxGamepadInputID>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (isGamepad(input, gamepadID) && buttons.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function getInputsFor(control:Control, device:Device, ?list:Array<Int>):Array<Int>
	{
		if (list == null)
			list = [];

		switch (device)
		{
			case Keys:
				for (input in getActionFromControl(control).inputs)
				{
					if (input.device == KEYBOARD)
						list.push(input.inputID);
				}
			case Gamepad(id):
				for (input in getActionFromControl(control).inputs)
				{
					if (input.deviceID == id)
						list.push(input.inputID);
				}
		}
		return list;
	}

	public function removeDevice(device:Device)
	{
		switch (device)
		{
			case Keys:
				setKeyboardScheme(None);
			case Gamepad(id):
				removeGamepad(id);
		}
	}

	static function isDevice(input:FlxActionInput, device:Device)
	{
		return switch device
		{
			case Keys: input.device == KEYBOARD;
			case Gamepad(id): isGamepad(input, id);
		}
	}

	inline static function isGamepad(input:FlxActionInput, deviceID:Int)
	{
		return input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID);
	}
}
