'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "49471ecfa9c9e4013fd9482e5be66540",
"assets/AssetManifest.json": "37267bf56e6c58aa80876900dabc2a1d",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/icons/api.png": "bc0bf02d638d1faafca96963b3b3d7a9",
"assets/assets/icons/app_store.png": "08d8a63efc25f8034eecb3984a5d8982",
"assets/assets/icons/behance.png": "3daa2c232d1c30b6423649fd1ddfc31c",
"assets/assets/icons/email.png": "7740eedf4b372641b8ff246f428bd9a9",
"assets/assets/icons/flutter_logo.png": "70135fb5474e65fa678024389564b59e",
"assets/assets/icons/google_play.png": "630903da9640a429c3d6093dbdea0761",
"assets/assets/icons/google_play_white.png": "50814bd761631371a762edc014317117",
"assets/assets/icons/kotlin_logo.png": "816fd8697b199ae4a7b5dfeccb9ce423",
"assets/assets/icons/linkedin.png": "1816e5c1168ca75e4e824ed21c4f002a",
"assets/assets/images/barcode_scanner/1.png": "377d6520637601d3f7bef8d0f5d19053",
"assets/assets/images/barcode_scanner/2.png": "474da5b87d74be1c4c1b78ba23b741d9",
"assets/assets/images/barcode_scanner/3.png": "d0858a2e58ba634d6d5269f082c900f5",
"assets/assets/images/barcode_scanner/4.png": "db66efe1c00e3d68dcd4544c2f7e0a66",
"assets/assets/images/friday_souq/1.png": "cedb9d641b17a25fe90e655cc3ff045b",
"assets/assets/images/friday_souq/2.png": "abf2103ffb52b66a1f7c548a5dc1b50a",
"assets/assets/images/friday_souq/3.png": "055c93120842bc8f7949b5600b8bc254",
"assets/assets/images/github.png": "bada3b2dca0911637f07d961cd7da5d5",
"assets/assets/images/lwyn/lwyn_driver/10.webp": "2bfd7de4eb4a0ed5aba77660e6c943e6",
"assets/assets/images/lwyn/lwyn_driver/11.webp": "c637105ee390ef6b4c93c9f77bfc0ce6",
"assets/assets/images/lwyn/lwyn_driver/9.webp": "246e170cf55a51c311cdd4da48a61244",
"assets/assets/images/lwyn/lwyn_user/1.webp": "e9fa2fcf2ccf0875e1b0e68f1c27a0f2",
"assets/assets/images/lwyn/lwyn_user/2.webp": "0947d1d024d25a8b6a739843c0a0a54a",
"assets/assets/images/lwyn/lwyn_user/3.webp": "c4dc7786e06bf397e753bbc7e334fc7b",
"assets/assets/images/lwyn/lwyn_user/4.webp": "f865d21fedce93f54f87502d84e14590",
"assets/assets/images/lwyn/lwyn_user/5.webp": "c7a62d684bb80a1e192b0c0d209a028c",
"assets/assets/images/lwyn/lwyn_user/6.webp": "f8d7949e53ef6d0b9eb68b4b53a1c724",
"assets/assets/images/password_keeper/1.png": "6b6415a833ab2fe614daa8d8fbf25b37",
"assets/assets/images/password_keeper/2.webp": "dc08d549547b5179c075aa231a29084e",
"assets/assets/images/password_keeper/3.webp": "0ca8d662b8b90dc71ac2246db58e044b",
"assets/assets/images/pdf_reader/1.webp": "cac2eae104754e02337e5c29f48bf512",
"assets/assets/images/pdf_reader/2.webp": "79cbc53efd23974dd2e2c10365d76431",
"assets/assets/images/pdf_reader/3.webp": "ab96d9b28a31a3a737a3d4a365f4884f",
"assets/assets/images/pdf_reader/4.webp": "b7c7866286aafbb507e05baf6e2d0eca",
"assets/assets/images/pdf_reader/5.webp": "aa24bfa024d07781915c5fecacb45b19",
"assets/assets/images/pdf_reader/6.webp": "0d17dbf01374046ac80d61813d6df896",
"assets/assets/images/profile_bg.jpg": "19e7c504acff4dfba160f943d5ec4d8d",
"assets/assets/images/profile_bg_icon.png": "e04baf1a860d5b2cc603b0533662b4b6",
"assets/assets/images/real_estate/1.png": "d771dee1844cb878ba9f55bbe1f04c4c",
"assets/assets/images/real_estate/2.png": "2426d6759bbcb5ba146e511983a5c7bc",
"assets/assets/images/real_estate/3.png": "de2656e4f822e871bacbb00ce43581b2",
"assets/assets/images/real_estate/4.png": "7ac1652212cc1b60ef44bc58a7ac570a",
"assets/assets/images/sc/1.webp": "06682a53ecba22c887f4a757fec6bdb2",
"assets/assets/images/sc/2.webp": "3518a1cf6f0c3a5052ab6a7f56365d78",
"assets/assets/images/splash.png": "dd259b40105bfb7e44ed30a3a65417e2",
"assets/assets/images/tartus_un.jpg": "24809f37a4debd9e58e19b69084b0a42",
"assets/FontManifest.json": "502dfe70de19b83a5884e12e9735c69a",
"assets/fonts/MaterialIcons-Regular.otf": "79caeeb83cd4bccb336362657f872f0a",
"assets/NOTICES": "15be4db8c21c6dbc1a354125c741ddfc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/profile_bg_icon.png": "e04baf1a860d5b2cc603b0533662b4b6",
"index.html": "fbcfd954b264fea09d4de605adaba44f",
"/": "fbcfd954b264fea09d4de605adaba44f",
"main.dart.js": "a42f21e5dd5064d49c6bb0ff9f476f60",
"manifest.json": "8a0fe6498f0434af4f928d42178d707d",
"splash/img/dark-1x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/dark-2x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/dark-3x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/dark-4x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/light-1x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/light-2x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/light-3x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/img/light-4x.png": "12bee15afbbf0ef7fe361118ad45a3bc",
"splash/splash.js": "d6c41ac4d1fdd6c1bbe210f325a84ad4",
"splash/style.css": "9917b3496bafc85c32a8e01bea7d6427",
"version.json": "2b2b096dc62bc37cd13a0a746699e543"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
