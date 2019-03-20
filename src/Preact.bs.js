// Generated by BUCKLESCRIPT VERSION 4.0.18, PLEASE EDIT WITH CARE

import * as Preact_Core from "./Preact_Core.bs.js";
import * as Preact_Html from "./Preact_Html.bs.js";

var Event = 0;

var Svg = 0;

var Internal = Preact_Core.Internal;

var _0 = Preact_Core._0;

var _1 = Preact_Core._1;

var _2 = Preact_Core._2;

var _3 = Preact_Core._3;

var _4 = Preact_Core._4;

var _5 = Preact_Core._5;

var _6 = Preact_Core._6;

var _7 = Preact_Core._7;

var Context = Preact_Core.Context;

var Ref = Preact_Core.Ref;

var useState = Preact_Core.useState;

var property = Preact_Core.property;

var on = Preact_Core.on;

var style = Preact_Core.style;

var class$prime = Preact_Core.class$prime;

var data = Preact_Core.data;

var aria = Preact_Core.aria;

var element = Preact_Core.element;

var fragment = Preact_Core.fragment;

var component = Preact_Core.component;

var a = Preact_Html.a;

var abbr = Preact_Html.abbr;

var address = Preact_Html.address;

var area = Preact_Html.area;

var article = Preact_Html.article;

var aside = Preact_Html.aside;

var audio = Preact_Html.audio;

var b = Preact_Html.b;

var base = Preact_Html.base;

var bdi = Preact_Html.bdi;

var bdo = Preact_Html.bdo;

var blockquote = Preact_Html.blockquote;

var body = Preact_Html.body;

var br = Preact_Html.br;

var button = Preact_Html.button;

var canvas = Preact_Html.canvas;

var caption = Preact_Html.caption;

var cite = Preact_Html.cite;

var code = Preact_Html.code;

var col = Preact_Html.col;

var colgroup = Preact_Html.colgroup;

var data$prime = Preact_Html.data$prime;

var datalist = Preact_Html.datalist;

var dd = Preact_Html.dd;

var del = Preact_Html.del;

var details = Preact_Html.details;

var dfn = Preact_Html.dfn;

var dialog = Preact_Html.dialog;

var div = Preact_Html.div;

var dl = Preact_Html.dl;

var dt = Preact_Html.dt;

var em = Preact_Html.em;

var embed = Preact_Html.embed;

var fieldset = Preact_Html.fieldset;

var figcaption = Preact_Html.figcaption;

var figure = Preact_Html.figure;

var footer = Preact_Html.footer;

var form = Preact_Html.form;

var h1 = Preact_Html.h1;

var h2 = Preact_Html.h2;

var h3 = Preact_Html.h3;

var h4 = Preact_Html.h4;

var h5 = Preact_Html.h5;

var h6 = Preact_Html.h6;

var head = Preact_Html.head;

var header = Preact_Html.header;

var hgroup = Preact_Html.hgroup;

var hr = Preact_Html.hr;

var html = Preact_Html.html;

var i = Preact_Html.i;

var iframe = Preact_Html.iframe;

var img = Preact_Html.img;

var input = Preact_Html.input;

var ins = Preact_Html.ins;

var kbd = Preact_Html.kbd;

var label = Preact_Html.label;

var legend = Preact_Html.legend;

var li = Preact_Html.li;

var link = Preact_Html.link;

var main = Preact_Html.main;

var map = Preact_Html.map;

var mark = Preact_Html.mark;

var menu = Preact_Html.menu;

var meta = Preact_Html.meta;

var meter = Preact_Html.meter;

var nav = Preact_Html.nav;

var noscript = Preact_Html.noscript;

var object$prime = Preact_Html.object$prime;

var ol = Preact_Html.ol;

var optgroup = Preact_Html.optgroup;

var option = Preact_Html.option;

var output = Preact_Html.output;

var p = Preact_Html.p;

var param = Preact_Html.param;

var picture = Preact_Html.picture;

var pre = Preact_Html.pre;

var progress = Preact_Html.progress;

var q = Preact_Html.q;

var rp = Preact_Html.rp;

var rt = Preact_Html.rt;

var ruby = Preact_Html.ruby;

var s = Preact_Html.s;

