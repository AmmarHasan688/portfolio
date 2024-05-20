'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "eb260e9ae827821beceeed4104f0ad89",
".git/config": "048a55975464a65dbc8147f3761acf88",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "948bbbd1dd1ba04f7b0028c616605456",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "92e433c64eae4289ca04510faca88afe",
".git/logs/refs/heads/master": "833a46801cbad4f87b3655d4ce071d5b",
".git/logs/refs/remotes/origin/master": "a61c7c1d932eeea9e833907cfc6036e4",
".git/objects/00/559eeb290fb8036f10633ff0640447d827b27c": "7fbd4486d5ea862eb2c1d2a07b06b395",
".git/objects/00/fa2123a48d890e4c3088aa6accc085344409d5": "95e0a1e8404a48fc32fe71d3467e2b84",
".git/objects/01/bcca7d1c23955f7aeda6a269b1b7f540802096": "635a6822e2a56f7f333d54c66b0234db",
".git/objects/03/6b42a391e7c203f7b3847bc8a3968599f187ca": "abed36e129ff99ee85869a632c025623",
".git/objects/06/21c880d3aa52f95c76a61e5e910552970ef8eb": "e194096b244e0a0075a95d4430b0de39",
".git/objects/0d/cc12a168a53571b8c9f66284ccd596a5413440": "d4c35573a4e1c90656024e8d3fda9f6c",
".git/objects/0e/d2d9b4dd28f2f7190574fc17353c1118b5e116": "175f6e824cc811bd1a4a12282a46079d",
".git/objects/12/334bbbf92034e74cf84c08f0aff2e51698d491": "a873cc109bc41066d8987cb493f0c266",
".git/objects/12/802ea8198c47120193a7f9c3a2130c08c5dd2b": "cc29398a782a45d1a41825ee3a629ba5",
".git/objects/18/7fb8665f783afd63383c1007cf7f6e0e3a5963": "3e6b015e92f87da8095e7261eb8aff65",
".git/objects/19/34bcede242f419a0b620cc6abbc5eb54e409a6": "42c6e9a7fc94fcaf968b1f704f7941b2",
".git/objects/19/7e1390da4aeab5d09cc54f4a0559da8d006e40": "82ddfb74ff31a77ae12eaa6eafd0bc7f",
".git/objects/1b/904a92b5c700fb68c3a84ff60b62c9fd2ae518": "2f820495288052670263afd7f2bee8a3",
".git/objects/20/a941cb2ea6461eb25e830e17a1017e8cd2e45f": "89d1cb71f93c3c27aef2b41305bd86f5",
".git/objects/21/61ec0c9cddc531d116241e4a78247e53c4fd74": "04abbf6d88f3f89492ce2ceb0c76ba04",
".git/objects/22/54d8fb4975f6c8bb4cea673bdeb4a22bf048d1": "05bc1844430afd5b5d7943f145096d1f",
".git/objects/23/f5e2285becd69f6808c6ebc2bcd5c6728f1fff": "ed8c32b8e812cb7a01a480d792794f3e",
".git/objects/2d/cc5c44ae52e3f3a0caca807d08cac8d29fd09d": "df936d77c5e408beab1e310785ccdf08",
".git/objects/30/332e81c8f193c0611efff5a345d6ac556e0eef": "40733fb86b529c341c2e4bf4ff42ed17",
".git/objects/30/6dac5ed8d40c1a67b51105b2c459a386061bc3": "0a17491a92c8dee602194b7eabdb73a1",
".git/objects/33/44640974548d2ec1596c107a257cf41b90d80f": "68f93d8cedaf8d58e146162e533fee1e",
".git/objects/33/b87b1025138f1bee8aacfe3c1837e08ad40100": "b89bc56d9f49b7df04ed9f6958a313e3",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/3a/4796f6e5d20423f0e5d7c99baa33769c928252": "6c3e291968ff8034d081952d5788ed6d",
".git/objects/3b/6ed11f30a1b110c3196b960bcfcb084fb9f34e": "95bcdc396c263db334341f38066280e6",
".git/objects/3f/98e2de03240d1105b74ad3b5ba9e4a9452cc6e": "3956b6bf0c68042c53079bcbe97afa15",
".git/objects/4a/16a8008469091323d1d54d84a4b6d4064d63c3": "d13491cc7d647621f2bb6178e405b909",
".git/objects/4a/638085b335bba40b7f31e0c09fa1d24dbd293d": "ec3da312a1a2fbf85c995fb8721d22de",
".git/objects/4b/825dc642cb6eb9a060e54bf8d69288fbee4904": "75589287973d2772c2fc69d664e10822",
".git/objects/4b/de143291a44682e03cbed6998945542b2c5901": "8a660682a4dbddcec49c5c067a98f312",
".git/objects/4c/6094cd6fa54a15a2cae759ed163d603f777966": "3abe30022f78e9be718d0df53efcf317",
".git/objects/4c/a2a7c226d2c3e26f0b9dde74214486d0baa896": "734657b1f27c72d07dd9e52a25c020c1",
".git/objects/4e/75d06a1da1e4b6ff9c19b90dcb33b26e9265ab": "3a5e3ef53e0b80e3fe067181627ebc57",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/53/8558f6d26e4591a7752190e30ada2bb31d5271": "665d54ed51b3778b0c5f77b4fb758eac",
".git/objects/54/779242307c7001d321b04c2858ce847927837b": "4e487c0576f22397629b192e1f651d17",
".git/objects/55/a68d9d09bd6b39b9db8712296f8d7fc62b0ebb": "40415baa9e194a881d715452c09a8271",
".git/objects/59/094d80d751c952f0c71a69ed64b043dc70df70": "c9000a5b25d981598d5e8f4a0e29aae5",
".git/objects/60/b331a40e0a9707864c6d58e46c4b9699bace5c": "ce632f419e582ae2f40605a1ded72b39",
".git/objects/65/042403fcb32cc562735e4d6c81d39dbbc6281a": "8d067bbd19753ad579dd09d00a1256e0",
".git/objects/68/93135e5184dce45445bb2db4a58fda0d474d80": "fb1589a64c30f4c9e6b888aa014e8b4e",
".git/objects/6b/cdcc27f22e001e46defdfd9e23f224ff65dd67": "624b5324c1f5198f7f6ede95410d5b7b",
".git/objects/6e/b65586e5a2ae883ed0752e9007ec66d73fc81f": "1df216238787278ba5adfb1489a6c618",
".git/objects/72/8977af0d3785f94386802a1f787cd0ca9c7557": "30cb311841ed2cea1e0b3ea2ee945915",
".git/objects/74/c726e32781bc2c0a83170f6800c0ef4cb9ddcf": "69a43282cb8038fd0577dc0529e5d6cb",
".git/objects/75/1e836c98e12df9ac372c3b3d3d94cfd2fc3524": "81d4a9f2820f141c2c1d314a622d8899",
".git/objects/76/a448ef1ebdbf5e6e30a87766dbf93a3f735522": "d4256a462deb87e19082c0b7a106627a",
".git/objects/77/450f94a0be6465e155e43fc6ab3068452d512b": "5b6d02b71718a2292e7d220efc24a6fe",
".git/objects/7f/c2b1e2cb7ea18240a83e48162045a591371493": "182aa84e653db81693cb1fc346eaeb87",
".git/objects/83/0e3d19e7f2ff19bbb4b955e3a38e3328837e12": "4412f19a8aebd49e1c2fb821b641e232",
".git/objects/83/ab874fe5f9cfc67b04800f05e1f14fd07b2046": "848f54d1ae966af98eb1e43174c6cee9",
".git/objects/83/cc67ff490067e240cba7e68d1cff6e9564cd64": "8a5b3036c53e0c568f50b1a5529fc54c",
".git/objects/86/d23b70be7728f2565c23a7880bb741597520ae": "1d20131011a2c9fc02c26ce54a1a9fe1",
".git/objects/88/75b4040365ba6428fe9e5b621a2cd8aae6c142": "9bd7aa5127c70a5ea1725de01e58f83f",
".git/objects/8d/887abbce778c827b2cac9f04477bc3382af2ac": "d348dc9c96c4a02c96ca89328e322596",
".git/objects/92/9979069579e13106cc08209d2f8dc4e91c39ad": "b049480e448391631966178ceb8f00d8",
".git/objects/96/5f268e91b7f468ea4ded85a8f2abcddfe1f5a9": "6cde620475753acf951a3fbb6b42aca1",
".git/objects/97/96bccb1015a3b0f950c69af1886590d79ba193": "2adcc025ae5026a9df5c661870aa214b",
".git/objects/99/0d475271a9581054e5520776831bc472da0217": "80b87b2a74fe0d88bd28da800158ca56",
".git/objects/9c/e77a9cf768bca6c0c78a028ec88e64978ebc9d": "5cf80e86df0cb2b29824ec0594b30c93",
".git/objects/9c/ee11a94dd8e8a18adae96b3b89a18d671857c6": "023ec8901ecfbe72d2891f42d91be74c",
".git/objects/9f/0c71b70a49664ced448c63edc9c4ff2bf8cf4a": "bfe12b0c8078a4f477699ecebf5fd96c",
".git/objects/a6/59e00463e0ed62a497a207126495512bf62fee": "1b9c3a5403c57bd6db85d23b5ef8741a",
".git/objects/a8/234e78324011301c932efde8dd789fba10495a": "5ad9ca983e505191e13f526cf3be6ade",
".git/objects/ab/96437ee31dbf9605963ed1edbd196b6af989ce": "41557b02b5e57f2687f595842d337588",
".git/objects/ad/a10cbf45084eea1cae5638c1c119c34fc570b1": "6cd34120daca94911f4a55740badcf7b",
".git/objects/af/4f8ae5d1f08aaf578bb24e5053cacbee02bdbb": "0df49b1a6080259aeda6855bacc6332b",
".git/objects/b4/d0c1426b920d037128131f1bfb1d2cf8435f1c": "90025b5ba19e9791a9e246f0c1028192",
".git/objects/b7/de57a527c2f9e8b3e32ac921575bd2f3a2af9d": "4835ca5a24c7f62c54c456944253032e",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bc/3b717d0b505fa31793f9ac86249a6c0a31094f": "1134e9d6d968ea0d405837f2a5509f31",
".git/objects/bc/90f1dd8fc747bf32e7cda474ea5ff3d7b5557f": "2ed502beb51731fa7c4ed2849212c2a5",
".git/objects/be/e8f4796f89bfecd14851c115376d395f35db54": "83cfbab1a0f85e69eea1b11651056ccd",
".git/objects/bf/478822a5ed22d2a836ed7164d918a28f4092ae": "a88281dbd1a1f2671d22cea62880b680",
".git/objects/c0/adba4f78d8e4e7836023f607c67cb3ab8ec628": "b982152ee8583cd61464c971bb1a526c",
".git/objects/c6/897d6802711e55599efa0f1502418071a1ebaa": "7a7fde1bddccff2490c5aa1829091acb",
".git/objects/c6/d3c5377afb6b7ef4987a14d87a638a4f1db1d4": "ca3821b8a46674c49b6c48f64ab96a24",
".git/objects/c6/d6212fdb4dae9dfb57e46a01de69506c895fc4": "2f4a3eab1269cce5d6cf9b4bd40f85bf",
".git/objects/c7/4bc64047527f4e50c9cd224fd64ea953daecd1": "ff2db365af69ec4fb11b4d2cd77d63e7",
".git/objects/cc/5708a0993d2dc1e9f921285bf058f08a2cce33": "e47805f2f0f0856b2d4d3c7321b9af1c",
".git/objects/cd/728846b8f486897f8bdac729247a67fcd8de4f": "b136663ae25e0614296477c4304b857d",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d5/90884797f4c898dbcfecbebe19f591ce9bd2c3": "ad2736fedff40ceed757dd783d8ce046",
".git/objects/d5/b52f5ea9a2686c79a9b0801223981e2b8381d5": "7997b2bf1bd941ba1a41873f66b8ea6e",
".git/objects/d5/b54bd4a898b373f82bb1fa52b9580e7a976e3e": "943e27e1d359e2bc22daf20c70287c19",
".git/objects/d5/cf29abdb09c24a656f6aa575c3b02f489d8c9f": "7aab2e2e0f346e0df1a62139a4d4fcce",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/d9/994fb0253291372b52b9977fb3f4bb62f8ab67": "3d57e6751e1a99f4624524114713dd17",
".git/objects/de/7b5fa4943268feda2ed80a34224c77d8e3d0cf": "90aadd1b03212c25c83402d901d7bcdf",
".git/objects/e1/1e5c257a478eb6edef5e1ec769aeb62342fc4d": "f5cf9ec981f68adee257c110e94284d0",
".git/objects/e3/36430a38e6faa7ddcd996cf059341c2898a856": "38eea8bcca0239103ac069f6adce73ce",
".git/objects/e6/1711adb7b86545306c31abf2346df10fc4ea5c": "59e1305b6ed745599a6f2e437e8eec72",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/e7/bac357e11760094e07fa92497bfab4e74da38e": "168baa6714621ec63387f32cd4cd14a0",
".git/objects/e8/55dc987b0db3ccd24a8869a087233a0e124f27": "9b242467f4dfe05ce7d2727a68a1ea66",
".git/objects/e9/e54514a00276b5d05defaf1d7daa4fa4e8e095": "39334ca48561f6220bb3b8e2b51ea0f7",
".git/objects/ec/3f8ac11906ec022a09d24643bc2df85dbe8965": "d472ca6751e10db16497f59111fb1787",
".git/objects/ec/a4f41246630b2db201f3ec98f57d1c4808b456": "d9b0749f435236561f6c0c69b18b4034",
".git/objects/ec/ee0e4b6167105b9988887c629240f0694d72f8": "d872070971134a76d93177ef77b9c2e1",
".git/objects/ed/af0d61c4f74bb0e6f7f5f3babf10fb48c7477e": "2f12d7bd2e8275983147744b1a5b5c8e",
".git/objects/ee/b22959088e421cb542a319c1a3a2214b7583e2": "3ca2d6d7222254339c695ca26a269c9d",
".git/objects/f1/eac487ad54ccae13e62c08cc184426b66c6ae1": "3768fdeb6e21f11591571efb6bbc7518",
".git/objects/f4/2bf1f0fe8cc9329d455d6f5b95b8332be911e7": "c3009eaad440b3a7eca00c5e37bc8f5b",
".git/objects/f5/a3eadc91e5bfcccdc41a8585c4b2318ac4fe9c": "2cd9bc29d814e8421d66563c216dfd86",
".git/objects/fb/d30076215e9f7540b9e35e5bff2b2c31f29fde": "2847911c577347473772eb10b9fd9000",
".git/objects/fc/de1bb3df8c330568f07ef326d43d8ae3562897": "6e5bf2450330342c243afc3723b9c27e",
".git/objects/fd/3740395fdb43b6a09872f7b3c145b8ebc731a1": "dec974b50dd69bff7d759b7bddd582d4",
".git/refs/heads/master": "c489cf88e0daa5ec25510bada05170e4",
".git/refs/remotes/origin/master": "c489cf88e0daa5ec25510bada05170e4",
"assets/AssetManifest.bin": "49471ecfa9c9e4013fd9482e5be66540",
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
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/profile_bg_icon.png": "e04baf1a860d5b2cc603b0533662b4b6",
"index.html": "1a22c7d004de1075be87ca5fdeb7650f",
"/": "1a22c7d004de1075be87ca5fdeb7650f",
"main.dart.js": "8908c68dbdef57a6dce7c9e34e23259a",
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
