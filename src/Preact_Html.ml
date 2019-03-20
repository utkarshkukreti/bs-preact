let a = Preact_Core.element "a"

let abbr = Preact_Core.element "abbr"

let address = Preact_Core.element "address"

let area = Preact_Core.element "area"

let article = Preact_Core.element "article"

let aside = Preact_Core.element "aside"

let audio = Preact_Core.element "audio"

let b = Preact_Core.element "b"

let base = Preact_Core.element "base"

let bdi = Preact_Core.element "bdi"

let bdo = Preact_Core.element "bdo"

let blockquote = Preact_Core.element "blockquote"

let body = Preact_Core.element "body"

let br = Preact_Core.element "br"

let button = Preact_Core.element "button"

let canvas = Preact_Core.element "canvas"

let caption = Preact_Core.element "caption"

let cite = Preact_Core.element "cite"

let code = Preact_Core.element "code"

let col = Preact_Core.element "col"

let colgroup = Preact_Core.element "colgroup"

let data' = Preact_Core.element "data"

let datalist = Preact_Core.element "datalist"

let dd = Preact_Core.element "dd"

let del = Preact_Core.element "del"

let details = Preact_Core.element "details"

let dfn = Preact_Core.element "dfn"

let dialog = Preact_Core.element "dialog"

let div = Preact_Core.element "div"

let dl = Preact_Core.element "dl"

let dt = Preact_Core.element "dt"

let em = Preact_Core.element "em"

let embed = Preact_Core.element "embed"

let fieldset = Preact_Core.element "fieldset"

let figcaption = Preact_Core.element "figcaption"

let figure = Preact_Core.element "figure"

let footer = Preact_Core.element "footer"

let form = Preact_Core.element "form"

let h1 = Preact_Core.element "h1"

let h2 = Preact_Core.element "h2"

let h3 = Preact_Core.element "h3"

let h4 = Preact_Core.element "h4"

let h5 = Preact_Core.element "h5"

let h6 = Preact_Core.element "h6"

let head = Preact_Core.element "head"

let header = Preact_Core.element "header"

let hgroup = Preact_Core.element "hgroup"

let hr = Preact_Core.element "hr"

let html = Preact_Core.element "html"

let i = Preact_Core.element "i"

let iframe = Preact_Core.element "iframe"

let img = Preact_Core.element "img"

let input = Preact_Core.element "input"

let ins = Preact_Core.element "ins"

let kbd = Preact_Core.element "kbd"

let label = Preact_Core.element "label"

let legend = Preact_Core.element "legend"

let li = Preact_Core.element "li"

let link = Preact_Core.element "link"

let main = Preact_Core.element "main"

let map = Preact_Core.element "map"

let mark = Preact_Core.element "mark"

let menu = Preact_Core.element "menu"

let meta = Preact_Core.element "meta"

let meter = Preact_Core.element "meter"

let nav = Preact_Core.element "nav"

let noscript = Preact_Core.element "noscript"

let object' = Preact_Core.element "object"

let ol = Preact_Core.element "ol"

let optgroup = Preact_Core.element "optgroup"

let option = Preact_Core.element "option"

let output = Preact_Core.element "output"

let p = Preact_Core.element "p"

let param = Preact_Core.element "param"

let picture = Preact_Core.element "picture"

let pre = Preact_Core.element "pre"

let progress = Preact_Core.element "progress"

let q = Preact_Core.element "q"

let rp = Preact_Core.element "rp"

let rt = Preact_Core.element "rt"

let ruby = Preact_Core.element "ruby"

let s = Preact_Core.element "s"

let samp = Preact_Core.element "samp"

let script = Preact_Core.element "script"

let section = Preact_Core.element "section"

let select = Preact_Core.element "select"

let slot = Preact_Core.element "slot"

let small = Preact_Core.element "small"

let source = Preact_Core.element "source"

let span = Preact_Core.element "span"

let strong = Preact_Core.element "strong"

let style' = Preact_Core.element "style"

let sub = Preact_Core.element "sub"

let summary = Preact_Core.element "summary"

let sup = Preact_Core.element "sup"

let table = Preact_Core.element "table"

let tbody = Preact_Core.element "tbody"

let td = Preact_Core.element "td"

let template = Preact_Core.element "template"

let textarea = Preact_Core.element "textarea"

let tfoot = Preact_Core.element "tfoot"

