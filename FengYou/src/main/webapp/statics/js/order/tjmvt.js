! function() {
	if (!window.tjNew) {
		Object.keys || (Object.keys = function(t) {
			if (t !== Object(t)) throw new TypeError("Object.keys called on a non-object");
			var e, n = [];
			for (e in t) Object.prototype.hasOwnProperty.call(t, e) && n.push(e);
			return n
		});

		function n() {
			var t;
			return m ? t = 1 : f ? (t = 2, u && (t = 4, "miniprogram" !== window.__wxjs_environment && !c.match(/ miniprogram/) || (t = 5))) : t = 3, t
		}

		function i() {
			return f ? 2 : 4
		}

		function o(t) {
			"string" == typeof t && (t = JSON.parse(t));
			for (var e = "", n = 0; n < t.length; n++) 3 === Object.keys(t[n]).length && (e += t[n].eid + "_" + t[n].vid + "_" + t[n].val + (n === t.length - 1 ? "" : "-"));
			return e
		}

		function r() {
			var t = {},
				e = c.match(/android(.*);(.*)build/i);
			return e ? (t.os = e[1], t.md = e[2]) : c.match(/iphone/) ? (t.os = "ios", t.md = "iphone") : c.match(/ipad/) ? (t.os = "ios", t.md = "ipad") : (t.os = "unkown", t.md = "unkown"), t
		}
		var c = navigator.userAgent.toLowerCase(),
			t = "undefined" != typeof devicePixelRatio ? devicePixelRatio : 1,
			e = screen.width / document.body.clientWidth != 1 && screen.height / document.body.clientHeight != 1,
			a = e ? screen.width / t : screen.width,
			s = e ? screen.height / t : screen.height,
			d = 600 <= a && 600 <= s,
			m = / ew(\w+)\/([\d.-_]*)/.test(c) || -1 != c.indexOf("tctravel") ? 1 : 0,
			h = (new Date).getTime(),
			f = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent),
			u = c.match(/ micromessenger/),
			v = "//ub.elong.com/tj/t.gif?",
			p = {
				fetchStart: "p88",
				responseStart: "p94",
				domContentLoadedEventEnd: "drt",
				loadEventEnd: "olt"
			},
			w = "bns=" + i() + "&ct=" + n();
		if (5 === n()) {
			var g = T("walletEntry");
			w += "&hoff=" + T("wxxcxScene") + "&opens=" + g
		}
		document.cookie = encodeURIComponent("ext_param") + "=" + encodeURIComponent(w) + ";domain=elong.com; path=/";

		function l() {
			this.bns = i(), this.fst = h, this.ct = n(), this.st = (new Date).getTime();
			var t = 3 === this.ct ? "CookieGuid" : "H5CookieId",
				e = document.cookie.match(new RegExp("(^| )" + t + "=([^;]*)(;|$)"));
			e && (this.cid = e[2]), this.rf = "", this.bs = screen ? screen.width + "*" + screen.height + "*" + (window.devicePixelRatio || 1) : "", this.md = r().md, this.os = r().os, this.nt = navigator.connection ? navigator.connection.type : 0, this.dt = function() {
				var t = 99;
				return c.match(/android/) ? t = d ? 8 : 3 : c.match(/iphone/) ? t = 1 : c.match(/ipad/) ? t = 2 : c.match(/macintosh/) ? t = 7 : c.match(/windows/) && (t = -1 !== c.indexOf("Touch") ? d ? 9 : 5 : 7), t
			}(), this.execTime = 0, this.pid = T("wxxcxOpenId"), this.snum = T("wxxcxUnionId"), this.opens = T("walletEntry"), this.hoff = T("wxxcxScene")
		}

		function j(t, e) {
			var n = function(t, e) {
				var n = {},
					i = {};
				if (t && t.timing) {
					var o;
					for (o in t.timing) "number" == typeof t.timing[o] && e < t.timing[o] && (e = t.timing[o]);
					for (o in p) n[o] = t.timing[o] || e;
					for (var r in n) {
						var c = p[r];
						c && (i[c] = n[r])
					}
				}
				return i
			}(t, h + 500);
			for (var i in e) e[i] && "function" != typeof e[i] && (n[i] = e[i]);
			y = n;
			var o = "";
			for (var r in n) o = o + "&" + r + "=" + n[r];
			(new Image).src = v + o, "true" !== localStorage.getItem("print_traceinfo") || /(micromessenger|webbrowser)/.test(c) || b("__session__traceinfo__tj", n)
		}
		var y = Object.create(null);
		window.ubt_getMvtLog = function() {
			return y
		};
		var b = function(e, t) {
			try {
				var n = JSON.parse(sessionStorage.getItem(e));
				n || (n = []), n.push({
					timestamp: +new Date,
					tj: JSON.stringify(t)
				}), sessionStorage.setItem(e, JSON.stringify(n))
			} catch (t) {
				console.log("printTraceinfo faild ,key = ", e, ", error = ", t)
			}
		};
		l.prototype.__sendObj = function(t, e) {
			j(t, e)
		}, window.tjmvtjscb = function(t) {
			try {
				var e = JSON.parse(t);
				O.cid = e.publicAttris.deviceID
			} catch (t) {} finally {
				O.__sendObj(window.performance)
			}
		}, l.prototype.setShareData = function(t) {
			for (var e in t) "ct" !== e && (this[e] = "mvt" === e || "mvt2" === e ? o(t[e]) : t[e])
		}, l.prototype.setData = function(t) {
			var e = JSON.parse(JSON.stringify(t));
			try {
				e.mvt && (e.mvt = o(e.mvt))
			} catch (t) {
				e.mvt = ""
			}
			this.execTime++;
			try {
				var n = parseInt(localStorage.getItem("tjmvtcin"));
				this.cin = n ? ++n : 1, localStorage.setItem("tjmvtcin", this.cin)
			} catch (t) {
				this.cin = this.execTime
			}
			var i = function() {
				for (var t, e, n = arguments[0] || {}, i = arguments.length, o = 1; o < i; o++)
					if (null !== (t = arguments[o]))
						for (e in t) "function" != typeof t[e] && (n[e] = t[e]);
				return n
			}({}, e, this);
			j(window.performance, i)
		};

		function x() {
			this.cacheTj = {};
			try {
				(sessionStorage.testtest = "1") == sessionStorage.testtest && (sessionStorage.removeItem("testtest"), this.cacheTj = sessionStorage)
			} catch (t) {
				this.cacheTj = {}
			}
		}
		var O = new l;
		window.tjNew = new x, x.prototype.setData = function(t) {
			var e = "";
			for (var n in t) e = e + "&" + n + "=" + t[n];
			this.cacheTj[t.mvt2] || (this.cacheTj[t.mvt2] = !0, (new Image).src = v + e)
		};
		var S;
		S = function() {
			if ("object" == typeof TJObject && TJObject.mvt2) {
				var t = {
					cid: TJObject.cid,
					sid: TJObject.sid,
					ecrd: TJObject.ecrd,
					st: TJObject.st,
					mvt2: o(TJObject.mvt2),
					et: "mvttest"
				};
				if (tjNew.setData(t), window.$ && $.ajax) {
					var n = $.ajax;
					$.ajax = function(t) {
						var e = t.complete;
						return t.complete = function(t) {
							return e && e.apply(void 0, arguments), !0
						}, n(t)
					}
				}
			}
		}, /complete|loaded|interactive/.test(document.readyState) && document.body ? S() : document.addEventListener("DOMContentLoaded", S, !1), "function" == typeof define && define.amd ? define(function() {
			"use strict";
			return O
		}) : "undefined" != typeof module && module.exports && (module.exports = O), window.tjMVT = O
	}

	function T(t) {
		var e = location.search.match(new RegExp("[?&]" + t + "=([^&]+)", "i"));
		return null == e || e.length < 1 ? "" : e[1]
	}
}();