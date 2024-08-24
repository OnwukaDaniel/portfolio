'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"assets/FontManifest.json": "7a4bd52c79f94dfccacb78045b3bde3e",
"assets/AssetManifest.bin.json": "75b19feb242c6ad04ab47e795b526279",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/assets/icons/folder3.png": "ad88be70e816cff2e8154e6f8acf90a2",
"assets/assets/icons/sun.png": "55c5f8efa8df7991bc526993588394a5",
"assets/assets/icons/howfar.png": "280e9bc3a28a06335b18cc1ef932957f",
"assets/assets/icons/apple.png": "4f658b9a7d067de5238644b78d8d09cc",
"assets/assets/icons/linkedin.png": "17002399457878d62040d2e88051c1f8",
"assets/assets/icons/twitter.png": "ed00158d16e419fdbd4a9c6b52f972c4",
"assets/assets/icons/abb_dating.png": "58c94a076245647f7adebfbc6d2ab573",
"assets/assets/icons/snacc.webp": "f7408e82bf9f753c07cf812c9e065f39",
"assets/assets/icons/crescent_moon.png": "2e20e0babb4290c4225724c96a0f7d23",
"assets/assets/icons/screew.png": "62a0ad1055f343a4ae567b29c344bd78",
"assets/assets/icons/altfit.png": "20ac6e5be7d91f5daf5298ef3a06de3b",
"assets/assets/icons/dart.png": "8f52a95f3cc0e0d6ab2e3cb8d4c7a590",
"assets/assets/icons/folder2.png": "aaa83f0942f5e7a8734b4f6cf30178fb",
"assets/assets/icons/sportifan.png": "6f9c9c1930c5c6faf06855f9676133d3",
"assets/assets/icons/github.png": "af801ded27a84d154673a97428af4577",
"assets/assets/icons/sentrified.png": "4620b6baf8ca00065ef5f0ff1dad4470",
"assets/assets/icons/nigeria_widow_appicon.png": "7364fa3ea56ca0ce06ae1a4ff389416f",
"assets/assets/icons/powerplug.png": "5815b520a3fbc98422f289785ae0292f",
"assets/assets/icons/playstore.webp": "61cd59b598f3913c427beccabc2bda0c",
"assets/assets/icons/folder1.png": "3226aee1de633cecc00ca732765d73ec",
"assets/assets/icons/kotlin.png": "63aa8ab2c3d07da45c906f22667d0aeb",
"assets/assets/icons/star.png": "3c539afa9597ea3d41e5bc174512bc88",
"assets/assets/mocks/altfit15.png": "fad9ee6a0c5ec01cef548e3ff9ad09c5",
"assets/assets/mocks/snacc5.png": "29f42a1d17666c3a6d33b03669aa3b06",
"assets/assets/mocks/abb6.webp": "c1be344eb08a42f1a26d3e9609d82a35",
"assets/assets/mocks/altfit17.png": "c991172ee614a74f8e712ad8263636d6",
"assets/assets/mocks/snacc1.png": "225e575cde15ed5ce048a8e02223923e",
"assets/assets/mocks/altfit2.webp": "c28c9c8e56a6ca9083d88dc4529e3a8d",
"assets/assets/mocks/sportifan3.webp": "bcb9ce03f964cc8d95e29ded27b3f702",
"assets/assets/mocks/sportifan12.png": "274294150cf75347572bf7975b6b61ff",
"assets/assets/mocks/sentrified1.jpg": "908d0848c77143d51234a6131e2dd9ed",
"assets/assets/mocks/sentrified7.webp": "5f6eacd6a19062613129d67ab208bad0",
"assets/assets/mocks/abb8.png": "be23f39c5d5804b8cebd444d35a54f0a",
"assets/assets/mocks/sportifan4.png": "84544a49743d95308053fa716033adb0",
"assets/assets/mocks/snacc4.png": "3bef2594702be49d4d13ebd4dac5996d",
"assets/assets/mocks/sentrified2.webp": "7d4f1ce7dcdb9ee43074526f783d8ce6",
"assets/assets/mocks/altfit5.png": "eeaf5daaa9cfa3620697a8b3d0d8c0ee",
"assets/assets/mocks/altfit7.png": "da2b1a1daeae1b202f4276d732dceaa7",
"assets/assets/mocks/altfit6.png": "938aeb2a2738c54d56461a97692cac01",
"assets/assets/mocks/sportifan10.png": "55936770371ea37f8e99b38eb3cb9f35",
"assets/assets/mocks/sportifan7.png": "17df46ac587a0e0aed5722f2bdd11a5f",
"assets/assets/mocks/altfit18.webp": "849564715e6ac82f3ba04a0e3b504030",
"assets/assets/mocks/abb4.webp": "ba3544dc76c290b1b913084ea03e2673",
"assets/assets/mocks/sportifan8.png": "7615e895312a5893589850e5e7e9e2a1",
"assets/assets/mocks/abb9.png": "eb18c317525c775a4bd1122bd3f3e795",
"assets/assets/mocks/altfit14.png": "328fbf337e2d167fefcabea3cbce7924",
"assets/assets/mocks/sportifan5.png": "97e6906651b6cf3baf8aaea13b0037ab",
"assets/assets/mocks/sentrified3.jpg": "6a8683ce9bdc13d7d610c6d998ba7f06",
"assets/assets/mocks/snacc3.png": "6a8459eb43a743fb74cb0b84a5235a47",
"assets/assets/mocks/sportifan1.webp": "464bdb82952d0a4dc4b9c93451522ba4",
"assets/assets/mocks/snacc2.webp": "2eb01d404b7a69ea281c9fe8f7c807a5",
"assets/assets/mocks/snacc10.webp": "436b3ce10345a1cedb4a32f60de22ab3",
"assets/assets/mocks/snacc7.png": "46f8045c50607ffe29886a495ea3f51b",
"assets/assets/mocks/sentrified4.jpg": "4a963d889752d800ce0902e0bd452615",
"assets/assets/mocks/sentrified5.jpg": "9872f615fe625029411e71fefea63d19",
"assets/assets/mocks/snacc9.webp": "281f6f221f87b6b81e4f729a4284e02d",
"assets/assets/mocks/abb2.webp": "8fe259449b05da1fd0bdfc1462168f6f",
"assets/assets/mocks/altfit3.webp": "e92afda04946e17520083d86826e10c6",
"assets/assets/mocks/sportifan11.png": "e7aeab40cf999c7f50cb6257e94b1562",
"assets/assets/mocks/sportifan6.webp": "3dda3ae955a7cb5396caa8fb0fe33dfc",
"assets/assets/mocks/sentrified6.jpg": "54fdea5d09f77fdc472c770f66e8623c",
"assets/assets/mocks/altfit13.png": "c8fa39422c7d565846548903d5ae88e8",
"assets/assets/mocks/altfit9.png": "1a54d559833be52548c73e7810970ff5",
"assets/assets/mocks/altfit11.png": "2e0326b42e9402081db570b042b72398",
"assets/assets/mocks/altfit10.png": "ed08d5eb4c7525da99f20f87d7d47172",
"assets/assets/mocks/altfit12.png": "6ef896da2092585de3910c02d3efdfb2",
"assets/assets/mocks/abb3.webp": "f819fb059c52f223737a05d01a2c311c",
"assets/assets/mocks/snacc6.png": "825188e6a6d6c1191f7ad2b4005f9182",
"assets/assets/mocks/altfit8.png": "d0f5a9a3a039c93cb826ec2f53ec4c0c",
"assets/assets/mocks/abb1.webp": "6deb5db3f877ed95f577b5043f55437d",
"assets/assets/mocks/abb10.webp": "e829f858fca8bec0fc467edbc2b74e70",
"assets/assets/mocks/snacc8.webp": "19341614a7169c0f7fd29f0418821daf",
"assets/assets/mocks/altfit4.webp": "69e5fbf1740de68b68f70d088cdb686f",
"assets/assets/mocks/altfit16.png": "8eea27c03c7446d9c26be41b88c53712",
"assets/assets/mocks/abb7.webp": "d61c0773d945f878962eea8d543a6358",
"assets/assets/mocks/altfit1.webp": "0227bd612c38ccb74c2cd43ee4ac54ce",
"assets/assets/mocks/sportifan2.webp": "7a8d8bb1bae2012a28f52fe847c4a0db",
"assets/assets/mocks/sportifan9.png": "5f8e512b3b883c17d587d4d9b3d79f84",
"assets/assets/me/me3.webp": "4761b1c2d59c606a701a01e6003731eb",
"assets/assets/power_plug/buy_airtime.mp4": "96521a6bd76ab809bc16de75e85e4ea2",
"assets/assets/power_plug/screen-20240703-215403.mp4": "48cb91b908bbad35aacc92149ca2c27a",
"assets/assets/power_plug/buy_airtime2.jpg": "a2e069d55e7df5da2aa6f46ed6997023",
"assets/assets/power_plug/Screenshot_20240614-051702.jpg": "c3080d13214e7ebf272794304e7dd429",
"assets/assets/power_plug/Screenshot_20240614-051300.jpg": "31000cf34ca5ab41e6b710f5f67e0ceb",
"assets/assets/power_plug/history_page.jpg": "4df56a615a86fc5aefb9e709d1ed2125",
"assets/assets/power_plug/buy_airtime1.jpg": "4c7077c8ad1767aa2a8c4e8552b9edd4",
"assets/assets/power_plug/Screenshot_20240614-051626.jpg": "5fc08f18b867286e9533b581901be8db",
"assets/assets/power_plug/Screenshot_20240703-173725.jpg": "cc273a013ce55ef28efa7a55cde4dacc",
"assets/assets/power_plug/Screenshot_20240614-051420.jpg": "712b2648f73b786541df94223c3c9461",
"assets/assets/power_plug/notification_ppage.jpg": "d83eb312d3e887cf500d9fbb4c607ece",
"assets/assets/power_plug/rewards_page.jpg": "6367d98b287ad5158dcc96b39e0be58e",
"assets/assets/power_plug/Screenshot_20240703-113456.jpg": "5dbe0545ba6c9f2f36e118ec2555f330",
"assets/assets/power_plug/screen-20240702-121523.mp4": "cb89864bf0563e053ae48e9ac4f6ab09",
"assets/assets/power_plug/buy_airtime3.jpg": "c6af13fcc327b05e6002ad6923fddcb1",
"assets/assets/power_plug/Screenshot_20240614-051401.jpg": "ec3c9e76fcb67e9119651c3f8b48c9b6",
"assets/assets/power_plug/security_page.jpg": "aa0924bbb84b8ba299522dcd49a2077f",
"assets/assets/projects/power_plug_bulb.webp": "3ddb7ac2f4af114e5d1310e07bcc0d4d",
"assets/assets/projects/sentrified.jpg": "79e75883d9d3f59a9c7cdca07f6b57e4",
"assets/assets/projects/altfit.webp": "5900eb0b628cf5216e94ae51ec8ecae5",
"assets/assets/projects/sportifan.png": "57a5181f3191361ab2275e276dcd71f5",
"assets/assets/projects/snacc_food.jpg": "52b110cba9592bf27a30af67cbd4b7af",
"assets/assets/display/abb_blind_dating.png": "fd2e2293de597cafb1dd2cbe092c7ed7",
"assets/assets/display/snake_game.png": "6bc1e6392c380f83d838585890c5291a",
"assets/fonts/fira-code/FiraCode.ttf": "975eb23ba46d8164c8401e265af15fd7",
"assets/fonts/nunito/Nunito-Regular.ttf": "b83ce9c59c73ade26bb7871143fd76bb",
"assets/fonts/nunito/Nunito-Italic.ttf": "fac5c8ffb51e06094affdbb7fff9000e",
"assets/fonts/source-code/SourceCodePro-Regular.ttf": "d1f776b31a50ae68ace3819fdc58b065",
"assets/fonts/MaterialIcons-Regular.otf": "493a10d9f798abf98a83f318b438311e",
"assets/AssetManifest.bin": "a3e0ecb4f01aac57bc9c5243504c2fff",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/packages/media_kit/assets/web/hls1.4.10.js": "1e36f4683b03af6692ad2542810f28bc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/AssetManifest.json": "aeab9f9cd6f76b659ccb48172e27bbde",
"assets/NOTICES": "a545b91514fe8c1260e8c3754395a39c",
"index.html": "f6688d2cfa102cd90e872117aa8eb42f",
"/": "f6688d2cfa102cd90e872117aa8eb42f",
"main.dart.js": "d59b8c26507f068110c190f954382818",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "009c9e65172e010890f7f65fde438006",
"flutter_bootstrap.js": "e9997296e4b8387b11b880eabe8535fd",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"flutter.js": "f31737fb005cd3a3c6bd9355efd33061"};
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
