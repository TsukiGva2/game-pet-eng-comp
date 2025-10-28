





function UNDER(Y,X){
var IT = undefined;


IT = X<Y;

return (IT == undefined) ? null : IT;}

function ABOVE(Y,X){
var IT = undefined;


IT =!(UNDER(Y,X));

return (IT == undefined) ? null : IT;}





GLOBAL=globalThis;


var G_IT = null;
var G_CTX = null;

function GET(THING){
var IT = undefined;

IT = GLOBAL[THING];
return (IT == undefined) ? null : IT;}


var REFLECT = null;
REFLECT=GET("Reflect");
var PHASER = null;
PHASER=GET("Phaser");


function ON(THING){
var IT = undefined;

G_IT=THING;
G_CTX=THING;
return (IT == undefined) ? null : IT;}

function PROP(K){
var IT = undefined;

IT = G_IT[K];
G_IT=IT;
return (IT == undefined) ? null : IT;}

function HOP(K){
var IT = undefined;

IT = G_IT[K];
G_IT=IT;
G_CTX=IT;
return (IT == undefined) ? null : IT;}

function SET(K,V){
var IT = undefined;

G_IT[K]=V;
return (IT == undefined) ? null : IT;}

function SETAPPLY(){
var IT = undefined;

IT = ON(REFLECT);
IT = PROP("apply");

APPLY=IT;
return (IT == undefined) ? null : IT;}

function APPLY(F,T,ARGS){
var IT = undefined;

return (IT == undefined) ? null : IT;}

IT = SETAPPLY();

function CALL(F,ARGS){
var IT = undefined;

IT = APPLY(F,G_CTX,ARGS);
return (IT == undefined) ? null : IT;}

function INVOKE(F){
var IT = undefined;

IT = APPLY(F,G_CTX,[undefined]);
return (IT == undefined) ? null : IT;}

function NEW(CLASS,ARGS){
var IT = undefined;

IT = ON(REFLECT);
IT = PROP("construct");

IT = CALL(IT,[CLASS,ARGS]);
return (IT == undefined) ? null : IT;}

IT = ON(REFLECT);
IT = PROP("get");
var GETTER = null;
GETTER=IT;





function CREATE(){
var IT = undefined;

IT = GET("Object");
OBJ=INVOKE(IT);
return (IT == undefined) ? null : IT;}

function FIELD(K,V){
var IT = undefined;

OBJ[K]=V;
return (IT == undefined) ? null : IT;}

function FRAME(K,F){
var IT = undefined;

IT = GET("Object");
var O = null;
O=INVOKE(IT);
var KEY = null;
KEY="key";
O[KEY]=K;
IT = O;
return (IT == undefined) ? null : IT;}





function BUILD(){
var IT = undefined;




var GRAVITY = null;
IT = CREATE();
IT = FIELD("y",500);
GRAVITY=OBJ;

var ARCADE = null;
IT = CREATE();
IT = FIELD("debug",true);
IT = FIELD("gravity",GRAVITY);
ARCADE=OBJ;

var PHYS = null;
IT = CREATE();
IT = FIELD("default","arcade");
IT = FIELD("arcade",ARCADE);
PHYS=OBJ;

var SCENE = null;
IT = CREATE();
IT = FIELD("preload",PRELOAD);
IT = FIELD("create",CREATEGAME);
IT = FIELD("update",UPDATE);
SCENE=OBJ;

IT = ON(PHASER);
IT = PROP("AUTO");

var CONFIG = null;
IT = CREATE();
IT = FIELD("type",G_IT);
IT = FIELD("width",800);
IT = FIELD("height",600);

IT = FIELD("physics",PHYS);
IT = FIELD("scene",[SCENE]);
IT = OBJ;

return (IT == undefined) ? null : IT;}

var PLAYER = null;

var ANIMATION_PLAYER = null;

var CURSORS = null;
var PLATFORM = null;

var XSCALE = null;

var SCENE = null;

function FACELEFT(){
var IT = undefined;


IT = ON(PLAYER);
IT = SET("flipX",true);

return (IT == undefined) ? null : IT;}

function FACERIGHT(){
var IT = undefined;


IT = ON(PLAYER);
IT = SET("flipX",false);

return (IT == undefined) ? null : IT;}

function DOANIMATION(ANIM){
var IT = undefined;


IT = ON(PLAYER);
IT = PROP("anims");
IT = PROP("currentAnim");

IT =(IT!=undefined);

if (IT){
IT = PROP("key");
IT =(IT!=ANIM);

if (IT){
IT = ON(PLAYER);
IT = PROP("play");
IT = CALL(IT,[ANIM]);
}
}


return (IT == undefined) ? null : IT;}

function SETUP(){
var IT = undefined;


var CONFIG = null;
CONFIG=BUILD();

IT = ON(PHASER);
IT = PROP("Game");

var GAME = null;
GAME=NEW(IT,[CONFIG]);

return (IT == undefined) ? null : IT;}

function PRELOAD(){
var IT = undefined;





var LD = null;
IT = ON(this);
IT = HOP("load");
IT = PROP("image");

LD=IT;

IT = CALL(LD,["sky","assets/sky.jpeg"]);

IT = CALL(LD,["idle","assets/c/idle.png"]);
IT = CALL(LD,["walk1","assets/c/walk1.png"]);
IT = CALL(LD,["walk2","assets/c/walk2.png"]);
IT = CALL(LD,["walk3","assets/c/walk3.png"]);
IT = CALL(LD,["walk4","assets/c/walk4.png"]);
IT = CALL(LD,["walk5","assets/c/walk5.png"]);

return (IT == undefined) ? null : IT;}