let th = Preact_Core.element "th"

let thead = Preact_Core.element "thead"

let time = Preact_Core.element "time"

let title = Preact_Core.element "title"

let tr = Preact_Core.element "tr"

let track = Preact_Core.element "track"

let u = Preact_Core.element "u"

let ul = Preact_Core.element "ul"

let var = Preact_Core.element "var"

let video = Preact_Core.element "video"

let wbr = Preact_Core.element "wbr"

let ref (value : Dom.element option -> unit) =
  Preact_Core.property "ref" (fun (element : Dom.element Js.Nullable.t) ->
      value (Js.Nullable.toOption element))

let abbr' (value : string) = Preact_Core.property "abbr" value

let accept (value : string) = Preact_Core.property "accept" value

let acceptCharset (value : string) = Preact_Core.property "accept-charset" value

let accesskey (value : string) = Preact_Core.property "accesskey" value

let action (value : string) = Preact_Core.property "action" value

let allow (value : string) = Preact_Core.property "allow" value

let allowfullscreen (value : bool) = Preact_Core.property "allowfullscreen" value

let allowpaymentrequest (value : bool) = Preact_Core.property "allowpaymentrequest" value

let alt (value : string) = Preact_Core.property "alt" value

let as' (value : string) = Preact_Core.property "as" value

let async (value : bool) = Preact_Core.property "async" value

let autocapitalize (value : string) = Preact_Core.property "autocapitalize" value

let autocomplete (value : bool) = Preact_Core.property "autocomplete" value

let autofocus (value : bool) = Preact_Core.property "autofocus" value

let autoplay (value : bool) = Preact_Core.property "autoplay" value

let charset (value : string) = Preact_Core.property "charset" value

let checked (value : bool) = Preact_Core.property "checked" value

let cite' (value : string) = Preact_Core.property "cite" value

let color (value : string) = Preact_Core.property "color" value

let cols (value : int) = Preact_Core.property "cols" value

let colspan (value : int) = Preact_Core.property "colspan" value

let content (value : string) = Preact_Core.property "content" value

let contenteditable (value : bool) = Preact_Core.property "contenteditable" value

let controls (value : bool) = Preact_Core.property "controls" value

let coords (value : string) = Preact_Core.property "coords" value

let crossorigin (value : string) = Preact_Core.property "crossorigin" value

let data'' (value : string) = Preact_Core.property "data" value

let datetime (value : string) = Preact_Core.property "datetime" value

let decoding (value : string) = Preact_Core.property "decoding" value

let default (value : bool) = Preact_Core.property "default" value

let defer (value : bool) = Preact_Core.property "defer" value

let dir (value : string) = Preact_Core.property "dir" value

let dirname (value : string) = Preact_Core.property "dirname" value

let disabled (value : bool) = Preact_Core.property "disabled" value

let download (value : string) = Preact_Core.property "download" value

let draggable (value : bool) = Preact_Core.property "draggable" value

let enctype (value : string) = Preact_Core.property "enctype" value

let enterkeyhint (value : string) = Preact_Core.property "enterkeyhint" value

let for' (value : string) = Preact_Core.property "for" value

let form' (value : string) = Preact_Core.property "form" value

let formaction (value : string) = Preact_Core.property "formaction" value

let formenctype (value : string) = Preact_Core.property "formenctype" value

let formmethod (value : string) = Preact_Core.property "formmethod" value

let formnovalidate (value : bool) = Preact_Core.property "formnovalidate" value

let formtarget (value : string) = Preact_Core.property "formtarget" value

let headers (value : string) = Preact_Core.property "headers" value

let height (value : string) = Preact_Core.property "height" value

let hidden (value : bool) = Preact_Core.property "hidden" value

let high (value : float) = Preact_Core.property "high" value

let href (value : string) = Preact_Core.property "href" value

let hreflang (value : string) = Preact_Core.property "hreflang" value

let httpEquiv (value : string) = Preact_Core.property "http-equiv" value

let id (value : string) = Preact_Core.property "id" value

let inputmode (value : string) = Preact_Core.property "inputmode" value

let integrity (value : string) = Preact_Core.property "integrity" value

let is (value : string) = Preact_Core.property "is" value

let ismap (value : bool) = Preact_Core.property "ismap" value

let itemid (value : string) = Preact_Core.property "itemid" value

let itemprop (value : string) = Preact_Core.property "itemprop" value

