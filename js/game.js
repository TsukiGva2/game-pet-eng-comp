





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





function BUILD(){
var IT = undefined;




var GRAVITY = null;
IT = CREATE();
IT = FIELD("y",500);
GRAVITY=OBJ;

var ARCADE = null;
IT = CREATE();
IT = FIELD("debug",false);
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
var CURSORS = null;
var PLATFORM = null;

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

IT = CALL(LD,["sky","https://i.imgur.com/Q2xS5Dn.png"]);
IT = CALL(LD,["lambda","https://i.imgur.com/lsQbakJ.png"]);

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
IT = CALL(IT,[0,0,128,5]);

IT = ON(G);
IT = PROP("generateTexture");
IT = CALL(IT,["platform",128,5]);

IT = ON(G);
IT = PROP("destroy");
IT = INVOKE(IT);


P1=DRAW_PLATFORM(this,55,10,128,5);
P2=DRAW_PLATFORM(this,0,0,128,5);

IT = ON(PLATFORM);
IT = PROP("add");
var P = null;
P=IT;

IT = CALL(P,[P1]);
IT = CALL(P,[P2]);

IT = ON(this);
IT = PROP("physics");
IT = HOP("add");
IT = PROP("image");
PLAYER=CALL(IT,[100,450,"lambda"]);

IT = ON(PLAYER);
IT = PROP("setBounce");
IT = CALL(IT,[0.2]);

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

IT = LEFT;

if (IT){
IT = CALL(PDX,[-160]);
} else if(RIGHT){
IT = CALL(PDX,[160]);
} else {
IT = CALL(PDX,[0]);
}

IT = PROP("body");
IT = PROP("touching");
IT = PROP("down");

IT =(IT&&UP);

if (IT){
IT = CALL(PDY,[-350]);
}

return (IT == undefined) ? null : IT;}



IT = SETUP();