function DRAW_PLATFORM(SCENE,X,Y,W,H){
var IT = undefined;


var OFFSET_W = null;
OFFSET_W=(W/2);
var OFFSET_H = null;
OFFSET_H=(H/2);

X=(X+OFFSET_W);
Y=(Y+OFFSET_H);

IT = ON(SCENE);
IT = PROP("physics");
IT = HOP("add");
IT = PROP("staticImage");
IT = CALL(IT,[X,Y,"platform"]);

return (IT == undefined) ? null : IT;}

function CREATEGAME(){
var IT = undefined;




SCENE=this;

IT = ON(this);
IT = HOP("add");
IT = PROP("image");

IT = CALL(IT,[400,300,"sky"]);

IT = ON(this);
IT = PROP("physics");
IT = HOP("add");
IT = PROP("staticGroup");

PLATFORM=INVOKE(IT);


var COLOR = null;
COLOR=13056;

IT = ON(this);
IT = HOP("add");
IT = PROP("graphics");

var G = null;
G=INVOKE(IT);


IT = ON(G);
IT = PROP("fillStyle");
IT = CALL(IT,[COLOR,1]);

IT = ON(G);
IT = PROP("fillRect");
IT = CALL(IT,[0,0,800,50]);

IT = ON(G);
IT = PROP("generateTexture");
IT = CALL(IT,["platform",800,50]);

IT = ON(G);
IT = PROP("destroy");
IT = INVOKE(IT);


P1=DRAW_PLATFORM(this,0,480,800,50);

IT = ON(PLATFORM);
IT = PROP("add");
var P = null;
P=IT;

IT = CALL(P,[P1]);

IT = ON(this);
IT = PROP("physics");
IT = HOP("add");
IT = PROP("sprite");
PLAYER=CALL(IT,[100,0,"idle"]);

IT = ON(PLAYER);
IT = PROP("setBounce");
IT = CALL(IT,[0.2]);

IT = ON(PLAYER);
IT = PROP("setScale");
IT = CALL(IT,[0.08]);

IT = ON(PLAYER);
IT = PROP("setCollideWorldBounds");
IT = CALL(IT,[true]);

IT = ON(this);
IT = PROP("input");
IT = HOP("keyboard");
IT = PROP("createCursorKeys");

CURSORS=INVOKE(IT);

IT = ON(this);
IT = PROP("physics");
IT = HOP("add");
IT = PROP("collider");

var C = null;
C=IT;

IT = CALL(C,[PLAYER,PLATFORM]);

var FRAMES = null;
FRAMES=[FRAME("walk1",0),FRAME("walk2",1),FRAME("walk3",2),FRAME("walk4",3),FRAME("walk5",4)];

var WALK = null;
IT = CREATE();
IT = FIELD("key","walk");
IT = FIELD("frames",FRAMES);
IT = FIELD("frameRate",8);
IT = FIELD("repeat",-1);
WALK=OBJ;

var IDLE = null;
IT = CREATE();
IT = FIELD("key","idle");
IT = FIELD("frames",[FRAME("idle",0)]);
IT = FIELD("frameRate",0);
IT = FIELD("repeat",1);
IDLE=OBJ;

IT = ON(this);
IT = HOP("anims");
IT = PROP("create");
IT = CALL(IT,[WALK]);

IT = ON(this);
IT = HOP("anims");
IT = PROP("create");
IT = CALL(IT,[IDLE]);

IT = ON(PLAYER);
IT = PROP("play");
IT = CALL(IT,["idle"]);

IT = ON(PLAYER);
IT = PROP("scaleX");
XSCALE=IT;

return (IT == undefined) ? null : IT;}

function UPDATE(){
var IT = undefined;


var PDX = null;
var PDY = null;

IT = ON(PLAYER);
IT = PROP("setVelocityX");
PDX=IT;

IT = ON(PLAYER);
IT = PROP("setVelocityY");
PDY=IT;

var LEFT = null;
var RIGHT = null;

var UP = null;

IT = ON(CURSORS);
IT = PROP("left");
IT = PROP("isDown");
LEFT=IT;

IT = ON(CURSORS);
IT = PROP("right");
IT = PROP("isDown");
RIGHT=IT;

IT = ON(CURSORS);
IT = PROP("up");
IT = PROP("isDown");
UP=IT;

IT = ON(PLAYER);
IT = PROP("play");
var ANIMATE = null;
ANIMATE=IT;

IT = LEFT;

if (IT){
IT = CALL(PDX,[-160]);
IT = DOANIMATION("walk");
IT = FACELEFT();
} else if(RIGHT){
IT = CALL(PDX,[160]);
IT = DOANIMATION("walk");
IT = FACERIGHT();
} else {
IT = CALL(PDX,[0]);
IT = DOANIMATION("idle");
}

IT = ON(PLAYER);
IT = PROP("body");
IT = PROP("touching");
IT = PROP("down");

IT =(IT&&UP);

if (IT){
IT = CALL(PDY,[-350]);
}

return (IT == undefined) ? null : IT;}



IT = SETUP();