let itemref (value : string) = Preact_Core.property "itemref" value

let itemscope (value : bool) = Preact_Core.property "itemscope" value

let itemtype (value : string) = Preact_Core.property "itemtype" value

let kind (value : string) = Preact_Core.property "kind" value

let label' (value : string) = Preact_Core.property "label" value

let lang (value : string) = Preact_Core.property "lang" value

let list (value : string) = Preact_Core.property "list" value

let loop (value : bool) = Preact_Core.property "loop" value

let low (value : float) = Preact_Core.property "low" value

let manifest (value : string) = Preact_Core.property "manifest" value

let max (value : float) = Preact_Core.property "max" value

let maxlength (value : string) = Preact_Core.property "maxlength" value

let media (value : string) = Preact_Core.property "media" value

let method' (value : string) = Preact_Core.property "method" value

let min (value : float) = Preact_Core.property "min" value

let minlength (value : int) = Preact_Core.property "minlength" value

let multiple (value : bool) = Preact_Core.property "multiple" value

let muted (value : bool) = Preact_Core.property "muted" value

let name (value : string) = Preact_Core.property "name" value

let nomodule (value : bool) = Preact_Core.property "nomodule" value

let nonce (value : string) = Preact_Core.property "nonce" value

let novalidate (value : bool) = Preact_Core.property "novalidate" value

let open' (value : bool) = Preact_Core.property "open" value

let optimum (value : float) = Preact_Core.property "optimum" value

let pattern (value : string) = Preact_Core.property "pattern" value

let ping (value : string) = Preact_Core.property "ping" value

let placeholder (value : string) = Preact_Core.property "placeholder" value

let playsinline (value : bool) = Preact_Core.property "playsinline" value

let poster (value : string) = Preact_Core.property "poster" value

let preload (value : string) = Preact_Core.property "preload" value

let readonly (value : bool) = Preact_Core.property "readonly" value

let referrerpolicy (value : string) = Preact_Core.property "referrerpolicy" value

let rel (value : string) = Preact_Core.property "rel" value

let required (value : bool) = Preact_Core.property "required" value

let reversed (value : bool) = Preact_Core.property "reversed" value

let rows (value : int) = Preact_Core.property "rows" value

let rowspan (value : int) = Preact_Core.property "rowspan" value

let sandbox (value : string) = Preact_Core.property "sandbox" value

let scope (value : string) = Preact_Core.property "scope" value

let selected (value : bool) = Preact_Core.property "selected" value

let shape (value : string) = Preact_Core.property "shape" value

let size (value : int) = Preact_Core.property "size" value

let sizes (value : string) = Preact_Core.property "sizes" value

let slot' (value : string) = Preact_Core.property "slot" value

let span' (value : int) = Preact_Core.property "span" value

let spellcheck (value : bool) = Preact_Core.property "spellcheck" value

let src (value : string) = Preact_Core.property "src" value

let srcdoc (value : string) = Preact_Core.property "srcdoc" value

let srclang (value : string) = Preact_Core.property "srclang" value

let srcset (value : string) = Preact_Core.property "srcset" value

let start (value : int) = Preact_Core.property "start" value

let step (value : float) = Preact_Core.property "step" value

let tabindex (value : int) = Preact_Core.property "tabindex" value

let target (value : string) = Preact_Core.property "target" value

let title' (value : string) = Preact_Core.property "title" value

let translate (value : bool) = Preact_Core.property "translate" value

let type' (value : string) = Preact_Core.property "type" value

let typemustmatch (value : bool) = Preact_Core.property "typemustmatch" value

let usemap (value : string) = Preact_Core.property "usemap" value

let value (value : string) = Preact_Core.property "value" value

let width (value : int) = Preact_Core.property "width" value

let wrap (value : string) = Preact_Core.property "wrap" value

let onAnimationEnd (handler : Preact_Event.Animation.t -> unit) =
  Preact_Core.on "animationend" (fun event -> handler (Obj.magic event))

let onAnimationIteration (handler : Preact_Event.Animation.t -> unit) =
  Preact_Core.on "animationiteration" (fun event -> handler (Obj.magic event))

let onAnimationStart (handler : Preact_Event.Animation.t -> unit) =
  Preact_Core.on "animationstart" (fun event -> handler (Obj.magic event))