var samp = Preact_Html.samp;

var script = Preact_Html.script;

var section = Preact_Html.section;

var select = Preact_Html.select;

var slot = Preact_Html.slot;

var small = Preact_Html.small;

var source = Preact_Html.source;

var span = Preact_Html.span;

var strong = Preact_Html.strong;

var style$prime = Preact_Html.style$prime;

var sub = Preact_Html.sub;

var summary = Preact_Html.summary;

var sup = Preact_Html.sup;

var table = Preact_Html.table;

var tbody = Preact_Html.tbody;

var td = Preact_Html.td;

var template = Preact_Html.template;

var textarea = Preact_Html.textarea;

var tfoot = Preact_Html.tfoot;

var th = Preact_Html.th;

var thead = Preact_Html.thead;

var time = Preact_Html.time;

var title = Preact_Html.title;

var tr = Preact_Html.tr;

var track = Preact_Html.track;

var u = Preact_Html.u;

var ul = Preact_Html.ul;

var $$var = Preact_Html.$$var;

var video = Preact_Html.video;

var wbr = Preact_Html.wbr;

var ref = Preact_Html.ref;

var abbr$prime = Preact_Html.abbr$prime;

var accept = Preact_Html.accept;

var acceptCharset = Preact_Html.acceptCharset;

var accesskey = Preact_Html.accesskey;

var action = Preact_Html.action;

var allow = Preact_Html.allow;

var allowfullscreen = Preact_Html.allowfullscreen;

var allowpaymentrequest = Preact_Html.allowpaymentrequest;

var alt = Preact_Html.alt;

var as$prime = Preact_Html.as$prime;

var async = Preact_Html.async;

var autocapitalize = Preact_Html.autocapitalize;

var autocomplete = Preact_Html.autocomplete;

var autofocus = Preact_Html.autofocus;

var autoplay = Preact_Html.autoplay;

var charset = Preact_Html.charset;

var checked = Preact_Html.checked;

var cite$prime = Preact_Html.cite$prime;

var color = Preact_Html.color;

var cols = Preact_Html.cols;

var colspan = Preact_Html.colspan;

var content = Preact_Html.content;

var contenteditable = Preact_Html.contenteditable;

var controls = Preact_Html.controls;

var coords = Preact_Html.coords;

var crossorigin = Preact_Html.crossorigin;

var data$prime$prime = Preact_Html.data$prime$prime;

var datetime = Preact_Html.datetime;

var decoding = Preact_Html.decoding;

var $$default = Preact_Html.$$default;

var defer = Preact_Html.defer;

var dir = Preact_Html.dir;

var dirname = Preact_Html.dirname;

var disabled = Preact_Html.disabled;

var download = Preact_Html.download;

var draggable = Preact_Html.draggable;

var enctype = Preact_Html.enctype;

var enterkeyhint = Preact_Html.enterkeyhint;

var for$prime = Preact_Html.for$prime;

var form$prime = Preact_Html.form$prime;

var formaction = Preact_Html.formaction;

var formenctype = Preact_Html.formenctype;

var formmethod = Preact_Html.formmethod;

var formnovalidate = Preact_Html.formnovalidate;

var formtarget = Preact_Html.formtarget;

var headers = Preact_Html.headers;

var height = Preact_Html.height;

var hidden = Preact_Html.hidden;

var high = Preact_Html.high;

var href = Preact_Html.href;

var hreflang = Preact_Html.hreflang;

var httpEquiv = Preact_Html.httpEquiv;

var id = Preact_Html.id;

var inputmode = Preact_Html.inputmode;

var integrity = Preact_Html.integrity;

var is = Preact_Html.is;

var ismap = Preact_Html.ismap;

var itemid = Preact_Html.itemid;

var itemprop = Preact_Html.itemprop;

var itemref = Preact_Html.itemref;

var itemscope = Preact_Html.itemscope;

var itemtype = Preact_Html.itemtype;

var kind = Preact_Html.kind;

var label$prime = Preact_Html.label$prime;

var lang = Preact_Html.lang;

var list = Preact_Html.list;

var loop = Preact_Html.loop;

var low = Preact_Html.low;

var manifest = Preact_Html.manifest;

var max = Preact_Html.max;

