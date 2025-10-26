OBTW
=================================================

TEAM

     PHi. -- ANDERSON RANGEL CIPRIANO FILHO
     .pSI -- BRENO DIAS DA SILVA
     2025 -- RODRIGO MONTEIRO JUNIOR

            PET GAMEJAM Season 3

CREDITS

          CODIGO BASE (PET ENG COMP)
           https://pet.inf.ufes.br/

     THE LOLCODE PROGRAMMING LANGUAGE
           http://www.lolcode.org/

              LOLCODE PARSER
      https://github.com/NullDev/I-HAS-JS

          THE LOLCODE LANGUAGE SPEC
    https://github.com/justinmeza/lolcode-spec

           THE MDN JAVASCRIPT DOCS
      https://developer.mozilla.org/en-US/

                   PHASER
             https://phaser.io/

================================================

And you're rushing headlong, you've got a new goal
And you're rushing headlong, out of control
And you think you're so strong
But there ain't no stopping
And there's nothin' you can do about it.

		-- Queen.

================================================
TLDR

HAI

BTW ==================UTIL======================

	HOW DUZ I UNDER YR Y X?

		X SMALLR THAN Y

	IF U SAY SO

	HOW DUZ I ABOVE YR Y X?

		NOT UNDER Y X

	IF U SAY SO

BTW ============================================

BTW ============="BOOTSTRAPPING"================

	GLOBAL ITZ globalThis

	BTW IT global
	I HAS A G_IT
	I HAS A G_CTX

    HOW DUZ I GET YR THING?
        GLOBAL!THING
    IF U SAY SO

	BTW Objetos uteis
	I HAS A REFLECT ITZ GET "Reflect"
	I HAS A PHASER ITZ GET "Phaser"

	BTW objeto manipulado atualmente
	HOW DUZ I ON YR THING
		G_IT  ITZ THING
		G_CTX ITZ THING
	IF U SAY SO

	HOW DUZ I PROP YR K?
		G_IT!K
		G_IT ITZ IT
	IF U SAY SO

	HOW DUZ I HOP YR K?
		G_IT!K
		G_IT  ITZ IT
		G_CTX ITZ IT
	IF U SAY SO

	HOW DUZ I SET YR K V?
		G_IT!K ITZ V
	IF U SAY SO

	HOW DUZ I SETAPPLY?
		ON REFLECT
			PROP "apply"

		APPLY ITS IT
	IF U SAY SO

    HOW DUZ I APPLY YR F T ARGS?
    IF U SAY SO

	SETAPPLY

    HOW DUZ I CALL YR F ARGS?
        APPLY F G_CTX ARGS
    IF U SAY SO

    HOW DUZ I INVOKE YR F?
        APPLY F G_CTX GOT undefined
    IF U SAY SO

	HOW DUZ I NEW YR CLASS ARGS?
		ON REFLECT
			PROP "construct"

		CALL IT GOT CLASS ARGS
	IF U SAY SO

	ON REFLECT
		PROP "get"
	I HAS A GETTER ITZ IT

BTW ============================================

BTW ================OBJETOS=====================

	HOW DUZ I CREATE?
		GET "Object"
		OBJ ITS INVOKE IT
	IF U SAY SO

	HOW DUZ I FIELD YR K V?
		OBJ!K ITZ V
	IF U SAY SO

BTW ============================================

BTW ================SETUP=======================

HOW DUZ I BUILD?

	BTW Morte aos objetos aninhados.

	I HAS A GRAVITY
		CREATE
			FIELD "y"       500
	GRAVITY ITZ OBJ

	I HAS A ARCADE
		CREATE
			FIELD "debug"   FAIL
			FIELD "gravity" GRAVITY
	ARCADE ITZ OBJ

	I HAS A PHYS
		CREATE
			FIELD "default" "arcade"
			FIELD "arcade"  ARCADE
	PHYS ITZ OBJ

	I HAS A SCENE
		CREATE
			FIELD "preload" PRELOAD
			FIELD "create"  CREATEGAME
			FIELD "update"  UPDATE
	SCENE ITZ OBJ

	ON PHASER
		PROP "AUTO"

	I HAS A CONFIG
		CREATE
			FIELD "type"    G_IT
			FIELD "width"   800
			FIELD "height"  600

			FIELD "physics" PHYS
			FIELD "scene"   GOT SCENE
	OBJ