let onCopy (handler : Preact_Event.Clipboard.t -> unit) =
  Preact_Core.on "copy" (fun event -> handler (Obj.magic event))

let onCut (handler : Preact_Event.Clipboard.t -> unit) =
  Preact_Core.on "cut" (fun event -> handler (Obj.magic event))

let onPaste (handler : Preact_Event.Clipboard.t -> unit) =
  Preact_Core.on "paste" (fun event -> handler (Obj.magic event))

let onCompositionEnd (handler : Preact_Event.Composition.t -> unit) =
  Preact_Core.on "compositionend" (fun event -> handler (Obj.magic event))

let onCompositionStart (handler : Preact_Event.Composition.t -> unit) =
  Preact_Core.on "compositionstart" (fun event -> handler (Obj.magic event))

let onCompositionUpdate (handler : Preact_Event.Composition.t -> unit) =
  Preact_Core.on "compositionupdate" (fun event -> handler (Obj.magic event))

let onDrag (handler : Preact_Event.Drag.t -> unit) =
  Preact_Core.on "drag" (fun event -> handler (Obj.magic event))

let onDragEnd (handler : Preact_Event.Drag.t -> unit) =
  Preact_Core.on "dragend" (fun event -> handler (Obj.magic event))

let onDragEnter (handler : Preact_Event.Drag.t -> unit) =
  Preact_Core.on "dragenter" (fun event -> handler (Obj.magic event))

let onDragExit (handler : Preact_Event.Drag.t -> unit) =
  Preact_Core.on "dragexit" (fun event -> handler (Obj.magic event))

let onDragLeave (handler : Preact_Event.Drag.t -> unit) =
  Preact_Core.on "dragleave" (fun event -> handler (Obj.magic event))

let onDragOver (handler : Preact_Event.Drag.t -> unit) =
  Preact_Core.on "dragover" (fun event -> handler (Obj.magic event))

let onDragStart (handler : Preact_Event.Drag.t -> unit) =
  Preact_Core.on "dragstart" (fun event -> handler (Obj.magic event))

let onDrop (handler : Preact_Event.Drag.t -> unit) =
  Preact_Core.on "drop" (fun event -> handler (Obj.magic event))

