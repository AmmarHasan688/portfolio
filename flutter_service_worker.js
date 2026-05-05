'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "be68b4746a263665c9e3abfde5325389",
"version.json": "2b2b096dc62bc37cd13a0a746699e543",
"splash/img/light-2x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/dark-4x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/light-3x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/dark-3x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/light-4x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/dark-2x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/dark-1x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/light-1x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/splash.js": "123c400b58bea74c1305ca3ac966748d",
"splash/style.css": "fd07e329d0addaee7af5d9dfe633aa54",
"index.html": "970a393bafe7f7b99abeb8788d95a7e5",
"/": "970a393bafe7f7b99abeb8788d95a7e5",
"main.dart.js": "d674efb3029863c529d4d4831a996d4a",
"flutter.js": "2a09505589bbbd07ac54b434883c2f03",
"main.dart.mjs": "197ee92d66aa942b931b00937ce44e0f",
"icons/profile_bg_icon.png": "562266d7cb4f6ca6145c8f6fdb156ba3",
"manifest.json": "4fdeeccafdd59d822f87b18ccdc36408",
"main.dart.wasm": "044d6ee464b43848d48102e5e4c2e473",
"assets/AssetManifest.json": "0ec992692498ccaffae2759d2feae29f",
"assets/NOTICES": "db5a2f274e61af8f7e64ac7aed80c5fa",
"assets/FontManifest.json": "9f5d17b0de92048b6e9206d26902deea",
"assets/AssetManifest.bin.json": "c934059fdefb81d738f6b9a2532f89cd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "316972cfee72e3fbae9bec9abe559fa4",
"assets/fonts/MaterialIcons-Regular.otf": "b9dd810b4b5ea9fca3cca5aebdfe0bcd",
"assets/assets/images/lwyn/lwyn_driver/9.webp": "246e170cf55a51c311cdd4da48a61244",
"assets/assets/images/lwyn/lwyn_driver/11.webp": "c637105ee390ef6b4c93c9f77bfc0ce6",
"assets/assets/images/lwyn/lwyn_driver/10.webp": "2bfd7de4eb4a0ed5aba77660e6c943e6",
"assets/assets/images/lwyn/lwyn_user/5.webp": "c7a62d684bb80a1e192b0c0d209a028c",
"assets/assets/images/lwyn/lwyn_user/4.webp": "f865d21fedce93f54f87502d84e14590",
"assets/assets/images/lwyn/lwyn_user/3.webp": "c4dc7786e06bf397e753bbc7e334fc7b",
"assets/assets/images/lwyn/lwyn_user/2.webp": "0947d1d024d25a8b6a739843c0a0a54a",
"assets/assets/images/lwyn/lwyn_user/1.webp": "e9fa2fcf2ccf0875e1b0e68f1c27a0f2",
"assets/assets/images/lwyn/lwyn_user/6.webp": "f8d7949e53ef6d0b9eb68b4b53a1c724",
"assets/assets/images/friday_souq/2.png": "abf2103ffb52b66a1f7c548a5dc1b50a",
"assets/assets/images/friday_souq/3.png": "055c93120842bc8f7949b5600b8bc254",
"assets/assets/images/friday_souq/1.png": "cedb9d641b17a25fe90e655cc3ff045b",
"assets/assets/images/sc/2.webp": "3518a1cf6f0c3a5052ab6a7f56365d78",
"assets/assets/images/sc/1.webp": "06682a53ecba22c887f4a757fec6bdb2",
"assets/assets/images/profile_bg_icon.png": "562266d7cb4f6ca6145c8f6fdb156ba3",
"assets/assets/images/tartus_un.jpg": "24809f37a4debd9e58e19b69084b0a42",
"assets/assets/images/github.png": "bada3b2dca0911637f07d961cd7da5d5",
"assets/assets/images/splash.png": "dd259b40105bfb7e44ed30a3a65417e2",
"assets/assets/images/pdf_reader/5.webp": "aa24bfa024d07781915c5fecacb45b19",
"assets/assets/images/pdf_reader/4.webp": "b7c7866286aafbb507e05baf6e2d0eca",
"assets/assets/images/pdf_reader/3.webp": "ab96d9b28a31a3a737a3d4a365f4884f",
"assets/assets/images/pdf_reader/2.webp": "79cbc53efd23974dd2e2c10365d76431",
"assets/assets/images/pdf_reader/1.webp": "cac2eae104754e02337e5c29f48bf512",
"assets/assets/images/pdf_reader/6.webp": "0d17dbf01374046ac80d61813d6df896",
"assets/assets/images/profile_bg.jpg": "e301cacd39fc8e03d9d1651df792f04d",
"assets/assets/images/barcode_scanner/4.png": "db66efe1c00e3d68dcd4544c2f7e0a66",
"assets/assets/images/barcode_scanner/2.png": "474da5b87d74be1c4c1b78ba23b741d9",
"assets/assets/images/barcode_scanner/3.png": "d0858a2e58ba634d6d5269f082c900f5",
"assets/assets/images/barcode_scanner/1.png": "377d6520637601d3f7bef8d0f5d19053",
"assets/assets/images/real_estate/4.png": "7ac1652212cc1b60ef44bc58a7ac570a",
"assets/assets/images/real_estate/2.png": "2426d6759bbcb5ba146e511983a5c7bc",
"assets/assets/images/real_estate/3.png": "de2656e4f822e871bacbb00ce43581b2",
"assets/assets/images/real_estate/1.png": "d771dee1844cb878ba9f55bbe1f04c4c",
"assets/assets/images/password_keeper/3.webp": "0ca8d662b8b90dc71ac2246db58e044b",
"assets/assets/images/password_keeper/2.webp": "dc08d549547b5179c075aa231a29084e",
"assets/assets/images/password_keeper/1.png": "6b6415a833ab2fe614daa8d8fbf25b37",
"assets/assets/icons/email.png": "7740eedf4b372641b8ff246f428bd9a9",
"assets/assets/icons/flutter_logo.png": "70135fb5474e65fa678024389564b59e",
"assets/assets/icons/threedots.png": "4e0a753cc78e2bc5e5c491caa2dd9ca8",
"assets/assets/icons/google_play_white.png": "50814bd761631371a762edc014317117",
"assets/assets/icons/behance.png": "3daa2c232d1c30b6423649fd1ddfc31c",
"assets/assets/icons/linkedin.png": "1816e5c1168ca75e4e824ed21c4f002a",
"assets/assets/icons/kotlin_logo.png": "816fd8697b199ae4a7b5dfeccb9ce423",
"assets/assets/icons/api.png": "bc0bf02d638d1faafca96963b3b3d7a9",
"assets/assets/icons/google_play.png": "630903da9640a429c3d6093dbdea0761",
"assets/assets/icons/app_store.png": "08d8a63efc25f8034eecb3984a5d8982",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"canvaskit/skwasm.js": "37fdb662bbaa915adeee8461576d69d7",
"canvaskit/skwasm_heavy.js": "f5c1413d222bc68856296fc97ac9fec0",
"canvaskit/skwasm.js.symbols": "de1b696f61832e22b7d66cd96d9792e7",
"canvaskit/canvaskit.js.symbols": "c350d7e1b8db7f6e5e6ad4f402d25084",
"canvaskit/skwasm_heavy.js.symbols": "85369ae6767af0faed5e8a02507f21ab",
"canvaskit/skwasm.wasm": "e957b1c63881155e07fc64d709ee5a70",
"canvaskit/chromium/canvaskit.js.symbols": "e5b2c5cfe29b9b350cc7dbb8dcf01062",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "fb2900a56cde76e7a9db8068ed0d9273",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.wasm": "e063920c0f89a2f2bb3a838ce7ec463e",
"canvaskit/skwasm_heavy.wasm": "9da4b66adf2117b97a9afdb9555bfb47"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"main.dart.wasm",
"main.dart.mjs",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
