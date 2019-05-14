! function(n) {
	"use strict";

	function t(n, t) {
		var r = (65535 & n) + (65535 & t);
		return (n >> 16) + (t >> 16) + (r >> 16) << 16 | 65535 & r
	}

	function r(n, t) {
		return n << t | n >>> 32 - t
	}

	function u(n, u, e, o, c, f) {
		return t(r(t(t(u, n), t(o, f)), c), e)
	}

	function e(n, t, r, e, o, c, f) {
		return u(t & r | ~t & e, n, t, o, c, f)
	}

	function o(n, t, r, e, o, c, f) {
		return u(t & e | r & ~e, n, t, o, c, f)
	}

	function c(n, t, r, e, o, c, f) {
		return u(t ^ r ^ e, n, t, o, c, f)
	}

	function f(n, t, r, e, o, c, f) {
		return u(r ^ (t | ~e), n, t, o, c, f)
	}

	function i(n, r) {
		n[r >> 5] |= 128 << r % 32, n[14 + (r + 64 >>> 9 << 4)] = r;
		var u, i, a, h, g, l = 1732584193,
			v = -271733879,
			d = -1732584194,
			C = 271733878;
		for (u = 0; u < n.length; u += 16) i = l, a = v, h = d, g = C, l = e(l, v, d, C, n[u], 7, -680876936), C = e(C, l, v, d, n[u + 1], 12, -389564586), d = e(d, C, l, v, n[u + 2], 17, 606105819), v = e(v, d, C, l, n[u + 3], 22, -1044525330), l = e(l, v, d, C, n[u + 4], 7, -176418897), C = e(C, l, v, d, n[u + 5], 12, 1200080426), d = e(d, C, l, v, n[u + 6], 17, -1473231341), v = e(v, d, C, l, n[u + 7], 22, -45705983), l = e(l, v, d, C, n[u + 8], 7, 1770035416), C = e(C, l, v, d, n[u + 9], 12, -1958414417), d = e(d, C, l, v, n[u + 10], 17, -42063), v = e(v, d, C, l, n[u + 11], 22, -1990404162), l = e(l, v, d, C, n[u + 12], 7, 1804603682), C = e(C, l, v, d, n[u + 13], 12, -40341101), d = e(d, C, l, v, n[u + 14], 17, -1502002290), v = e(v, d, C, l, n[u + 15], 22, 1236535329), l = o(l, v, d, C, n[u + 1], 5, -165796510), C = o(C, l, v, d, n[u + 6], 9, -1069501632), d = o(d, C, l, v, n[u + 11], 14, 643717713), v = o(v, d, C, l, n[u], 20, -373897302), l = o(l, v, d, C, n[u + 5], 5, -701558691), C = o(C, l, v, d, n[u + 10], 9, 38016083), d = o(d, C, l, v, n[u + 15], 14, -660478335), v = o(v, d, C, l, n[u + 4], 20, -405537848), l = o(l, v, d, C, n[u + 9], 5, 568446438), C = o(C, l, v, d, n[u + 14], 9, -1019803690), d = o(d, C, l, v, n[u + 3], 14, -187363961), v = o(v, d, C, l, n[u + 8], 20, 1163531501), l = o(l, v, d, C, n[u + 13], 5, -1444681467), C = o(C, l, v, d, n[u + 2], 9, -51403784), d = o(d, C, l, v, n[u + 7], 14, 1735328473), v = o(v, d, C, l, n[u + 12], 20, -1926607734), l = c(l, v, d, C, n[u + 5], 4, -378558), C = c(C, l, v, d, n[u + 8], 11, -2022574463), d = c(d, C, l, v, n[u + 11], 16, 1839030562), v = c(v, d, C, l, n[u + 14], 23, -35309556), l = c(l, v, d, C, n[u + 1], 4, -1530992060), C = c(C, l, v, d, n[u + 4], 11, 1272893353), d = c(d, C, l, v, n[u + 7], 16, -155497632), v = c(v, d, C, l, n[u + 10], 23, -1094730640), l = c(l, v, d, C, n[u + 13], 4, 681279174), C = c(C, l, v, d, n[u], 11, -358537222), d = c(d, C, l, v, n[u + 3], 16, -722521979), v = c(v, d, C, l, n[u + 6], 23, 76029189), l = c(l, v, d, C, n[u + 9], 4, -640364487), C = c(C, l, v, d, n[u + 12], 11, -421815835), d = c(d, C, l, v, n[u + 15], 16, 530742520), v = c(v, d, C, l, n[u + 2], 23, -995338651), l = f(l, v, d, C, n[u], 6, -198630844), C = f(C, l, v, d, n[u + 7], 10, 1126891415), d = f(d, C, l, v, n[u + 14], 15, -1416354905), v = f(v, d, C, l, n[u + 5], 21, -57434055), l = f(l, v, d, C, n[u + 12], 6, 1700485571), C = f(C, l, v, d, n[u + 3], 10, -1894986606), d = f(d, C, l, v, n[u + 10], 15, -1051523), v = f(v, d, C, l, n[u + 1], 21, -2054922799), l = f(l, v, d, C, n[u + 8], 6, 1873313359), C = f(C, l, v, d, n[u + 15], 10, -30611744), d = f(d, C, l, v, n[u + 6], 15, -1560198380), v = f(v, d, C, l, n[u + 13], 21, 1309151649), l = f(l, v, d, C, n[u + 4], 6, -145523070), C = f(C, l, v, d, n[u + 11], 10, -1120210379), d = f(d, C, l, v, n[u + 2], 15, 718787259), v = f(v, d, C, l, n[u + 9], 21, -343485551), l = t(l, i), v = t(v, a), d = t(d, h), C = t(C, g);
		return [l, v, d, C]
	}

	function a(n) {
		var t, r = "",
			u = 32 * n.length;
		for (t = 0; t < u; t += 8) r += String.fromCharCode(n[t >> 5] >>> t % 32 & 255);
		return r
	}

	function h(n) {
		var t, r = [];
		for (r[(n.length >> 2) - 1] = void 0, t = 0; t < r.length; t += 1) r[t] = 0;
		var u = 8 * n.length;
		for (t = 0; t < u; t += 8) r[t >> 5] |= (255 & n.charCodeAt(t / 8)) << t % 32;
		return r
	}

	function g(n) {
		return a(i(h(n), 8 * n.length))
	}

	function l(n, t) {
		var r, u, e = h(n),
			o = [],
			c = [];
		for (o[15] = c[15] = void 0, e.length > 16 && (e = i(e, 8 * n.length)), r = 0; r < 16; r += 1) o[r] = 909522486 ^ e[r], c[r] = 1549556828 ^ e[r];
		return u = i(o.concat(h(t)), 512 + 8 * t.length), a(i(c.concat(u), 640))
	}

	function v(n) {
		var t, r, u = "0123456789abcdef",
			e = "";
		for (r = 0; r < n.length; r += 1) t = n.charCodeAt(r), e += u.charAt(t >>> 4 & 15) + u.charAt(15 & t);
		return e
	}

	function d(n) {
		return unescape(encodeURIComponent(n))
	}

	function C(n) {
		return g(d(n))
	}

	function s(n) {
		return v(C(n))
	}

	function A(n, t) {
		return l(d(n), d(t))
	}

	function m(n, t) {
		return v(A(n, t))
	}
	n.md5 = function(n, t, r) {
		return t ? r ? A(t, n) : m(t, n) : r ? C(n) : s(n)
	}
}(this);
! function(i, s) {
	"use strict";
	var e = "model",
		o = "name",
		r = "type",
		n = "vendor",
		a = "version",
		t = "mobile",
		w = "tablet",
		l = {
			extend: function(i, s) {
				var e = {};
				for (var o in i) s[o] && s[o].length % 2 == 0 ? e[o] = s[o].concat(i[o]) : e[o] = i[o];
				return e
			},
			has: function(i, s) {
				return "string" == typeof i && -1 !== s.toLowerCase().indexOf(i.toLowerCase())
			},
			lowerize: function(i) {
				return i.toLowerCase()
			},
			major: function(i) {
				return "string" == typeof i ? i.replace(/[^\d\.]/g, "").split(".")[0] : void 0
			},
			trim: function(i) {
				return i.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, "")
			}
		},
		d = {
			rgx: function() {
				var i, s, e, o, r, n, a = {},
					t = 0,
					w = arguments;
				for (e = 0; e < w[1].length; e++) a["object" == typeof(o = w[1][e]) ? o[0] : o] = void 0;
				for (; t < w.length && !r;) {
					var l = w[t],
						d = w[t + 1];
					for (i = s = 0; i < l.length && !r;)
						if (r = l[i++].exec(this.getUA()))
							for (e = 0; e < d.length; e++) n = r[++s], "object" == typeof(o = d[e]) && o.length > 0 ? 2 == o.length ? "function" == typeof o[1] ? a[o[0]] = o[1].call(this, n) : a[o[0]] = o[1] : 3 == o.length ? "function" != typeof o[1] || o[1].exec && o[1].test ? a[o[0]] = n ? n.replace(o[1], o[2]) : void 0 : a[o[0]] = n ? o[1].call(this, n, o[2]) : void 0 : 4 == o.length && (a[o[0]] = n ? o[3].call(this, n.replace(o[1], o[2])) : void 0) : a[o] = n || void 0;
					t += 2
				}
				return a
			},
			str: function(i, s) {
				for (var e in s)
					if ("object" == typeof s[e] && s[e].length > 0) {
						for (var o = 0; o < s[e].length; o++)
							if (l.has(s[e][o], i)) return "?" === e ? void 0 : e
					} else if (l.has(s[e], i)) return "?" === e ? void 0 : e;
				return i
			}
		},
		c = {
			browser: {
				oldsafari: {
					version: {
						"1.0": "/8",
						1.2: "/1",
						1.3: "/3",
						"2.0": "/412",
						"2.0.2": "/416",
						"2.0.3": "/417",
						"2.0.4": "/419",
						"?": "/"
					}
				}
			},
			device: {
				amazon: {
					model: {
						"Fire Phone": ["SD", "KF"]
					}
				},
				sprint: {
					model: {
						"Evo Shift 4G": "7373KT"
					},
					vendor: {
						HTC: "APA",
						Sprint: "Sprint"
					}
				}
			},
			os: {
				windows: {
					version: {
						ME: "4.90",
						"NT 3.11": "NT3.51",
						"NT 4.0": "NT4.0",
						2000: "NT 5.0",
						XP: ["NT 5.1", "NT 5.2"],
						Vista: "NT 6.0",
						7: "NT 6.1",
						8: "NT 6.2",
						8.1: "NT 6.3",
						10: ["NT 6.4", "NT 10.0"],
						RT: "ARM"
					}
				}
			}
		},
		u = {
			browser: [
				[/(opera\smini)\/([\w\.-]+)/i, /(opera\s[mobiletab]+).+version\/([\w\.-]+)/i, /(opera).+version\/([\w\.]+)/i, /(opera)[\/\s]+([\w\.]+)/i],
				[o, a],
				[/(opios)[\/\s]+([\w\.]+)/i],
				[
					[o, "Opera Mini"], a
				],
				[/\s(opr)\/([\w\.]+)/i],
				[
					[o, "Opera"], a
				],
				[/(kindle)\/([\w\.]+)/i, /(lunascape|maxthon|netfront|jasmine|blazer)[\/\s]?([\w\.]+)*/i, /(avant\s|iemobile|slim|baidu)(?:browser)?[\/\s]?([\w\.]*)/i, /(?:ms|\()(ie)\s([\w\.]+)/i, /(rekonq)\/([\w\.]+)*/i, /(chromium|flock|rockmelt|midori|epiphany|silk|skyfire|ovibrowser|bolt|iron|vivaldi|iridium|phantomjs)\/([\w\.-]+)/i],
				[o, a],
				[/(trident).+rv[:\s]([\w\.]+).+like\sgecko/i],
				[
					[o, "IE"], a
				],
				[/(edge)\/((\d+)?[\w\.]+)/i],
				[o, a],
				[/(yabrowser)\/([\w\.]+)/i],
				[
					[o, "Yandex"], a
				],
				[/(comodo_dragon)\/([\w\.]+)/i],
				[
					[o, /_/g, " "], a
				],
				[/(micromessenger)\/([\w\.]+)/i],
				[
					[o, "WeChat"], a
				],
				[/xiaomi\/miuibrowser\/([\w\.]+)/i],
				[a, [o, "MIUI Browser"]],
				[/\swv\).+(chrome)\/([\w\.]+)/i],
				[
					[o, /(.+)/, "$1 WebView"], a
				],
				[/android.+samsungbrowser\/([\w\.]+)/i, /android.+version\/([\w\.]+)\s+(?:mobile\s?safari|safari)*/i],
				[a, [o, "Android Browser"]],
				[/(chrome|omniweb|arora|[tizenoka]{5}\s?browser)\/v?([\w\.]+)/i, /(qqbrowser)[\/\s]?([\w\.]+)/i],
				[o, a],
				[/(uc\s?browser)[\/\s]?([\w\.]+)/i, /ucweb.+(ucbrowser)[\/\s]?([\w\.]+)/i, /juc.+(ucweb)[\/\s]?([\w\.]+)/i],
				[
					[o, "UCBrowser"], a
				],
				[/(dolfin)\/([\w\.]+)/i],
				[
					[o, "Dolphin"], a
				],
				[/((?:android.+)crmo|crios)\/([\w\.]+)/i],
				[
					[o, "Chrome"], a
				],
				[/;fbav\/([\w\.]+);/i],
				[a, [o, "Facebook"]],
				[/fxios\/([\w\.-]+)/i],
				[a, [o, "Firefox"]],
				[/version\/([\w\.]+).+?mobile\/\w+\s(safari)/i],
				[a, [o, "Mobile Safari"]],
				[/version\/([\w\.]+).+?(mobile\s?safari|safari)/i],
				[a, o],
				[/webkit.+?(mobile\s?safari|safari)(\/[\w\.]+)/i],
				[o, [a, d.str, c.browser.oldsafari.version]],
				[/(konqueror)\/([\w\.]+)/i, /(webkit|khtml)\/([\w\.]+)/i],
				[o, a],
				[/(navigator|netscape)\/([\w\.-]+)/i],
				[
					[o, "Netscape"], a
				],
				[/(swiftfox)/i, /(icedragon|iceweasel|camino|chimera|fennec|maemo\sbrowser|minimo|conkeror)[\/\s]?([\w\.\+]+)/i, /(firefox|seamonkey|k-meleon|icecat|iceape|firebird|phoenix)\/([\w\.-]+)/i, /(mozilla)\/([\w\.]+).+rv\:.+gecko\/\d+/i, /(polaris|lynx|dillo|icab|doris|amaya|w3m|netsurf|sleipnir)[\/\s]?([\w\.]+)/i, /(links)\s\(([\w\.]+)/i, /(gobrowser)\/?([\w\.]+)*/i, /(ice\s?browser)\/v?([\w\._]+)/i, /(mosaic)[\/\s]([\w\.]+)/i],
				[o, a]
			],
			cpu: [
				[/(?:(amd|x(?:(?:86|64)[_-])?|wow|win)64)[;\)]/i],
				[
					["architecture", "amd64"]
				],
				[/(ia32(?=;))/i],
				[
					["architecture", l.lowerize]
				],
				[/((?:i[346]|x)86)[;\)]/i],
				[
					["architecture", "ia32"]
				],
				[/windows\s(ce|mobile);\sppc;/i],
				[
					["architecture", "arm"]
				],
				[/((?:ppc|powerpc)(?:64)?)(?:\smac|;|\))/i],
				[
					["architecture", /ower/, "", l.lowerize]
				],
				[/(sun4\w)[;\)]/i],
				[
					["architecture", "sparc"]
				],
				[/((?:avr32|ia64(?=;))|68k(?=\))|arm(?:64|(?=v\d+;))|(?=atmel\s)avr|(?:irix|mips|sparc)(?:64)?(?=;)|pa-risc)/i],
				[
					["architecture", l.lowerize]
				]
			],
			device: [
				[/\((ipad|playbook);[\w\s\);-]+(rim|apple)/i],
				[e, n, [r, w]],
				[/applecoremedia\/[\w\.]+ \((ipad)/],
				[e, [n, "Apple"],
					[r, w]
				],
				[/(apple\s{0,1}tv)/i],
				[
					[e, "Apple TV"],
					[n, "Apple"]
				],
				[/(archos)\s(gamepad2?)/i, /(hp).+(touchpad)/i, /(hp).+(tablet)/i, /(kindle)\/([\w\.]+)/i, /\s(nook)[\w\s]+build\/(\w+)/i, /(dell)\s(strea[kpr\s\d]*[\dko])/i],
				[n, e, [r, w]],
				[/(kf[A-z]+)\sbuild\/[\w\.]+.*silk\//i],
				[e, [n, "Amazon"],
					[r, w]
				],
				[/(sd|kf)[0349hijorstuw]+\sbuild\/[\w\.]+.*silk\//i],
				[
					[e, d.str, c.device.amazon.model],
					[n, "Amazon"],
					[r, t]
				],
				[/\((ip[honed|\s\w*]+);.+(apple)/i],
				[e, n, [r, t]],
				[/\((ip[honed|\s\w*]+);/i],
				[e, [n, "Apple"],
					[r, t]
				],
				[/(blackberry)[\s-]?(\w+)/i, /(blackberry|benq|palm(?=\-)|sonyericsson|acer|asus|dell|huawei|meizu|motorola|polytron)[\s_-]?([\w-]+)*/i, /(hp)\s([\w\s]+\w)/i, /(asus)-?(\w+)/i],
				[n, e, [r, t]],
				[/\(bb10;\s(\w+)/i],
				[e, [n, "BlackBerry"],
					[r, t]
				],
				[/android.+(transfo[prime\s]{4,10}\s\w+|eeepc|slider\s\w+|nexus 7|padfone)/i],
				[e, [n, "Asus"],
					[r, w]
				],
				[/(sony)\s(tablet\s[ps])\sbuild\//i, /(sony)?(?:sgp.+)\sbuild\//i],
				[
					[n, "Sony"],
					[e, "Xperia Tablet"],
					[r, w]
				],
				[/(?:sony)?(?:(?:(?:c|d)\d{4})|(?:so[-l].+))\sbuild\//i],
				[
					[n, "Sony"],
					[e, "Xperia Phone"],
					[r, t]
				],
				[/\s(ouya)\s/i, /(nintendo)\s([wids3u]+)/i],
				[n, e, [r, "console"]],
				[/android.+;\s(shield)\sbuild/i],
				[e, [n, "Nvidia"],
					[r, "console"]
				],
				[/(playstation\s[34portablevi]+)/i],
				[e, [n, "Sony"],
					[r, "console"]
				],
				[/(sprint\s(\w+))/i],
				[
					[n, d.str, c.device.sprint.vendor],
					[e, d.str, c.device.sprint.model],
					[r, t]
				],
				[/(lenovo)\s?(S(?:5000|6000)+(?:[-][\w+]))/i],
				[n, e, [r, w]],
				[/(htc)[;_\s-]+([\w\s]+(?=\))|\w+)*/i, /(zte)-(\w+)*/i, /(alcatel|geeksphone|huawei|lenovo|nexian|panasonic|(?=;\s)sony)[_\s-]?([\w-]+)*/i],
				[n, [e, /_/g, " "],
					[r, t]
				],
				[/(nexus\s9)/i],
				[e, [n, "HTC"],
					[r, w]
				],
				[/(nexus\s6p)/i],
				[e, [n, "Huawei"],
					[r, t]
				],
				[/(microsoft);\s(lumia[\s\w]+)/i],
				[n, e, [r, t]],
				[/[\s\(;](xbox(?:\sone)?)[\s\);]/i],
				[e, [n, "Microsoft"],
					[r, "console"]
				],
				[/(kin\.[onetw]{3})/i],
				[
					[e, /\./g, " "],
					[n, "Microsoft"],
					[r, t]
				],
				[/\s(milestone|droid(?:[2-4x]|\s(?:bionic|x2|pro|razr))?(:?\s4g)?)[\w\s]+build\//i, /mot[\s-]?(\w+)*/i, /(XT\d{3,4}) build\//i, /(nexus\s6)/i],
				[e, [n, "Motorola"],
					[r, t]
				],
				[/android.+\s(mz60\d|xoom[\s2]{0,2})\sbuild\//i],
				[e, [n, "Motorola"],
					[r, w]
				],
				[/hbbtv\/\d+\.\d+\.\d+\s+\([\w\s]*;\s*(\w[^;]*);([^;]*)/i],
				[
					[n, l.trim],
					[e, l.trim],
					[r, "smarttv"]
				],
				[/hbbtv.+maple;(\d+)/i],
				[
					[e, /^/, "SmartTV"],
					[n, "Samsung"],
					[r, "smarttv"]
				],
				[/\(dtv[\);].+(aquos)/i],
				[e, [n, "Sharp"],
					[r, "smarttv"]
				],
				[/android.+((sch-i[89]0\d|shw-m380s|gt-p\d{4}|gt-n\d+|sgh-t8[56]9|nexus 10))/i, /((SM-T\w+))/i],
				[
					[n, "Samsung"], e, [r, w]
				],
				[/smart-tv.+(samsung)/i],
				[n, [r, "smarttv"], e],
				[/((s[cgp]h-\w+|gt-\w+|galaxy\snexus|sm-\w[\w\d]+))/i, /(sam[sung]*)[\s-]*(\w+-?[\w-]*)*/i, /sec-((sgh\w+))/i],
				[
					[n, "Samsung"], e, [r, t]
				],
				[/sie-(\w+)*/i],
				[e, [n, "Siemens"],
					[r, t]
				],
				[/(maemo|nokia).*(n900|lumia\s\d+)/i, /(nokia)[\s_-]?([\w-]+)*/i],
				[
					[n, "Nokia"], e, [r, t]
				],
				[/android\s3\.[\s\w;-]{10}(a\d{3})/i],
				[e, [n, "Acer"],
					[r, w]
				],
				[/android\s3\.[\s\w;-]{10}(lg?)-([06cv9]{3,4})/i],
				[
					[n, "LG"], e, [r, w]
				],
				[/(lg) netcast\.tv/i],
				[n, e, [r, "smarttv"]],
				[/(nexus\s[45])/i, /lg[e;\s\/-]+(\w+)*/i],
				[e, [n, "LG"],
					[r, t]
				],
				[/android.+(ideatab[a-z0-9\-\s]+)/i],
				[e, [n, "Lenovo"],
					[r, w]
				],
				[/linux;.+((jolla));/i],
				[n, e, [r, t]],
				[/((pebble))app\/[\d\.]+\s/i],
				[n, e, [r, "wearable"]],
				[/android.+;\s(glass)\s\d/i],
				[e, [n, "Google"],
					[r, "wearable"]
				],
				[/android.+;\s(pixel c)\s/i],
				[e, [n, "Google"],
					[r, w]
				],
				[/android.+;\s(pixel xl|pixel)\s/i],
				[e, [n, "Google"],
					[r, t]
				],
				[/android.+(\w+)\s+build\/hm\1/i, /android.+(hm[\s\-_]*note?[\s_]*(?:\d\w)?)\s+build/i, /android.+(mi[\s\-_]*(?:one|one[\s_]plus|note lte)?[\s_]*(?:\d\w)?)\s+build/i],
				[
					[e, /_/g, " "],
					[n, "Xiaomi"],
					[r, t]
				],
				[/android.+a000(1)\s+build/i],
				[e, [n, "OnePlus"],
					[r, t]
				],
				[/\s(tablet)[;\/]/i, /\s(mobile)(?:[;\/]|\ssafari)/i],
				[
					[r, l.lowerize], n, e
				]
			],
			engine: [
				[/windows.+\sedge\/([\w\.]+)/i],
				[a, [o, "EdgeHTML"]],
				[/(presto)\/([\w\.]+)/i, /(webkit|trident|netfront|netsurf|amaya|lynx|w3m)\/([\w\.]+)/i, /(khtml|tasman|links)[\/\s]\(?([\w\.]+)/i, /(icab)[\/\s]([23]\.[\d\.]+)/i],
				[o, a],
				[/rv\:([\w\.]+).*(gecko)/i],
				[a, o]
			],
			os: [
				[/microsoft\s(windows)\s(vista|xp)/i],
				[o, a],
				[/(windows)\snt\s6\.2;\s(arm)/i, /(windows\sphone(?:\sos)*)[\s\/]?([\d\.\s]+\w)*/i, /(windows\smobile|windows)[\s\/]?([ntce\d\.\s]+\w)/i],
				[o, [a, d.str, c.os.windows.version]],
				[/(win(?=3|9|n)|win\s9x\s)([nt\d\.]+)/i],
				[
					[o, "Windows"],
					[a, d.str, c.os.windows.version]
				],
				[/\((bb)(10);/i],
				[
					[o, "BlackBerry"], a
				],
				[/(blackberry)\w*\/?([\w\.]+)*/i, /(tizen)[\/\s]([\w\.]+)/i, /(android|webos|palm\sos|qnx|bada|rim\stablet\sos|meego|contiki)[\/\s-]?([\w\.]+)*/i, /linux;.+(sailfish);/i],
				[o, a],
				[/(symbian\s?os|symbos|s60(?=;))[\/\s-]?([\w\.]+)*/i],
				[
					[o, "Symbian"], a
				],
				[/\((series40);/i],
				[o],
				[/mozilla.+\(mobile;.+gecko.+firefox/i],
				[
					[o, "Firefox OS"], a
				],
				[/(nintendo|playstation)\s([wids34portablevu]+)/i, /(mint)[\/\s\(]?(\w+)*/i, /(mageia|vectorlinux)[;\s]/i, /(joli|[kxln]?ubuntu|debian|[open]*suse|gentoo|(?=\s)arch|slackware|fedora|mandriva|centos|pclinuxos|redhat|zenwalk|linpus)[\/\s-]?(?!chrom)([\w\.-]+)*/i, /(hurd|linux)\s?([\w\.]+)*/i, /(gnu)\s?([\w\.]+)*/i],
				[o, a],
				[/(cros)\s[\w]+\s([\w\.]+\w)/i],
				[
					[o, "Chromium OS"], a
				],
				[/(sunos)\s?([\w\.]+\d)*/i],
				[
					[o, "Solaris"], a
				],
				[/\s([frentopc-]{0,4}bsd|dragonfly)\s?([\w\.]+)*/i],
				[o, a],
				[/(haiku)\s(\w+)/i],
				[o, a],
				[/(ip[honead]+)(?:.*os\s([\w]+)*\slike\smac|;\sopera)/i],
				[
					[o, "iOS"],
					[a, /_/g, "."]
				],
				[/(mac\sos\sx)\s?([\w\s\.]+\w)*/i, /(macintosh|mac(?=_powerpc)\s)/i],
				[
					[o, "Mac OS"],
					[a, /_/g, "."]
				],
				[/((?:open)?solaris)[\/\s-]?([\w\.]+)*/i, /(aix)\s((\d)(?=\.|\)|\s)[\w\.]*)*/i, /(plan\s9|minix|beos|os\/2|amigaos|morphos|risc\sos|openvms)/i, /(unix)\s?([\w\.]+)*/i],
				[o, a]
			]
		},
		m = function(s, e) {
			if (!(this instanceof m)) return new m(s, e).getResult();
			var o = s || (i && i.navigator && i.navigator.userAgent ? i.navigator.userAgent : ""),
				r = e ? l.extend(u, e) : u;
			return this.getBrowser = function() {
				var i = d.rgx.apply(this, r.browser);
				return i.major = l.major(i.version), i
			}, this.getCPU = function() {
				return d.rgx.apply(this, r.cpu)
			}, this.getDevice = function() {
				return d.rgx.apply(this, r.device)
			}, this.getEngine = function() {
				return d.rgx.apply(this, r.engine)
			}, this.getOS = function() {
				return d.rgx.apply(this, r.os)
			}, this.getResult = function() {
				return {
					ua: this.getUA(),
					browser: this.getBrowser(),
					engine: this.getEngine(),
					os: this.getOS(),
					device: this.getDevice(),
					cpu: this.getCPU()
				}
			}, this.getUA = function() {
				return o
			}, this.setUA = function(i) {
				return o = i, this
			}, this
		};
	m.VERSION = "0.7.12", m.BROWSER = {
		NAME: o,
		MAJOR: "major",
		VERSION: a
	}, m.CPU = {
		ARCHITECTURE: "architecture"
	}, m.DEVICE = {
		MODEL: e,
		VENDOR: n,
		TYPE: r,
		CONSOLE: "console",
		MOBILE: t,
		SMARTTV: "smarttv",
		TABLET: w,
		WEARABLE: "wearable",
		EMBEDDED: "embedded"
	}, m.ENGINE = {
		NAME: o,
		VERSION: a
	}, m.OS = {
		NAME: o,
		VERSION: a
	}, i.UAParser = m;
	var p = i.jQuery || i.Zepto;
	if (void 0 !== p) {
		var b = new m;
		p.ua = b.getResult(), p.ua.get = function() {
			return b.getUA()
		}, p.ua.set = function(i) {
			b.setUA(i);
			var s = b.getResult();
			for (var e in s) p.ua[e] = s[e]
		}
	}
}("object" == typeof window ? window : this);
! function() {
	function e(e, t, n) {
		e.dataset && (e.dataset.events = n ? t : e.dataset.events.replace(new RegExp(t), ""))
	}

	function t(t, a) {
		var i;
		try {
			i = EventTarget.prototype[t + "EventListener"]
		} catch (e) {
			i = Node.prototype[t + "EventListener"]
		}
		return function(t, o, r) {
			if ("click" === t) {
				this.dataset && !this.dataset.events && (this.dataset.events = "");
				var d = n(this, t);
				(a && !d || !a && d) && e(this, t, a)
			}
			return i.call(this, t, o, r), !0
		}
	}
	var n = function(e, t) {
		if (e.dataset) {
			var n = e.dataset.events;
			return !!n && new RegExp(t).test(n)
		}
	};
	try {
		EventTarget.prototype.addEventListener = t("add", !0), EventTarget.prototype.removeEventListener = t("remove", !1)
	} catch (e) {
		Node.prototype.addEventListener = t("add", !0), Node.prototype.removeEventListener = t("remove", !1)
	}
	var a = {
			init: function() {
				return this.isWindowNameUsed = !1, this.isEmpty() && (window.name = JSON.stringify({
					saviorLogs: []
				})), this.get()
			},
			isEmpty: function() {
				if (!window.name) return !1;
				try {
					var e = JSON.parse(window.name);
					return this.isWindowNameUsed = !e.saviorLogs, e.saviorLogs
				} catch (e) {
					return this.isWindowNameUsed = !0, !1
				}
			},
			add: function(e) {
				if (!this.isWindowNameUsed) {
					var t = this.get();
					t.push(e), this.set(t)
				}
			},
			get: function() {
				return this.isWindowNameUsed ? [] : window.name && JSON.parse(window.name).saviorLogs || []
			},
			set: function(e) {
				this.isWindowNameUsed || (window.name = JSON.stringify({
					saviorLogs: e
				}))
			},
			remove: function(e) {
				if (!this.isWindowNameUsed) {
					for (var t = this.get(), n = 0; n < e.length; n++)
						for (var a = 0; a < t.length; a++) e[n].indentifier === t[a].indentifier && e[n].trace_id === t[a].trace_id && t.splice(a--, 1);
					this.set(t)
				}
			}
		},
		i = !1,
		o = navigator.userAgent,
		r = a.init(),
		d = 0,
		s = location.protocol + "//savior.elong.com/log/uploadWeb",
		c = !1,
		p = "",
		u = null,
		f = (new Date).getTime(),
		g = "",
		v = {
			LOAD: "load",
			CLICK: "click"
		},
		m = {
			iPhone: "1",
			iPad: "2",
			Android: "3",
			"Windows Phone": "4",
			"Mac OS": "5",
			Windows: "5"
		},
		h = {
			WECHAT: "WeChat",
			MOBILE: "mobile",
			PC: "pc",
			HYBRID: "hybrid",
			UNKNOWN: "unknown"
		},
		l = h.UNKNOWN,
		w = (new UAParser).getResult();
	o.indexOf("ewandroid") > -1 || o.indexOf("ewiphone") > -1 ? l = h.HYBRID : w.browser && w.cpu && w.device && w.engine && w.os && (l = "WeChat" === w.browser.name ? h.WECHAT : !w.os || "iOS" !== w.os.name && "Android" !== w.os.name ? h.PC : h.MOBILE);
	var O = {
		deepCopy: function(e) {
			var t = {};
			for (var n in e) t[n] = "object" == typeof e[n] ? this.deepCopy(e[n]) : e[n];
			return t
		},
		request: function(e) {
			var t = new XMLHttpRequest,
				n = e.url;
			t.open(e.method, n, !0), t.timeout = 3e3, t.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8"), t.onreadystatechange = function() {
				4 === t.readyState && (e.complete && e.complete(), 200 === t.status ? e.success && e.success() : e.error && e.error())
			}, t.send("req=" + JSON.stringify(e.param))
		},
		sendData: function(e) {
			var t = this,
				n = 0,
				i = (new Date).getTime() + "",
				o = {
					url: s,
					method: "post",
					param: {
						logs: e,
						uploadTime: i
					},
					success: function() {
						a.remove(e)
					},
					error: function() {
						n < 2 ? (n++, t.request(o)) : a.remove(e)
					}
				};
			t.request(o)
		},
		sendEvent: function(e) {
			e.record_time = parseFloat(e.trace_id) + d + "";
			var t = this.getSaviorCIN();
			e.data.cin = t, e.data.session_id = this.getSessionID(), e.data.islogin = window.TJObject && TJObject.ecrd && "192928" !== TJObject.ecrd ? "1" : "0", e.data.ecrd = window.TJObject && TJObject.ecrd || "", e.data.rf = encodeURIComponent(document.referrer), e.data.chid = this.getChannelId(), e.data.properties.if = this.getIf(), e.data.properties.of = this.getOf(), e.data.properties.origin = l, e.data.properties.version = "1.0.10", e.data.properties.ua = o, e.data.properties.page = encodeURIComponent(location.href), e.data.properties.pageId = encodeURIComponent(this.getPageId()), r.push(e), a.add(e), this.setSaviorCIN(t);
			var n = r.length - 1;
			if (n >= 0) {
				var i = 0 === n ? 1 : r.length,
					s = r.splice(0, i);
				this.sendData(s)
			}
		},
		sendClickEvent: function(e) {
			e.data.et = v.CLICK, this.sendEvent(e)
		},
		sendLoadEvent: function(e) {
			e.data.et = v.LOAD, e.indentifier = md5(this.getPageId()), this.sendEvent(e)
		},
		setLoadEventData: function(e) {
			var t = {};
			t.trace_id = p, t.chars = "UTF-8", t.data = {}, t.data.properties = {}, t.data.properties.loadOrigin = e;
			var n = m[w.os.name] || 99;
			"iOS" === w.os.name && (n = m[w.device.model]);
			var a = window.devicePixelRatio || 1,
				i = window.screen.width * a,
				o = window.screen.height * a;
			t.data.dt = n, t.data.bns = l === h.PC ? "4" : "2", t.data.bs = o + "*" + i, t.data.ct = l === h.WECHAT ? "3" : "2", t.data.custom_id = O.getCookieID(), t.data.bv = w.browser.name, t.data.coord_type = "", t.data.lat = "", t.data.lng = "", u = t.data, this.sendLoadEvent(t)
		},
		getPageId: function() {
			if ("undefined" != typeof slark) {
				var e = location.pathname.replace(/(^(http[s]?:\/\/[^\/]*\/)|(^\/))([^\/]+)\/.*$/gi, "$4");
				return (e = "/" === e ? location.host : e) + "/" + slark.getActiveId()
			}
			return location.pathname + location.hash
		},
		getClickID: function(e) {
			for (var t; e && "HTML" !== e.tagName;) t = e.tagName + "(" + this.getIndex(e) + ")" + (t ? ">" + t : ""), e = e.parentNode;
			return this.getPageId() + ">" + t
		},
		getIndex: function(e) {
			for (var t = 0, n = e.tagName; e = e.previousSibling;) e.tagName === n && t++;
			return t
		},
		setSaviorCIN: function(e) {
			e++, localStorage.setItem("SAVIOR", JSON.stringify({
				CIN: e,
				CID: this.getCookieID()
			}))
		},
		getSaviorCIN: function() {
			if (O.getCookieID()) {
				var e = localStorage.getItem("SAVIOR");
				try {
					if (e && JSON.parse(e).CID === O.getCookieID()) return JSON.parse(e).CIN + ""
				} catch (e) {
					return "1"
				}
			}
			return "1"
		},
		getOf: function() {
			if (window.TJObject && TJObject.of) return TJObject.of;
			var e = document.cookie.match(new RegExp("(^| )outerFrom=([^;]*)(;|$)"));
			return e ? e[2] : ""
		},
		getIf: function() {
			if (window.TJObject && TJObject.if) return TJObject.if;
			var e = document.cookie.match(new RegExp("(^| )innerFrom=([^;]*)(;|$)"));
			return e ? e[2] : ""
		},
		getCookieID: function() {
			if (window.TJObject && TJObject.cid) return TJObject.cid;
			var e = l === h.PC ? "CookieGuid" : "H5CookieId",
				t = new RegExp("(^| )" + e + "=([^;]*)(;|$)"),
				n = document.cookie.match(t);
			return n ? n[2] : ""
		},
		getSessionID: function() {
			if (window.TJObject && TJObject.sid) return TJObject.sid;
			var e = l === h.PC ? "SessionGuid" : "H5SessionId",
				t = new RegExp("(^| )" + e + "=([^;]*)(;|$)"),
				n = document.cookie.match(t);
			return n ? n[2] : ""
		},
		getChannelId: function() {
			if (window.TJObject && TJObject.chid) return TJObject.chid
		}
	};
	window.addEventListener("load", function(e) {
		setTimeout(function() {
			p = (new Date).getTime() + "", l !== h.HYBRID && O.setLoadEventData(e.type)
		}, 0)
	});
	var I = location.pathname;
	window.addEventListener("popstate", function(e) {
		i || setTimeout(function() {
			I !== location.pathname && l !== h.HYBRID && (p = (new Date).getTime() + "", O.setLoadEventData("popstate")), I = location.pathname
		}, 0)
	}), document.addEventListener("click", function(e) {
		function t(a) {
			if (null !== a && a !== document) {
				if (a.onclick || "A" === a.tagName && a.href) return a;
				var i = "undefined" != typeof jQuery,
					o = "undefined" != typeof Zepto;
				if (i && (jQuery.data(a, "events") || jQuery._data(a, "events"))) {
					var r = (jQuery.data(a, "events") || jQuery._data(a, "events")).click;
					if (r && r.delegateCount > 0)
						for (var d = 0; d < r.length; d++) {
							var s = r[d].selector;
							if (s && jQuery(e.target).closest(s).length > 0) {
								var c = jQuery(e.target).closest(s).get(0);
								if (c) return "BODY" === c.tagName ? void 0 : c
							}
						}
				} else if (o && a.events)
					for (var p = a.events, u = 0; u < p.length; u++) {
						var f = p[u] && p[u].sel;
						if (f && "click" === (p[u] && p[u].e)) {
							var g = Zepto(e.target).closest(f).get(0);
							if (g) return "BODY" === g.tagName ? void 0 : g
						}
					}
				return n(a, "click") ? a : t(a.parentNode)
			}
		}
		if (!i) {
			var a = t(e.target);
			if (a) {
				var o = (new Date).getTime(),
					r = O.getClickID(a);
				if (g === r && o - f < 300) return;
				g = r, f = o;
				var d = {};
				d.trace_id = (new Date).getTime() + "", d.chars = "UTF-8", d.data = O.deepCopy(u), d.indentifier = md5(r), d.data.properties = {};
				var s = a.innerText && a.innerText.substr(0, 20).replace(/\s/g, "");
				d.data.properties.target = {
					id: encodeURIComponent(a.id),
					classList: encodeURIComponent(a.classList),
					text: encodeURIComponent(s),
					path: encodeURIComponent(r)
				}, O.sendClickEvent(d)
			}
		}
	}, !0), window.addEventListener("message", function(e) {
		if (e.source === window.parent && "loadScript" === e.data.state && (e.origin.indexOf("http://savior.elong.com") > -1 || e.origin.indexOf("https://savior.elong.com") > -1)) {
			i = !0;
			var t = document.head,
				n = document.createElement("script");
			n.type = "text/javascript", n.src = e.data.scriptUrl, t.appendChild(n);
			var a = new Promise(function(e, t) {
				n.onload = n.onreadystatechange = function(n) {
					this.readyState && "loaded" !== this.readyState && "complete" !== this.readyState ? t(0) : e(1)
				}, n.onerror = function() {
					t(0)
				}
			});
			Promise.all([a]).then(function() {
				window.saviorOrigin = e.origin, window.parent.postMessage({
					state: "success",
					version: "1.0.10",
					pageId: O.getPageId()
				}, e.origin)
			}).catch(function(e) {
				0 === e && window.parent.postMessage({
					state: "error"
				}, e.origin)
			})
		}
	}, !1), window.setSaviorData = function(e) {
		if (!c) {
			nativeData = e;
			var t = {
				trace_id: p
			};
			c = !0;
			var n = ["difference_time", "appv", "session_id", "clientType", "islogin", "opens", "ecrd", "chid", "lg", "elev", "mac", "bns"];
			"string" == typeof e && (e = JSON.parse(e)), d = e.difference_time;
			var a = {};
			for (var i in e)
				if (-1 === n.indexOf(i) && (t[i] = e[i], "data" === i)) {
					for (var o in e.data) - 1 === n.indexOf(o) && (a[o] = e.data[o]);
					t.data = a
				}
			t.data.mac = e.data.mac || "", t.data.coord_type = e.data.coord_type || "", t.data.bns = l === h.PC ? "4" : "2", t.data.custom_id_ext = O.getCookieID(), t.data.properties = {}, t.data.properties.loadOrigin = "hybridDOMContentLoaded", u = t.data, O.sendLoadEvent(t)
		}
	}
}();