let onAbort (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "abort" (fun event -> handler (Obj.magic event))

let onCanPlay (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "canplay" (fun event -> handler (Obj.magic event))

let onCanPlayThrough (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "canplaythrough" (fun event -> handler (Obj.magic event))

let onChange (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "change" (fun event -> handler (Obj.magic event))

let onDurationChange (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "durationchange" (fun event -> handler (Obj.magic event))

let onEmptied (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "emptied" (fun event -> handler (Obj.magic event))

let onEncrypted (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "encrypted" (fun event -> handler (Obj.magic event))

let onEnded (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "ended" (fun event -> handler (Obj.magic event))

let onError (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "error" (fun event -> handler (Obj.magic event))

let onInput (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "input" (fun event -> handler (Obj.magic event))

let onInvalid (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "invalid" (fun event -> handler (Obj.magic event))

let onLoad (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "load" (fun event -> handler (Obj.magic event))

let onLoadStart (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "loadstart" (fun event -> handler (Obj.magic event))

let onLoadedData (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "loadeddata" (fun event -> handler (Obj.magic event))

let onLoadedMetadata (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "loadedmetadata" (fun event -> handler (Obj.magic event))

let onPause (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "pause" (fun event -> handler (Obj.magic event))

let onPlay (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "play" (fun event -> handler (Obj.magic event))

let onPlaying (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "playing" (fun event -> handler (Obj.magic event))

let onProgress (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "progress" (fun event -> handler (Obj.magic event))

let onRateChange (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "ratechange" (fun event -> handler (Obj.magic event))

let onReset (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "reset" (fun event -> handler (Obj.magic event))

let onSearch (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "search" (fun event -> handler (Obj.magic event))

let onSeeked (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "seeked" (fun event -> handler (Obj.magic event))

let onSeeking (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "seeking" (fun event -> handler (Obj.magic event))

let onSelect (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "select" (fun event -> handler (Obj.magic event))

let onStalled (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "stalled" (fun event -> handler (Obj.magic event))

let onSubmit (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "submit" (fun event -> handler (Obj.magic event))

let onSuspend (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "suspend" (fun event -> handler (Obj.magic event))

let onTimeUpdate (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "timeupdate" (fun event -> handler (Obj.magic event))

let onVolumeChange (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "volumechange" (fun event -> handler (Obj.magic event))

let onWaiting (handler : Preact_Event.Event.t -> unit) =
  Preact_Core.on "waiting" (fun event -> handler (Obj.magic event))

let onBlur (handler : Preact_Event.Focus.t -> unit) =
  Preact_Core.on "blur" (fun event -> handler (Obj.magic event))

let onFocus (handler : Preact_Event.Focus.t -> unit) =
  Preact_Core.on "focus" (fun event -> handler (Obj.magic event))

let onKeyDown (handler : Preact_Event.Keyboard.t -> unit) =
  Preact_Core.on "keydown" (fun event -> handler (Obj.magic event))

let onKeyPress (handler : Preact_Event.Keyboard.t -> unit) =
  Preact_Core.on "keypress" (fun event -> handler (Obj.magic event))

let onKeyUp (handler : Preact_Event.Keyboard.t -> unit) =
  Preact_Core.on "keyup" (fun event -> handler (Obj.magic event))

let onClick (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "click" (fun event -> handler (Obj.magic event))

let onContextMenu (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "contextmenu" (fun event -> handler (Obj.magic event))

let onDblClick (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "dblclick" (fun event -> handler (Obj.magic event))

let onMouseDown (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "mousedown" (fun event -> handler (Obj.magic event))

let onMouseEnter (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "mouseenter" (fun event -> handler (Obj.magic event))

let onMouseLeave (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "mouseleave" (fun event -> handler (Obj.magic event))

let onMouseMove (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "mousemove" (fun event -> handler (Obj.magic event))

let onMouseOut (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "mouseout" (fun event -> handler (Obj.magic event))

let onMouseOver (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "mouseover" (fun event -> handler (Obj.magic event))

let onMouseUp (handler : Preact_Event.Mouse.t -> unit) =
  Preact_Core.on "mouseup" (fun event -> handler (Obj.magic event))

let onPointerCancel (handler : Preact_Event.Pointer.t -> unit) =
  Preact_Core.on "pointercancel" (fun event -> handler (Obj.magic event))

let onPointerDown (handler : Preact_Event.Pointer.t -> unit) =
  Preact_Core.on "pointerdown" (fun event -> handler (Obj.magic event))

let onPointerEnter (handler : Preact_Event.Pointer.t -> unit) =
  Preact_Core.on "pointerenter" (fun event -> handler (Obj.magic event))

let onPointerLeave (handler : Preact_Event.Pointer.t -> unit) =
  Preact_Core.on "pointerleave" (fun event -> handler (Obj.magic event))

let onPointerMove (handler : Preact_Event.Pointer.t -> unit) =
  Preact_Core.on "pointermove" (fun event -> handler (Obj.magic event))

let onPointerOut (handler : Preact_Event.Pointer.t -> unit) =
  Preact_Core.on "pointerout" (fun event -> handler (Obj.magic event))

let onPointerOver (handler : Preact_Event.Pointer.t -> unit) =
  Preact_Core.on "pointerover" (fun event -> handler (Obj.magic event))

let onPointerUp (handler : Preact_Event.Pointer.t -> unit) =
  Preact_Core.on "pointerup" (fun event -> handler (Obj.magic event))

let onTouchCancel (handler : Preact_Event.Touch.t -> unit) =
  Preact_Core.on "touchcancel" (fun event -> handler (Obj.magic event))

let onTouchEnd (handler : Preact_Event.Touch.t -> unit) =
  Preact_Core.on "touchend" (fun event -> handler (Obj.magic event))

let onTouchMove (handler : Preact_Event.Touch.t -> unit) =
  Preact_Core.on "touchmove" (fun event -> handler (Obj.magic event))

let onTouchStart (handler : Preact_Event.Touch.t -> unit) =
  Preact_Core.on "touchstart" (fun event -> handler (Obj.magic event))

let onTransitionEnd (handler : Preact_Event.Transition.t -> unit) =
  Preact_Core.on "transitionend" (fun event -> handler (Obj.magic event))

let onScroll (handler : Preact_Event.Ui.t -> unit) =
  Preact_Core.on "scroll" (fun event -> handler (Obj.magic event))

let onWheel (handler : Preact_Event.Wheel.t -> unit) =
  Preact_Core.on "wheel" (fun event -> handler (Obj.magic event))
