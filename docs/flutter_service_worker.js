'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "e1b34bf8def5ef99d2e8541dda9faa20",
"version.json": "b657e3fa3408c0d36b30236de4e25ca5",
"index.html": "ba68771cf75705c029ea3a7cf61f9184",
"/": "ba68771cf75705c029ea3a7cf61f9184",
"main.dart.js": "ecd5ee6407e6df8122923f6d2e8e306b",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "d0673c3b6dad0246a9f9b5288efd6339",
"icons/Icon-192.png": "84b51195359e46e601d3a401f488e37e",
"icons/Icon-maskable-192.png": "84b51195359e46e601d3a401f488e37e",
"icons/Icon-maskable-512.png": "1ab73f141cdd91d10093bb52c09976a0",
"icons/Icon-512.png": "1ab73f141cdd91d10093bb52c09976a0",
"manifest.json": "73cee0b68df419bae5dd6b3f2d0578f9",
"assets/AssetManifest.json": "ad89456f44117063a1947ce462fa9181",
"assets/loading.gif": "f31331d3a3c314b5a4ac896e341b913e",
"assets/NOTICES": "f4588dbaa6412b4373a5c813f82e3d58",
"assets/FontManifest.json": "df5bab634b9331d681e0f871defb114b",
"assets/AssetManifest.bin.json": "dda84db3941bbafc277efea55cfbbe12",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "a7e2851f85d18e3effe8f0b0d583b954",
"assets/fonts/MaterialIcons-Regular.otf": "0d08f8b9f5234b15dfca533211bdbbc0",
"assets/assets/svg/google_analytics.svg": "24e1a4cbf312a7ba2bfabac0f395e06d",
"assets/assets/svg/firebase.svg": "88ee94be4b90f1140ea6424584b737d7",
"assets/assets/svg/github.svg": "4a4b8675cf9b5c90aad89fe71e670b2d",
"assets/assets/svg/flutter.svg": "202fc092e84fe8921636c4ab54e7fbc7",
"assets/assets/svg/git.svg": "713f879f2cee8b192ca56eeaff648a3d",
"assets/assets/svg/mongodb.svg": "00c3bfe5021754e5b5033bd705e2a8fb",
"assets/assets/svg/dart.svg": "b7971cb6664023671869835fda6afc01",
"assets/assets/svg/app_store.svg": "a5cd8182384c442dd97dcffedeff6558",
"assets/assets/svg/play_store.svg": "f293f49bf1422f2448a4b92bd8a53ed1",
"assets/assets/svg/postman.svg": "08f9bb187ead6f50f240c6c241981138",
"assets/assets/svg/bloc.svg": "27d733ca50820f24f12bf2be4360da3c",
"assets/assets/images/watch.png": "02e296c6bacc13f161bfb3aeebb1081c",
"assets/assets/images/desktop.png": "871739a3628c81038e21717affe27858",
"assets/assets/images/embedded.png": "52b3347b0fea7a1e19b59c53ff4ac080",
"assets/assets/images/instagram.png": "a257c2644cba10f2650171ffb5187b5a",
"assets/assets/images/projects/bdea.png": "f2450cdebde6b8657729dd4216384389",
"assets/assets/images/projects/care_rockets.png": "61d927dd4e126613658b8194ebf5445f",
"assets/assets/images/projects/pran_spandan.png": "a72ff1d3c32ed9695d3829435aca492a",
"assets/assets/images/kapil.png": "da883feb78d4d04273f8b665337f433c",
"assets/assets/images/github.png": "163f69d2987a88ca14f505b2adbe659a",
"assets/assets/images/placeholder.png": "41bc267066191e237270df677a759211",
"assets/assets/images/icons/mail.png": "2f571c60017e7d9f25556e16693db6b9",
"assets/assets/images/icons/instagram.png": "c19dce863ae6a24ad8c5f267033b2ef1",
"assets/assets/images/icons/google-play.png": "fe409516888b88f3c7a4dd67558c467c",
"assets/assets/images/icons/github.png": "ab07ff31d8be50519e1c0ab10e65fc9f",
"assets/assets/images/icons/firebase.png": "fc0e7ed52f4c76138a78eade17a4c1f4",
"assets/assets/images/icons/android.png": "3939a1f7c79307224616aefc57035e52",
"assets/assets/images/icons/medium.png": "b63d880b203fc6ef813cc18ddf79bebd",
"assets/assets/images/icons/linkedin.png": "edcf5418755a1f94d54f7f4133fab9a7",
"assets/assets/images/icons/ios.png": "79c34593c8ec11f71b1e4f89fc8f973b",
"assets/assets/images/icons/api.png": "55ffa16c0778fe057e5f903ba4bed219",
"assets/assets/images/linkedin.png": "5f7fe9877d99680f2b180dc9e77a258a",
"assets/assets/images/web.png": "fb1d932bebc84eff92a91384818cf473",
"assets/assets/images/phone.png": "18d647341f98db30e4ef567dedf66856",
"assets/assets/images/open_link.png": "c3b465d24bf1167cc4e9349894b7b3d1",
"assets/assets/images/google_play.png": "521480539f7c84d3540d2efcf21efb4f",
"assets/assets/images/build_with_flutter.png": "af508d22e6faf877856ebb5e31f48158",
"assets/assets/images/app_store.png": "178c9bf83c3a4040a5b214f7d77c067f",
"assets/assets/images/kapil_blob.png": "d30ee7900220f0548c90d29d327d6958",
"assets/assets/fonts/sora/Sora-Thin.ttf": "cf19f5c4ac432cd736815c489aa692d5",
"assets/assets/fonts/sora/Sora-ExtraBold.ttf": "d788f18b38a544fce1c35733d9d1a676",
"assets/assets/fonts/sora/Sora-Bold.ttf": "59f1a10513024e9d080536ea7a744293",
"assets/assets/fonts/sora/Sora-Light.ttf": "5662cb4703d0aeb2e42e9301ae42e0d3",
"assets/assets/fonts/sora/Sora-Regular.ttf": "e771c55096d16865a23c2795806fb01b",
"assets/assets/fonts/sora/Sora-Medium.ttf": "e3bb21ba620d898557d6537bbe0e9f10",
"assets/assets/fonts/sora/Sora-SemiBold.ttf": "921341e5f1c4ef800e1ee926676791e0",
"assets/assets/fonts/sora/Sora-ExtraLight.ttf": "39c9de554ff1a68219b5cdabc554bcc1",
"assets/assets/fonts/russoOne/RussoOne-Regular.ttf": "8a511841065ce7bd13b845eeea880d6e",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
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