var maxlength = Preact_Html.maxlength;

var media = Preact_Html.media;

var method$prime = Preact_Html.method$prime;

var min = Preact_Html.min;

var minlength = Preact_Html.minlength;

var multiple = Preact_Html.multiple;

var muted = Preact_Html.muted;

var name = Preact_Html.name;

var nomodule = Preact_Html.nomodule;

var nonce = Preact_Html.nonce;

var novalidate = Preact_Html.novalidate;

var open$prime = Preact_Html.open$prime;

var optimum = Preact_Html.optimum;

var pattern = Preact_Html.pattern;

var ping = Preact_Html.ping;

var placeholder = Preact_Html.placeholder;

var playsinline = Preact_Html.playsinline;

var poster = Preact_Html.poster;

var preload = Preact_Html.preload;

var readonly = Preact_Html.readonly;

var referrerpolicy = Preact_Html.referrerpolicy;

var rel = Preact_Html.rel;

var required = Preact_Html.required;

var reversed = Preact_Html.reversed;

var rows = Preact_Html.rows;

var rowspan = Preact_Html.rowspan;

var sandbox = Preact_Html.sandbox;

var scope = Preact_Html.scope;

var selected = Preact_Html.selected;

var shape = Preact_Html.shape;

var size = Preact_Html.size;

var sizes = Preact_Html.sizes;

var slot$prime = Preact_Html.slot$prime;

var span$prime = Preact_Html.span$prime;

var spellcheck = Preact_Html.spellcheck;

var src = Preact_Html.src;

var srcdoc = Preact_Html.srcdoc;

var srclang = Preact_Html.srclang;

var srcset = Preact_Html.srcset;

var start = Preact_Html.start;

var step = Preact_Html.step;

var tabindex = Preact_Html.tabindex;

var target = Preact_Html.target;

var title$prime = Preact_Html.title$prime;

var translate = Preact_Html.translate;

var type$prime = Preact_Html.type$prime;

var typemustmatch = Preact_Html.typemustmatch;

var usemap = Preact_Html.usemap;

var value = Preact_Html.value;

var width = Preact_Html.width;

var wrap = Preact_Html.wrap;

var onAnimationEnd = Preact_Html.onAnimationEnd;

var onAnimationIteration = Preact_Html.onAnimationIteration;

var onAnimationStart = Preact_Html.onAnimationStart;

var onCopy = Preact_Html.onCopy;

var onCut = Preact_Html.onCut;

var onPaste = Preact_Html.onPaste;

var onCompositionEnd = Preact_Html.onCompositionEnd;

var onCompositionStart = Preact_Html.onCompositionStart;

var onCompositionUpdate = Preact_Html.onCompositionUpdate;

var onDrag = Preact_Html.onDrag;

var onDragEnd = Preact_Html.onDragEnd;

var onDragEnter = Preact_Html.onDragEnter;

var onDragExit = Preact_Html.onDragExit;

var onDragLeave = Preact_Html.onDragLeave;

var onDragOver = Preact_Html.onDragOver;

var onDragStart = Preact_Html.onDragStart;

var onDrop = Preact_Html.onDrop;

var onAbort = Preact_Html.onAbort;

var onCanPlay = Preact_Html.onCanPlay;

var onCanPlayThrough = Preact_Html.onCanPlayThrough;

var onChange = Preact_Html.onChange;

var onDurationChange = Preact_Html.onDurationChange;

var onEmptied = Preact_Html.onEmptied;

var onEncrypted = Preact_Html.onEncrypted;

var onEnded = Preact_Html.onEnded;

var onError = Preact_Html.onError;

var onInput = Preact_Html.onInput;

var onInvalid = Preact_Html.onInvalid;

var onLoad = Preact_Html.onLoad;

var onLoadStart = Preact_Html.onLoadStart;

var onLoadedData = Preact_Html.onLoadedData;

var onLoadedMetadata = Preact_Html.onLoadedMetadata;

var onPause = Preact_Html.onPause;

var onPlay = Preact_Html.onPlay;

var onPlaying = Preact_Html.onPlaying;

var onProgress = Preact_Html.onProgress;

var onRateChange = Preact_Html.onRateChange;

var onReset = Preact_Html.onReset;