IF U SAY SO

I HAS A PLAYER
I HAS A CURSORS
I HAS A PLATFORM

HOW DUZ I SETUP

	I HAS A CONFIG ITZ BUILD

	ON PHASER
		PROP "Game"

	I HAS A GAME ITZ NEW IT GOT CONFIG

IF U SAY SO

HOW DUZ I PRELOAD?
	
	BTW Pre-carrega os sprites e as imagens


	I HAS A LD
	ON this
		HOP  "load"
		PROP "image"

	LD ITZ IT

	CALL LD GOT "sky"    "https://i.imgur.com/Q2xS5Dn.png"
	CALL LD GOT "lambda" "https://i.imgur.com/lsQbakJ.png"

IF U SAY SO

BTW ===============================
OBTW
		"ESCOPO" da funcao CREATE_GAME
TLDR

HOW DUZ I DRAW_PLATFORM YR SCENE X Y W H?

	I HAS A OFFSET_W ITZ QUOSHUNT OF W 2
	I HAS A OFFSET_H ITZ QUOSHUNT OF H 2

	X ITZ SUM OF X OFFSET_W
	Y ITZ SUM OF Y OFFSET_H

	ON SCENE
		PROP "physics"
		HOP  "add"
		PROP "staticImage"
		CALL IT GOT X Y "platform"

IF U SAY SO

HOW DUZ I CREATEGAME?

	BTW Criando os objetos do jogo

	ON this
		HOP  "add"
		PROP "image"

	CALL IT GOT 400 300 "sky"

	ON this
		PROP "physics"
		HOP  "add"
		PROP "staticGroup"

	PLATFORM ITZ INVOKE IT

	BTW 003300
	I HAS A COLOR ITZ 13056

	ON this
		HOP  "add"
		PROP "graphics"

	I HAS A G ITZ INVOKE IT

	BTW ========Platform texture==========
		ON G
			PROP "fillStyle"
			CALL IT GOT COLOR 1

		ON G
			PROP "fillRect"
			CALL IT GOT 0 0 128 5

		ON G
			PROP "generateTexture"
			CALL IT GOT "platform" 128 5

		ON G
			PROP "destroy"
			INVOKE IT
	BTW ==================================

	P1 ITZ DRAW_PLATFORM this 55 10 128 5
	P2 ITZ DRAW_PLATFORM this  0  0 128 5

	ON PLATFORM
		PROP "add"
	I HAS A P ITZ IT

	CALL P GOT P1
	CALL P GOT P2

	ON this
		PROP "physics"
		HOP  "add"
		PROP "image"
		PLAYER ITZ\
			CALL IT GOT 100 450 "lambda"

	ON PLAYER
		PROP "setBounce"
		CALL IT GOT 0.2

	ON PLAYER
		PROP "setCollideWorldBounds"
		CALL IT GOT WIN

	ON this
		PROP "input"
		HOP  "keyboard"
		PROP "createCursorKeys"

	CURSORS ITZ INVOKE IT

	ON this
		PROP "physics"
		HOP  "add"
		PROP "collider"

	I HAS A C ITZ IT

	CALL C GOT PLAYER PLATFORM

IF U SAY SO

HOW DUZ I UPDATE

	I HAS A PDX
	I HAS A PDY

	ON PLAYER
		PROP "setVelocityX"
		PDX ITZ IT

	ON PLAYER
		PROP "setVelocityY"
		PDY ITZ IT

	I HAS A LEFT
	I HAS A RIGHT

	I HAS A UP

	ON CURSORS
		PROP "left"
		PROP "isDown"
		LEFT ITZ IT

	ON CURSORS
		PROP "right"
		PROP "isDown"
		RIGHT ITZ IT

	ON CURSORS
		PROP "up"
		PROP "isDown"
		UP ITZ IT

	ON PLAYER

		LEFT, O RLY?
		YA RLY
			CALL PDX GOT -160
		MEBBE RIGHT
			CALL PDX GOT  160
		NO WAI
			CALL PDX GOT    0
		OIC

		PROP "body"
		PROP "touching"
		PROP "down"

		BOTH OF IT AN UP, O RLY?
		YA RLY
			CALL PDY GOT -350
		OIC

IF U SAY SO

BTW ===============================

SETUP

BTW ============================================

KTHXBYE

