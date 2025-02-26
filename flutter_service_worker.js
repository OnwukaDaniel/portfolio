'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"index.html": "6ba907d2fe914053f3922fe8de1beaea",
"/": "6ba907d2fe914053f3922fe8de1beaea",
"assets/NOTICES": "ed6e817391a17bf412e9dda30d25a91a",
"assets/assets/icons/twitter.png": "ed00158d16e419fdbd4a9c6b52f972c4",
"assets/assets/icons/ssportifan_icon.png": "22408642dde294874387d800c3fd2844",
"assets/assets/icons/snacc.webp": "0e204f5b1be1d993effb9f693a818ee4",
"assets/assets/icons/altfit.png": "20ac6e5be7d91f5daf5298ef3a06de3b",
"assets/assets/icons/folder1.png": "3226aee1de633cecc00ca732765d73ec",
"assets/assets/icons/sentrified.webp": "3e3aed08900d5ae488896e60a286cddd",
"assets/assets/icons/nbrly_logo.webp": "b690edf9d3a6028eb9ec9d3f4d461fc3",
"assets/assets/icons/kotlin.webp": "d684c2ad419f987176b71a113a0c2a50",
"assets/assets/icons/sportifan.png": "6f9c9c1930c5c6faf06855f9676133d3",
"assets/assets/icons/sun.png": "55c5f8efa8df7991bc526993588394a5",
"assets/assets/icons/playstore.webp": "61cd59b598f3913c427beccabc2bda0c",
"assets/assets/icons/folder2.png": "aaa83f0942f5e7a8734b4f6cf30178fb",
"assets/assets/icons/folder3.png": "ad88be70e816cff2e8154e6f8acf90a2",
"assets/assets/icons/linkedin.png": "17002399457878d62040d2e88051c1f8",
"assets/assets/icons/apple.png": "4f658b9a7d067de5238644b78d8d09cc",
"assets/assets/icons/abb_dating.png": "58c94a076245647f7adebfbc6d2ab573",
"assets/assets/icons/powerplug.png": "5815b520a3fbc98422f289785ae0292f",
"assets/assets/icons/nigeria_widow_appicon.png": "7364fa3ea56ca0ce06ae1a4ff389416f",
"assets/assets/icons/dart.png": "8f52a95f3cc0e0d6ab2e3cb8d4c7a590",
"assets/assets/icons/crescent_moon.png": "2e20e0babb4290c4225724c96a0f7d23",
"assets/assets/icons/howfar.png": "280e9bc3a28a06335b18cc1ef932957f",
"assets/assets/icons/altfit_icon.png": "5720da484949685626ee2c0c88373af0",
"assets/assets/icons/github.png": "af801ded27a84d154673a97428af4577",
"assets/assets/display/snake_game.png": "6bc1e6392c380f83d838585890c5291a",
"assets/assets/me/me3.webp": "4761b1c2d59c606a701a01e6003731eb",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "06870943175ca41757f0128ef54dbe42",
"assets/fonts/nunito/Nunito-Italic.ttf": "fac5c8ffb51e06094affdbb7fff9000e",
"assets/fonts/nunito/Nunito-Regular.ttf": "b83ce9c59c73ade26bb7871143fd76bb",
"assets/fonts/source-code/SourceCodePro-Regular.ttf": "d1f776b31a50ae68ace3819fdc58b065",
"assets/fonts/MaterialIcons-Regular.otf": "a9478964733d1e52047c1b013db69e14",
"assets/fonts/fira-code/FiraCode.ttf": "975eb23ba46d8164c8401e265af15fd7",
"assets/fonts/open-sans/OpenSans-Italic.ttf": "60fdf6ed7b4901c1ff534577a68d9c0c",
"assets/fonts/open-sans/OpenSans-Bold.ttf": "0a191f83602623628320f3d3c667a276",
"assets/fonts/open-sans/OpenSans-ExtraBold.ttf": "f0af8434e183f500acf62135a577c739",
"assets/fonts/open-sans/OpenSans-MediumItalic.ttf": "349744a1905053fad6b9ef13c74657db",
"assets/fonts/open-sans/OpenSans-Medium.ttf": "dac0e601db6e3601159b4aae5c1fda39",
"assets/fonts/open-sans/OpenSans-BoldItalic.ttf": "3dc8fca5496b8d2ad16a9800cc8c2883",
"assets/fonts/open-sans/OpenSans-Light.ttf": "c87e3b21e46c872774d041a71e181e61",
"assets/fonts/open-sans/OpenSans-Regular.ttf": "931aebd37b54b3e5df2fedfce1432d52",
"assets/fonts/open-sans/OpenSans-ExtraBoldItalic.ttf": "ae6ca7d3e0ab887a9d9731508592303a",
"assets/fonts/open-sans/OpenSans-LightItalic.ttf": "07f95dc31e4f5c166051e95f554a8dff",
"assets/FontManifest.json": "baa439469e1ed08ac7086374d649906c",
"assets/AssetManifest.bin.json": "c9201784990af0537bc71aa5bf710139",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/packages/media_kit/assets/web/hls1.4.10.js": "bd60e2701c42b6bf2c339dcf5d495865",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/AssetManifest.json": "6a1d470d1b8892427efcae6df411f030",
"version.json": "009c9e65172e010890f7f65fde438006",
"flutter.js": "f31737fb005cd3a3c6bd9355efd33061",
"main.dart.js": "eabb49b0a82a6ff4540a0e8e025e5fad",
"icons/Icon-maskable-512.png": "538500517e1deafb5719817c658453b7",
"icons/Icon-192.png": "d3b62f367298323a9eaaaceba14094ad",
"icons/Icon-512.png": "538500517e1deafb5719817c658453b7",
"icons/Icon-maskable-192.png": "d3b62f367298323a9eaaaceba14094ad",
"manifest.json": "2b05b2acc75e0b8a812c880507c56618",
"favicon.png": "5c991dcc6f731559feea3c86bba7cd0f",
"flutter_bootstrap.js": "23591f3a91674edd9d66bd318374949f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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