var onSearch = Preact_Html.onSearch;

var onSeeked = Preact_Html.onSeeked;

var onSeeking = Preact_Html.onSeeking;

var onSelect = Preact_Html.onSelect;

var onStalled = Preact_Html.onStalled;

var onSubmit = Preact_Html.onSubmit;

var onSuspend = Preact_Html.onSuspend;

var onTimeUpdate = Preact_Html.onTimeUpdate;

var onVolumeChange = Preact_Html.onVolumeChange;

var onWaiting = Preact_Html.onWaiting;

var onBlur = Preact_Html.onBlur;

var onFocus = Preact_Html.onFocus;

var onKeyDown = Preact_Html.onKeyDown;

var onKeyPress = Preact_Html.onKeyPress;

var onKeyUp = Preact_Html.onKeyUp;

var onClick = Preact_Html.onClick;

var onContextMenu = Preact_Html.onContextMenu;

var onDblClick = Preact_Html.onDblClick;

var onMouseDown = Preact_Html.onMouseDown;

var onMouseEnter = Preact_Html.onMouseEnter;

var onMouseLeave = Preact_Html.onMouseLeave;

var onMouseMove = Preact_Html.onMouseMove;

var onMouseOut = Preact_Html.onMouseOut;

var onMouseOver = Preact_Html.onMouseOver;

var onMouseUp = Preact_Html.onMouseUp;

var onPointerCancel = Preact_Html.onPointerCancel;

var onPointerDown = Preact_Html.onPointerDown;

var onPointerEnter = Preact_Html.onPointerEnter;

var onPointerLeave = Preact_Html.onPointerLeave;

var onPointerMove = Preact_Html.onPointerMove;

var onPointerOut = Preact_Html.onPointerOut;

var onPointerOver = Preact_Html.onPointerOver;

var onPointerUp = Preact_Html.onPointerUp;

var onTouchCancel = Preact_Html.onTouchCancel;

var onTouchEnd = Preact_Html.onTouchEnd;

var onTouchMove = Preact_Html.onTouchMove;

var onTouchStart = Preact_Html.onTouchStart;

var onTransitionEnd = Preact_Html.onTransitionEnd;

var onScroll = Preact_Html.onScroll;

var onWheel = Preact_Html.onWheel;

export {
  Event ,
  Svg ,
  Internal ,
  _0 ,
  _1 ,
  _2 ,
  _3 ,
  _4 ,
  _5 ,
  _6 ,
  _7 ,
  Context ,
  Ref ,
  useState ,
  property ,
  on ,
  style ,
  class$prime ,
  data ,
  aria ,
  element ,
  fragment ,
  component ,
  a ,
  abbr ,
  address ,
  area ,
  article ,
  aside ,
  audio ,
  b ,
  base ,
  bdi ,
  bdo ,
  blockquote ,
  body ,
  br ,
  button ,
  canvas ,
  caption ,
  cite ,
  code ,
  col ,
  colgroup ,
  data$prime ,
  datalist ,
  dd ,
  del ,
  details ,
  dfn ,
  dialog ,
  div ,
  dl ,
  dt ,
  em ,
  embed ,
  fieldset ,
  figcaption ,
  figure ,
  footer ,
  form ,
  h1 ,
  h2 ,
  h3 ,
  h4 ,
  h5 ,
  h6 ,
  head ,
  header ,
  hgroup ,
  hr ,
  html ,
  i ,
  iframe ,
  img ,
  input ,
  ins ,
  kbd ,
  label ,
  legend ,
  li ,
  link ,
  main ,
  map ,
  mark ,
  menu ,
  meta ,
  meter ,
  nav ,
  noscript ,
  object$prime ,
  ol ,
  optgroup ,
  option ,
  output ,
  p ,
  param ,
  picture ,
  pre ,
  progress ,
  q ,
  rp ,
  rt ,
  ruby ,
  s ,
  samp ,
  script ,
  section ,
  select ,
  slot ,
  small ,
  source ,
  span ,
  strong ,
  style$prime ,
  sub ,
  summary ,
  sup ,
  table ,
  tbody ,
  td ,
  template ,
  textarea ,
  tfoot ,
  th ,
  thead ,
  time ,
  title ,
  tr ,
  track ,
  u ,
  ul ,
  $$var ,
  video ,
  wbr ,
  ref ,
  abbr$prime ,
  accept ,
  acceptCharset ,
  accesskey ,
  action ,
  allow ,
  allowfullscreen ,
  allowpaymentrequest ,
  alt ,
  as$prime ,
  async ,
  autocapitalize ,
  autocomplete ,
  autofocus ,
  autoplay ,
  charset ,
  checked ,
  cite$prime ,
  color ,
  cols ,
  colspan ,
  content ,
  contenteditable ,
  controls ,
  coords ,
  crossorigin ,
  data$prime$prime ,
  datetime ,
  decoding ,
  $$default ,
  $$default as default,
  defer ,
  dir ,
  dirname ,
  disabled ,
  download ,
  draggable ,
  enctype ,
  enterkeyhint ,
  for$prime ,
  form$prime ,
  formaction ,
  formenctype ,
  formmethod ,
  formnovalidate ,
  formtarget ,
  headers ,
  height ,
  hidden ,
  high ,
  href ,
  hreflang ,
  httpEquiv ,
  id ,
  inputmode ,
  integrity ,
  is ,
  ismap ,
  itemid ,
  itemprop ,
  itemref ,
  itemscope ,
  itemtype ,
  kind ,
  label$prime ,
  lang ,
  list ,
  loop ,
  low ,
  manifest ,
  max ,
  maxlength ,
  media ,
  method$prime ,
  min ,
  minlength ,
  multiple ,
  muted ,
  name ,
  nomodule ,
  nonce ,
  novalidate ,
  open$prime ,
  optimum ,
  pattern ,
  ping ,
  placeholder ,
  playsinline ,
  poster ,
  preload ,
  readonly ,
  referrerpolicy ,
  rel ,
  required ,
  reversed ,
  rows ,
  rowspan ,
  sandbox ,
  scope ,
  selected ,
  shape ,
  size ,
  sizes ,
  slot$prime ,
  span$prime ,
  spellcheck ,
  src ,
  srcdoc ,
  srclang ,
  srcset ,
  start ,
  step ,
  tabindex ,
  target ,
  title$prime ,
  translate ,
  type$prime ,
  typemustmatch ,
  usemap ,
  value ,
  width ,
  wrap ,
  onAnimationEnd ,
  onAnimationIteration ,
  onAnimationStart ,
  onCopy ,
  onCut ,
  onPaste ,
  onCompositionEnd ,
  onCompositionStart ,
  onCompositionUpdate ,
  onDrag ,
  onDragEnd ,
  onDragEnter ,
  onDragExit ,
  onDragLeave ,
  onDragOver ,
  onDragStart ,
  onDrop ,
  onAbort ,
  onCanPlay ,
  onCanPlayThrough ,
  onChange ,
  onDurationChange ,
  onEmptied ,
  onEncrypted ,
  onEnded ,
  onError ,
  onInput ,
  onInvalid ,
  onLoad ,
  onLoadStart ,
  onLoadedData ,
  onLoadedMetadata ,
  onPause ,
  onPlay ,
  onPlaying ,
  onProgress ,
  onRateChange ,
  onReset ,
  onSearch ,
  onSeeked ,
  onSeeking ,
  onSelect ,
  onStalled ,
  onSubmit ,
  onSuspend ,
  onTimeUpdate ,
  onVolumeChange ,
  onWaiting ,
  onBlur ,
  onFocus ,
  onKeyDown ,
  onKeyPress ,
  onKeyUp ,
  onClick ,
  onContextMenu ,
  onDblClick ,
  onMouseDown ,
  onMouseEnter ,
  onMouseLeave ,
  onMouseMove ,
  onMouseOut ,
  onMouseOver ,
  onMouseUp ,
  onPointerCancel ,
  onPointerDown ,
  onPointerEnter ,
  onPointerLeave ,
  onPointerMove ,
  onPointerOut ,
  onPointerOver ,
  onPointerUp ,
  onTouchCancel ,
  onTouchEnd ,
  onTouchMove ,
  onTouchStart ,
  onTransitionEnd ,
  onScroll ,
  onWheel ,
  
}
/* Preact_Core Not a pure module */
