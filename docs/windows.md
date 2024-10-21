# Configure Applimode for Windows



> [!IMPORTANT]
> * This guide is written in detail for beginners. Skip the unnecessary parts.
> * To install your Applimode app on an iOS device, you need a device running macOS. For more details, visit [Configure Applimode for macOS](https://github.com/mycalls/applimode/blob/main/docs/macos.md).



## Table of contents
* [Install Git](#install-git)
* [Install VSCode and the Flutter SDK](#install-vscode-and-the-flutter-sdk)
* [Install Android Studio](#install-android-studio)
* [Configure Firebase](#configure-firebase)
* [Install Node.js and the Firebase CLI and the Futterfire CLI](#install-nodejs-and-the-firebase-cli-and-the-futterfire-cli)
* [Configure your project](#configure-your-project)
* [Change the images for the app icon and the launch screen](#change-the-images-for-the-app-icon-and-the-launch-screen)
* [Change the app's main color](#change-the-apps-main-color)
* [Build your Applimode app](#build-your-applimode-app)
* [Add administrator](#add-administrator)
* [Admin settings and custom settings](#admin-settings-and-custom-settings)
* [Build and release a web app](#build-and-release-a-web-app)
* [Build an APK for Android](#build-an-apk-for-android)
* [Configure push notification (Optional)](#configure-push-notification-optional)
* [Configure Cloudflare R2 (Optional)](#configure-cloudflare-r2-optional)
* [Configure Cloudflare D1 (Optional)](#configure-cloudflare-d1-optional)
* [Configure Cloudflare CDN (Optional)](#configure-cloudflare-cdn-optional)
* [Configure Youtube image proxy (Optional)](#configure-youtube-image-proxy-optional)
* [Configure Youtube video proxy (Optional)](#configure-youtube-video-proxy-optional)
* [Use your custom domain (Optional)](#use-your-custom-domain-optional)
* [Upgrade your project with the new Applimode version](#upgrade-your-project-with-the-new-applimode-version)
* [Configure Cloud Firestore Security Rules](#configure-cloud-firestore-security-rules)
* [Troubleshooting](#troubleshooting)



## Install Git
* Download and install [Git](https://gitforwindows.org/).
<!--
* Press ```Windows``` + ```S```, type **PowerShell** and click.
* Run the following command.
```sh
git --version
```
* Close **PowerShell**.
-->



## Install VSCode and the Flutter SDK
* Download, install, and launch [VSCode](https://code.visualstudio.com/).
* Click **View** (on the top menu of VSCode) and select **Extensions**. (or press ```Ctrl``` + ```Shift``` + ```X```)
* Type *flutter* and click **Install**.
* Click **View** (on the top menu of VSCode) and select **Command Palette...**. (or press ```Ctrl``` + ```Shift``` + ```P```)
* In the **Command Palette**, type *flutter*.
* Select **Flutter: New Project**.
* Click **Download SDK** at the bottom right.
* Click **New folder** (or press ```Ctrl``` + ```Shift``` + ```N```) and name it *dev*.
* Click **Clone Flutter**.
* Click **Add SDK to PATH**.
<!--
* To open the **VScode**'s built-in terminal, click **View** (on the top menu of VSCode) and select **Terminal**.
* Run the following command.
```sh
flutter doctor
```
-->
* Close **VScode**.



## Install Android Studio
* Download, install, and launch [Android Studio](https://developer.android.com/studio).
* Click **Pulgins** (on the left sidebar), type *flutter*, click **Install**, and then click **Restart IDE**.
* Click **Projects** (on the left sidebar), then **More Actions** (in the Center), and finally **SDK Manager**.
* Click **SDK Tools** (on the top menu).
* Check **Android SDK Command-line Tools** and **Google USB Driver**, then click **Apply** (on the bottom right).
* Open **VSCode**, click **View** (on the top menu of VSCode), and select **Terminal**.
* Run the following command and press ```y``` to all questions.
```sh
flutter doctor --android-licenses
```
<!--
```sh
flutter doctor
```
-->
* Close **Android Studio** and **VSCode**



## Configure Firebase
* Sign up or log in to [Firebase](https://firebase.google.com).
* Click [Go to console](https://console.firebase.google.com).
* Click **Add project**.
* Enter a project name and click **Continue**.
* Enable **Google Analytics for your project** then click **Continue**.
* Select your Google Analytics account or select **Default Account for Firebase**. Click **Create Project**.
<!--* Disable **Google Analytics** and click **Create project**. (You can change this setting later.)-->
* Click **Upgrade** on the bottom of the left sidebar.
* Click **Select plan** to choose Blaze plan.
> [!NOTE]
> To use complete services like - Cloud Storage, Cloud Functions to trigger push notifications etc, Vertex AI in Firebase & to remove all limits, you must **Upgrade** the default **Spark plan** (Free Plan) to **Blaze plan** (Monthly Billed Paid Plan). However, Google will only Bill you monthly after your free quota gets exhausted depending upon the usage. You can also set [Billing Alerts](https://firebase.google.com/docs/projects/billing/avoid-surprise-bills#set-up-budget-alert-emails) when it crosses your mentioned amount every month. You may refer [Firebase official pricing page](https://firebase.google.com/pricing) to compare both plans.
* Click **Build** (on the left sidebar) and click **Authentication**.
* Click **Get started** and then click **Email/Password**.
* Enable **Email/Password** and click **Save**.
* Click **Build** (on the left sidebar) and then click **Firestore Database**.
* Click **Create database** and select a location for your database.
* Click **Next** and then click **Create**.
* Click **Build** (on the left sidebar) and then click **Storage**.
* Click **Get started**, then click **Next**, and finally click **Done**.
* Click **Build with Gemini** (on the left sidebar).
* Click **Get started** on the **Vertex AI in Firebase** card.
* Click **Enable APIs**, then click **Continue**.



## Install Node.js and the Firebase CLI and the Futterfire CLI
* Download and install [Node.js](https://nodejs.org).
* Press ```Windows``` + ```S``` or the search button and type *PowerShell*.
* Right-click and select **Run as administrator**.
* Run the following command.
```sh
Set-ExecutionPolicy Unrestricted
```
```sh
npm install -g firebase-tools
```
* Close **PowerShell** and reopen it.
* Run the following command.
```sh
firebase login
```
```sh
dart pub global activate flutterfire_cli
```
* Press ```Windows``` + ```S``` or the search button and type *ENV*.
* Select **Edit environment variables for your account**.
<!--
* Select **Edit the system environment variables**.
* Click **Environment Variables...** on the **Advanced** tab.
-->
* In the **User variables for (username)** section, double-click **Path**.
* Click **New** and type the following path.
```
%USERPROFILE%\AppData\Local\Pub\Cache\bin
```
* Click **OK** two times.



## Configure your project
* Close **PowerShell** (if it is open) and reopen it.
* Run the following commands.
```sh
mkdir ~/projects; cd ~/projects;
```
```sh
git clone https://github.com/mycalls/applimode.git
```
```sh
cd applimode/applimode-tool/
```
```sh
node index.js init
```
* Enter your project name, long app name, short app name, and organization name.
> [!NOTE]
> * The project name is used to create the project folder name and the bundle ID for the apps (web, Android, iOS).
> * The long app name is mainly used for web apps.
> * The short app name is mainly used for mobile apps (iOS, Android).
> * The organization name, along with the project name, is used to create each bundle ID for use in the App Store and Play Store. The bundle ID must be unique, so please decide carefully.
* Close **PowerShell**.
* Open **VSCode**.
* Click **File** (on the top menu of VSCode), select **Open Folder**, choose your project folder (maybe in the **projects** folder), and click **Open**.
* Click **View** (on the top menu of VSCode), then select **Terminal**.
* Run the following commands in order:
```sh
flutter pub get
```
```sh
dart run build_runner build -d
```
```sh
flutterfire configure --platforms=android,ios,web
```
> when asked something, press **n** or **N**.
```sh
cd applimode-tool; node index.js firebaserc; cd ..
```
```sh
firebase deploy --only firestore
```
```sh
firebase deploy --only storage
```

> [!NOTE]
> * If you want to enter commands all at once, run the following command:
> ```sh
> flutter pub get; dart run build_runner build -d; flutterfire configure --platforms=android,ios,web; cd applimode-tool; node index.js firebaserc; cd ..; firebase deploy --only firestore; firebase deploy --only storage;
> ```

* Open [Google Cloud console](https://console.cloud.google.com/) in your web browser.
* Sign up or log in.
* Select your project on the top left.
* Click **Activate Cloud Shell** on the top right.
![gcp-console-head](https://github.com/mycalls/applimode-examples/blob/main/assets/gcp-console-head.png?raw=true)
* Run the following command in the shell at the bottom.
```sh
echo '[{"origin": ["*"],"method": ["GET"],"maxAgeSeconds": 3600}]' > cors.json
```
<!--
> touch cors.json
> nano cors.json
[
  {
    "origin": ["*"],
    "method": ["GET"],
    "maxAgeSeconds": 3600
  }
]
-->
* Open or go to your [Firebase console](https://console.firebase.google.com/) in your web browser.
* Click your project.
* Click **Storage** (on the left sidebar).
* Click the Copy folder path icon (to the left of the URL starting with **gs://**) to copy your cloud storage bucket.
![fb-storage-head](https://github.com/mycalls/applimode-examples/blob/main/assets/fb-storage-head.png?raw=true)
* Go back to your Google Cloud console.
* Run the following commands in the shell at the bottom.
```sh
gsutil cors set cors.json gs://<your-cloud-storage-bucket>
```
```sh
exit
```



## Change the images for the app icon and the launch screen
* If you have prepared images for the app icon and launch screen of your project, follow the steps below. If you don't have them yet, you can skip this step and set them later.
<!--Todos 피그마 공유 템플릿 파일 만들고 링크 제공할 것-->
> [!NOTE]
> * app-bar-logo.png - 128 * 128 (Margin of about 4 px, no background)
> * app-icon-512.png - 512 * 512 (Use an image of 1024 px)
> * app-icon-1024.png - 1024 * 1024 (Margin of about 160 px)
> * app-logo-android12.png - 960 * 960 (Margin of about 240, no background)
> * app-logo.png - 720 * 720 (Margin of about 8 px, no background)
* Open File Explorer. (press ```Windows``` + ```E```)
* Open your project folder, open the **assets** folder, and then open the **images** folder.
* Replace the image files in the folder with the image files you prepared.
* Go to or open your Applimode project in **VSCode**.
* Click **View** (on the top menu of VSCode), then select **Terminal**.
* Run the following commands in order:
```sh
dart run flutter_native_splash:create
```
```sh
flutter pub run flutter_launcher_icons
```



## Change the app's main color
* Go to or open your Applimode project in **VSCode**.
* Click **View** (on the top menu of VSCode), then select **Terminal**.
* Run the following command.
```sh
cd applimode-tool; node index.js color; cd ..
```
* Type the color code in hex format (e.g., fcb126, f37d76).
> [!NOTE]
> You can also change the main color in the **Admin Settings** after launching the app. For more detailed instructions, refer to the [following chapter](#admin-settings-and-custom-settings).



## Build your Applimode app
> [!IMPORTANT]
> * Do this chapter after your Firestore indexing is complete. (about 5 minutes) You can check your Firestore indexing here: [Firebase console](https://console.firebase.google.com/) > your project > Firestore Database > Indexes.
> * To install your Applimode app on an iOS device, you need a device with macOS installed. For more details, visit [Configure Applimode for macOS](https://github.com/mycalls/applimode/blob/main/docs/macos.md).
* Go to or open your Applimode project in **VSCode**.
![vscode-run](https://github.com/mycalls/applimode-examples/blob/main/assets/vscode-run.png?raw=true)
* Click the Select Device section at the bottom right. (or press ```Ctrl``` + ```Shift``` + ```P```, then type *flutter* and select **Flutter: Select Device**.)
<!--
* Click **View** (on the top menu of VSCode) and select **Command Palette**. (or press ```Ctrl``` + ```Shift``` + ```P```)
* Type *flutter* and select the **Flutter: Select Device**.
-->
* Select a target device from the Select Device prompt.
* Press ```Ctrl``` + ```Shift``` + ```D```. (or click the **Run and Debug** button on the left menu)
* Click the **Select Debug Mode** button at the top left and select **Run (release mode)**.
> [!NOTE]
> If you change the settings in the **custom_settings.dart** file and want to see how they are applied in your Applimode app, select Chrome in the **Select Device** section and **Run (debug mode)** in the **Select Debug Mode** section. You can see the changes applied by pressing ```Ctrl``` + ```S``` after modifying the values in the **custom_settings.dart** file.
* Click the **Start Debugging** button at the top left. (or press ```F5``` or ```Fn``` + ```F5```)
<!--
* Click Run (on the top menu of VSCode) and select **Start Debugging**. (or press ```F5``` or ```Fn``` + ```F5```)
-->
* After the app build completes, click the write button on the bottom right.
* Click **Register** on the login screen and complete your signup.
* Click the write button and write the first post. (if you are testing Cloudflare R2 or CDN, write the post with an image or a video)
* To end the test drive, click **Run** (on the top menu of VSCode) and select **Stop Debugging**. (or press ```Shift``` + ```F5``` or ```Shift``` + ```Fn``` + ```F5```)
<!--
> * In debugging mode, the performance of most apps becomes very slow. Don't worry about the performance because Applimode in release mode is very fast.
-->
> [!NOTE]
> * Select Chrome or Edge for web apps.
> * To enable Developer options and USB debugging on your android device, refer to [this page](https://developer.android.com/studio/debug/dev-options).
> * If you connect an Android device but it does not appear in the device list, try changing the USB Preferences to Charging or File transfers.
<!-- * To enable them, go to Settings > About phone > Software information (there may not be) > Build number, click 7 times in a row. Return to the previous screen to find Developer options at the bottom. Then turn on USB debugging.-->



## Add administrator
* Open or go to your [Firebase console](https://console.firebase.google.com/) in your web browser. 
* Click your project.
* Click **Authentication** (on the left sidebar).
* Click the **Copy UID** button next to your **User UID**. (Move your mouse cursor over your **User UID** to display the button)
![fb-auth-head](https://github.com/mycalls/applimode-examples/blob/main/assets/fb-auth-head.png?raw=true)
* Click **Firestore Database** (on the left sidebar).
* Click the users collection and select your uid.
* Click the **Edit field** button (pencil shape) next to the **isAdmin** field. (Move your mouse cursor over the **isAdmin** field to display the **Edid field** button)
![fb-firestore-isadmin](https://github.com/mycalls/applimode-examples/blob/main/assets/fb-firestore-isadmin.png?raw=true)
* Change the value from **false** to **true** and click **Update**.
* Click **Rules** (on the top menu).
* Change the first word **adminUid** in line 8 (or near it) to your uid. (paste your uid)
> ex) return request.auth.uid in ["9a6sIEiAldOzFIZ9hO2SxaG6Db63", "adminUid"];
![fb-firestore-rules](https://github.com/mycalls/applimode-examples/blob/main/assets/fb-firestore-rules.png?raw=true)
* Click **Publish**
> [!CAUTION]
> If you designate someone as an administrator, the user can change admin settings in the app, edit, delete or block all posts, and even block all posts from a specific user.



## Admin settings and custom settings
> [!NOTE]
> * If you change the custom settings file, you must rebuild it to apply it to your app.
> * When changing Admin settings, users fetch the values ​​on your app's first startup, and the values ​​are applied on your app's second startup.
> * The default minimum fetch interval for Admin settings is 600 seconds (10 minutes), and you can change it in the custom settings file.

* [Add administrator](#add-administrator) is required first to activate the Admin Settings tab in your app.
<!--
* Go to or open your Applimode project in **VSCode**.
* Build your Applimode app. (press ```F5``` or ```Fn``` + ```F5``` or check [this chapter](#build-your-applimode-app) for how to build.)
-->
* Open your Applimode app. (If you selected Chrome or Edge as your target device in the [Build your Applimode app](#build-your-applimode-app) chapter, press ```F5``` or ```Fn``` + ```F5``` to rebuild.)
* Click the menu button on the top left of the home screen.
* Click **Admin settings**. (If you can't find the Admin settings tab, restart your app.)
* After changing the settings, click Save at the bottom.
<!--todos 각 설정에 대한 상세 설명 페이지 만들고 여기에 링크 추가-->
* To change the custom settings, go to or open your Applimode project in **VSCode**.
<!--
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select your project folder (maybe in the **projects** folder) and click **Open**.
-->
* Press ```Ctrl``` + ```P``` and type *custom_settings.dart*, then click.
* Change appCreator and appVersion to your desired values.
> [!IMPORTANT]
> fullAppName, shortAppName, underbarAppName, camelAppName, androidBundleId, appleBundleId, and firebaseProjectName are values ​​used when upgrading your project. Do not change them. If you want to make changes, refer to [this chapter](#configure-your-project) and configure your project again.
* The values ​​with **spare** in front of the name are ​​used when users first run your app after installing it. (when Admin settings are not yet activated). You can change them to whatever values you want.
> [!NOTE]
> * If you change a value in **Admin settings**, it is recommended to also change the corresponding spare value in the **custom_settings.dart** file.
> * For example, if you change the **App style** value, also change the **sparePostsListType** value in the **custom_settings.dart** file.
> * The **App style** values ​​in **Admin Settings** correspond to the **sparePostsListType** values ​​in the **custom_settings.dart** file as follows.
>   * **List** - **PostsListType.small**
>   * **Card** - **PostsListType.square**
>   * **Page** - **PostsListType.page**
* If you want to register your app on the App Store or Play Store, add the corresponding links to **termsUrl** and **privacyUrl**.
* If you change the value of **isInitialSignIn** to true, only logged in users will be able to use your app. You can also use Cloud Firestore Security Rules for even stronger security. Please read [this chapter](#configure-cloud-firestore-security-rules) for more details.
* If you change the value of **adminOnlyWrite** to true, only users designated as administrators can write posts.
* Read [this chapter](#configure-push-notification-optional) to change the values ​​of **useFcmMessage**, **fcmVapidKey**, and **useApns** to true.
* When you have made all changes, press ```Ctrl``` + ```S```.
* We will prepare more detailed information on all values ​​of Admin settings and Custom settings soon.



## Build and release a web app
<!--
// build/web
> firebase init
> flutter build web --release
> flutter build web --release --web-renderer=html
> flutter build web --release --web-renderer=canvaskit
> firebase deploy
> firebase deploy --only hosting
-->
* Go to or open your Applimode project in **VSCode**.
<!--
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select your project folder and click **Open**.
-->
* Click **View** (on the top menu of VSCode) and select **Terminal**.
* Run the following command:
```sh
flutter build web --release --web-renderer=html
```
```sh
firebase deploy --only hosting
```
> [!IMPORTANT]
> If you change the custom settings file, you need to re-run the commands to update your app.
* Open or go to your [Firebase console](https://console.firebase.google.com/) in your web browser. 
* Click your project.
* Click **Hosting** (on the left sidebar).
* Scroll down to find the **Domains** section.
* Click the domain address.
* If you want to use your custom domain, read [this chapter](#use-your-custom-domain-optional).
* Please visit [this page](https://github.com/mycalls/applimode/blob/main/docs/pwa.md) for how to install a PWA(Progressive Web App) on your phone and computer.
<!--todos pwa 설치 방법 페이지 만들고 링크 추가-->



## Build an APK for Android
* Go to or open your Applimode project in **VSCode**.
<!--
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select your project folder and click **Open**.
-->
* Click **View** (on the top menu of VSCode) and select **Terminal**.
* Run the following command:
```sh
flutter build apk --release --target-platform=android-arm64
```
> [!IMPORTANT]
> If you change the custom settings file, you need to re-run the command to update your app.
* You can find your apk file here: 
**\<your-project-folder\>\build\app\outputs\apk\release** or **\<your-project-folder\>\build\app\outputs\flutter-apk\app-release.apk**
> For more details, visit [this link](https://docs.flutter.dev/deployment/android#build-the-app-for-release).



## Configure push notification (Optional)
> [!NOTE]
> * To use APNs (Apple Push Notification service), you must register for [Apple Developer Program](https://developer.apple.com/programs/). (99 USD)
> * To use APNs, you need a device with macOS installed. For more details, visit [Configure Applimode for macOS]().
* Go to or open **VSCode**.
* Click **File** (on the top menu of VSCode) and select **Open Folder** and select your project folder (maybe in the **projects** folder) and click **Open**.
* Click **View** (on the top menu of VSCode) and select **Terminal**.
* Run the following commands.
```sh
cd applimode-tool; node index.js fcm; cd ..
```
> [!NOTE]
> * To find the vapid key, open or go to your [Firebase console](https://console.firebase.google.com/).
> * Click your project.
> * Click the settings button on the top of the left sidebar.
> * Click **Project settings**.
![fb-project-settings](https://github.com/mycalls/applimode-examples/blob/main/assets/fb-project-settings.png?raw=true)
> * Click Cloud Messaging on the top tab menu and scroll to the bottom.
> * Click **Generate key pair**.
> * Copy Key pair of Web Push certificates.
![fb-cloud-message-web](https://github.com/mycalls/applimode-examples/blob/main/assets/fb-cloud-message-web.png?raw=true)
<!--
```
firebase init functions
```
-->
```
cd functions
```
```
npm install
```
```
firebase deploy --only functions
```
```
cd ..
```



## Configure Cloudflare R2 (Optional)
> [!NOTE]
> * The biggest advantage of R2 is that transfer fees are free. (Firebase Cloud Storage is free for transfers up to 1 GB per day, after which a fee of $0.12 is charged for each GB)
> * You can also use Cloudflare's CDN for free by registering a domain and connecting it with R2.
> * If you are building a video-centric app, I highly recommend using Cloudflare R2.
> * [R2 pricing plans](https://developers.cloudflare.com/r2/pricing/)
> * [Workers pricing plans](https://developers.cloudflare.com/workers/platform/pricing/)
* Go to the [Cloudflare console](https://dash.cloudflare.com/sign-up).
* Sign up or log in.
* Click **R2** (on the left sidebar).
* Fill out the **R2** subscription form and complete the **R2** subscription.
* Open **PowerShell**.
* Run the following commands.
```sh
cd ~/projects
```
```sh
npm create cloudflare@latest <your_r2_worker_name>
```
> ex) npm create cloudflare@latest applimode-r2-worker
* Select default values ​​for all questions.
* Close **PowerShell**.
* Go to or open **VSCode**.
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select the <your_r2_worker_name> folder and click **Open**.
* Click **View** (on the top menu of VSCode) and select **Terminal**.
* Run the following command:
```sh
npx wrangler r2 bucket create <your_r2_bucket_name>
```
> ex) npx wrangler r2 bucket create applimode-bucket
* Press ```Ctrl``` + ```P``` and type *wrangler.toml*, then click.
* Add the following to the end of your wrangler.toml file.
```
account_id = "YOUR_ACCOUNT_ID" # ← Replace with your Account ID.
workers_dev = true

[[r2_buckets]]
binding = "MY_BUCKET"
bucket_name = "YOUR_BUCKET_NAME" # ← Replace with your bucket name.
```
* Update **account_id** and **bucket_name**.
> * To find your account ID and bucket name, go to [Cloudflare dashboard](https://dash.cloudflare.com/) and click R2 (on the left sidebar).
> * Click the **Click to copy** button below **Account ID** on the right side.
> * Copy your bucket name below **Buckets** on the center side.
![cf-r2-overview](https://github.com/mycalls/applimode-examples/blob/main/assets/cf-r2-overview.png?raw=true)
<!-->
> * Or you can also find them using the following commands
```sh
npx wrangler whoami 
```
```sh
npx wrangler r2 bucket list
```
-->
* To save, press ```Ctrl``` + ```S```. (or **File** > **Save**)
<!--
* Click **File** (on the top menu of VSCode) and select **New Window**.
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select the <your_applimode_project_name> folder and click **Open**. (maybe in your **projects** folder)
* Press ```Ctrl``` + ```P``` and type *r2_worker.index.ts* and click.
* Press ```Ctrl``` + ```A``` and press ```Ctrl``` + ```C```.
 -->
* Open this [page](https://github.com/mycalls/applimode-examples/blob/main/r_two_Worker/r2_worker.index.ts) and click the **Copy raw file** button (next to the **Raw** button) on the upper-right corner of the file view.
![copy-raw-file](https://github.com/mycalls/applimode-examples/blob/main/assets/gh-copy-raw-file.png?raw=true)
* Go back to VSCode.
* Press ```Ctrl``` + ```P``` and type *index.ts*, then click.
* Press ```Ctrl``` + ```A``` and press ```Ctrl``` + ```V```.
* To save, press ```Ctrl``` + ```S```. (or **File** > **Save**)
* Click **Terminal** at the bottom of VSCode and run the following commands.
```
npx wrangler secret put AUTH_KEY_SECRET
```
<!--Enter a secret value:-->
* Type a secret for your worker.
```
npx wrangler deploy
```
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select your project folder (maybe in the **projects** folder) and click **Open**.
* Click **View** (on the top menu of VSCode), then select **Terminal**.
* Run the following commands in order.
```sh
cd applimode-tool; node index.js worker; cd ..
```
* Type your secret for your worker that you entered.
```sh
dart run build_runner clean
```
```sh
dart run build_runner build --delete-conflicting-outputs
```
* Press ```Ctrl``` + ```P``` and type *custom_settings.dart*, then click.
* Press ```Ctrl``` + ```F``` and type *useRTwoStorage*.
* Change the useRTwoStorage value from **false** to **true**.
> ex) const bool useRTwoStorage = true;
* Go to the [Cloudflare dashboard](https://dash.cloudflare.com/).
* Go to Workers & Pages (on the left sidebar) and in Overview, select your Worker.
* Go to Settings > Triggers > Routes.
* Copy your route.
![cf-workers-triggers](https://github.com/mycalls/applimode-examples/blob/main/assets/cf-workers-triggers.png?raw=true)
* Go back to VSCode.
* Press ```Ctrl``` + ```F``` and type *rTwoBaseUrl*.
* Change the rTwoBaseUrl value from **yourR2WorkerUrl** to the route you copied.
> ex) const String rTwoBaseUrl = 'applimode-r2-worker.yourID.workers.dev';
* Press ```Ctrl``` + ```S```. (or **File** > **Save**)
* To make sure it works well, follow the [Build your Applimode app](#build-your-applimode-app) chapter.



## Configure Cloudflare D1 (Optional)
> [!NOTE]
> * Applimode supports hashtag search by default. Search is possible only if the user adds # in front of the word when writing a post.
> * If you only want to use hashtag search, skip this chapter, or if you want to use full-text search, follow this chapter.
> * [D1 pricing plans](https://developers.cloudflare.com/d1/platform/pricing/)
* Open **PowerShell**.
* Run the following commands.
```sh
cd ~/projects
```
```sh
npm create cloudflare@latest <your_d1_worker_name>
```
> ex) npm create cloudflare@latest applimode-d1-worker
* Select default values ​​for all questions.
* Close **PowerShell**.
* Go to or open **VSCode**.
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select the <your_d1_worker_name> folder and click **Open**.
* Click **View** (on the top menu of VSCode) and select **Terminal**.
* Run the following command:
```sh
npx wrangler d1 create <db-name>
```
> ex) npx wrangler d1 create applimode-d1
* Copy the following part of the output.
```
[[d1_databases]]
binding = "DB" # i.e. available in your Worker on env.DB
database_name = "applimode-d1"
database_id = "<unique-ID-for-your-database>"
```
* Press ```Ctrl``` + ```P``` and type *wrangler.toml*, then click.
* Add the part you copied to the end of your wrangler.toml file.
* To save, press ```Ctrl``` + ```S```. (or **File** > **Save**)
* Open this [page](https://github.com/mycalls/applimode-examples/blob/main/d_one_worker/d1.posts.sql) and click the **Copy raw file** button (next to the **Raw** button) on the upper-right corner of the file view.
* Go back to VSCode.
* Click **File** and click **New File...**. (or click the New File button)
![vscode-new-file](https://github.com/mycalls/applimode-examples/blob/main/assets/vs-create-file.png?raw=true)
* Type posts.sql and press ```Enter``` and click **Create File**. (in your project root folder)
* To paste and save, press ```Ctrl``` + ```V``` and ```Ctrl``` + ```S```.
* Open this [page](https://github.com/mycalls/applimode-examples/blob/main/d_one_worker/d1_worker.index.ts) and click the **Copy raw file** button (next to the **Raw** button) on the upper-right corner of the file view.
* Go back to VSCode.
* Press ```Ctrl``` + ```P``` and type *index.ts*, then click.
* Press ```Ctrl``` + ```A``` and press ```Ctrl``` + ```V```.
* To save, press ```Ctrl``` + ```S```.
* Click **Terminal** on the bottom of VSCode and run the following commands. (To find your your-d1-db-name, go to the **wrangler.toml** file, refer to **database_name**)
```
npx wrangler d1 execute <your-d1-db-name> --remote --file=./posts.sql
```
```
npx wrangler deploy
```
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select your project folder (maybe in the **projects** folder) and click **Open**.
* Press ```Ctrl``` + ```P``` and type *custom_settings.dart*, then click.
* Press ```Ctrl``` + ```F``` and type *useDOneForSearch*.
* Change the useDOneForSearch value from **false** to **true**.
> ex) const bool useDOneForSearch = true;
* Go to the [Cloudflare dashboard](https://dash.cloudflare.com/).
* Go to Workers & Pages (on the left sidebar) and in Overview, select your Worker.
* Go to Settings > Triggers > Routes.
* Copy your route.
* Go back to VSCode.
* Press ```Ctrl``` + ```F``` and type *dOneBaseUrl*.
* Change the dOneBaseUrl value from **yourD1WorkerUrl** to the route you copied.
> ex) const String rTwoBaseUrl = 'applimode-d1-worker.yourID.workers.dev';
* Press ```Ctrl``` + ```S```. (or **File** > **Save**)
* To make sure it works well, follow the [Build your Applimode app](#build-your-applimode-app) chapter.



## Configure Cloudflare CDN (Optional)
> [!IMPORTANT]
> * To use Cloudflare's CDN, your domain must be registered with Cloudflare.
> * If you don't have a domain, go to the [Cloudflare console](https://dash.cloudflare.com/) and click **Domain Registration** (on the left sidebar) and click **Register Domain**.
> * If you need to transfer your domain to cloudflare, go to the [Cloudflare console](https://dash.cloudflare.com/) and click **Domain Registration** (on the left sidebar) and click **Transfer Domain**.
> * [Domain registration documentation](https://developers.cloudflare.com/registrar/get-started/register-domain)
> * [Domain transfer documentation](https://developers.cloudflare.com/registrar/get-started/transfer-domain-to-cloudflare/)

* Go to the [Cloudflare console](https://dash.cloudflare.com/).
* Click **R2** (on the left sidebar) and in **Overview**, select the bucket you want.
* Click **Settings** on the top, scroll down to find the **Public access** section.
* In **Custom Domains**, click **Connect Dommain**.
* Type the domain for CDN and click Continue.
> If you have a domain called applimode.com, type a sub domain like *<n>media.<n>applimode.<n>com* or *<n>cdn.<n>applimode.<n>com* or *<n>content.<n>applimode.<n>com*.
* Click **Websites** (on the left sidebar) and click your domain.
* Click **Rules** (on the left sidebar) and **Transform Rules** and **Modify Response Header** (on the tab menu).
* Click **+ Create rule**.
* Type the rule name like *applimode-r2-cors*.
* Select **Custom filter expression**.
* In **Field**, select **Hostname** and in **Operator**, select **equals** and in **Value, type the sub domain you connected to your R2 bucket. (like *<n>media.<n>applimode.<n>com* or *<n>cdn.<n>applimode.<n>com* or *<n>content.<n>applimode.<n>com*)
* In **Select item**, select **Add**.
* In Header name, copy and paste the following expression.
```
access-control-allow-origin
```
* In Value, type __*__.
* Click **Deploy**.
![cf-websites-rules](https://github.com/mycalls/applimode-examples/blob/main/assets/cf-websites-rules.png?raw=true)
* Go to or open **VSCode**.
* Click **File** (on the top menu of VSCode) and select **Open Folder** and select your project folder (maybe in the **projects** folder) and click **Open**.
* Press ```Ctrl``` + ```P``` and type *custom_settings.dart*, then click.
* Press ```Ctrl``` + ```F``` and type *useCfCdn*.
* Change the useCfCdn value from **false** to **true**.
> ex) const bool useCfCdn = true;
* Press ```Ctrl``` + ```F``` and type *cfDomainUrl*.
* Change the cfDomainUrl value from **yourCustomDomainUrl** to the sub domain you connected to your R2 bucket. (like *<n>media.<n>applimode.<n>com* or *<n>cdn.<n>applimode.<n>com* or *<n>content.<n>applimode.<n>com*)
> ex) const String cfDomainUrl = 'media.applimod.com';
* Press ```Ctrl``` + ```S```. (or **File** > **Save**)
* To make sure it works well, follow the [Build your Applimode app](#build-your-applimode-app) chapter.



## Configure Youtube image proxy (Optional)
> [!NOTE]
> * In posts containing YouTube links, there are cases where the preview image cannot be retrieved due to CORS issues.
> * You can solve this problem by configuring a proxy worker for YouTube images.
* Open **PowerShell**.
* Run the following commands.
```sh
cd ~/projects
```
```sh
npm create cloudflare@latest yt-thumbnail-worker
```
* Select default values ​​for all questions.
* Close **PowerShell**.
* Open this [page](https://github.com/mycalls/applimode-examples/blob/main/yt_thumbnail_worker/yt_thumbnail_worker.index.ts) and click the **Copy raw file** button (next to the **Raw** button) on the upper-right corner of the file view.
* Go to or open **VSCode**.
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select the **yt-thumbnail-worker** folder and click **Open**.
* Press ```Ctrl``` + ```P``` and type *index.ts* and click.
* Press ```Ctrl``` + ```A``` and press ```Ctrl``` + ```V```.
* To save, press ```Ctrl``` + ```S```.
* Click **View** (on the top menu of VSCode) and select **Terminal**.
* Run the following command.
```
npx wrangler deploy
```
* Go to the [Cloudflare dashboard](https://dash.cloudflare.com/).
* Go to Workers & Pages (on the left sidebar) and in Overview, click **yt-thumbnail-worker**.
* Go to Settings > Triggers > Routes.
* Copy your route.
* Go back to VSCode.
* Click **File** (on the top menu of VSCode) and select **Open Folder** and select your project folder (maybe in the **projects** folder) and click **Open**.
* Press ```Ctrl``` + ```P``` and type *custom_settings.dart* and click.
* Press ```Ctrl``` + ```F``` and type *youtubeImageProxyUrl*.
* Change the youtubeImageProxyUrl value from **yt-thumbnail-worker.jongsukoh80.workers.dev** to the route you copied.
> ex) const String rTwoBaseUrl = 'yt-thumbnail-worker.yourID.workers.dev';
* Press ```Ctrl``` + ```S```. (or **File** > **Save**)



## Configure Youtube video proxy (Optional)
> [!NOTE]
> * When opening a YouTube video in a post, the page where the video is embedded is sent.
> * If not configured, <n>youtube-nocookie.<n>com will be used.
* Open **PowerShell**.
* Run the following commands.
```sh
cd ~/projects
```
```sh
npm create cloudflare@latest yt-iframe-wroker
```
* Select default values ​​for all questions.
* Close **PowerShell**.
* Open this [page](https://github.com/mycalls/applimode-examples/blob/main/yt_iframe_worker/yt_iframe_worker.index.ts) and click the **Copy raw file** button (next to the **Raw** button) on the upper-right corner of the file view.
* Go to or open **VSCode**.
* Click **File** (on the top menu of VSCode) and select **Open Folder**.
* Select the **yt_iframe_worker** folder and click **Open**.
* Press ```Ctrl``` + ```P``` and type *index.ts* and click.
* Press ```Ctrl``` + ```A``` and press ```Ctrl``` + ```V```.
* To save, press ```Ctrl``` + ```S```.
* Click **View** (on the top menu of VSCode) and select **Terminal**.
* Run the following command.
```
npx wrangler deploy
```
* Go to the [Cloudflare dashboard](https://dash.cloudflare.com/).
* Go to Workers & Pages (on the left sidebar) and in Overview, click **yt-iframe-wroker**.
* Go to Settings > Triggers > Routes.
* Copy your route.
* Go back to VSCode.
* Click **File** (on the top menu of VSCode) and select **Open Folder** and select your project folder (maybe in the **projects** folder) and click **Open**.
* Press ```Ctrl``` + ```P``` and type *custom_settings.dart* and click.
* Press ```Ctrl``` + ```F``` and type *youtubeIframeProxyUrl*.
* Paste the route you copied in the youtubeIframeProxyUrl value.
> ex) const String youtubeIframeProxyUrl = 'yt-iframe-worker.yourID.workers.dev';
* Press ```Ctrl``` + ```S```. (or **File** > **Save**)



## Use your custom domain (Optional)
* Open or go to your [Firebase console](https://console.firebase.google.com/) in your web browser. 
* Click your project.
* Click **Hosting** (on the left sidebar).
* Scroll down to find the **Domains** section.
* Click **Add custom domain**.
<!--todos 내용 추가해줄 것-->
<!--
// 확인하는 동안 Records 항목의 Proxy 꺼줄것
// SSL/TLS 설정 Flexible 에서 Full 로 변경할 것
-->



## Upgrade your project with the new Applimode version
* Delete your existing **applimode**(or **applimode-main**) and **applimode-tool** folders. (If they are in your **projects** folder)
* Open **PowerShell**.
* Run the following commands.
```sh
flutter upgrade
```
```sh
cd ~/projects;
```
```sh
git clone https://github.com/mycalls/applimode.git
```
```sh
cd applimode/applimode-tool/
```
```sh
node index.js upgrade
```
* Enter your existing project directory name.
* Close **PowerShell**.
* Open **VSCode**.
* Click **File** (on the top menu of VSCode), select **Open Folder**, choose your new project folder (maybe in the **projects** folder), and click **Open**.
* Click **View** (on the top menu of VSCode), then select **Terminal**.
* Run the following commands in order:
```sh
flutter pub get
```
```sh
dart run flutter_native_splash:create
```
```sh
flutter pub run flutter_launcher_icons
```
```sh
dart run build_runner build -d
```
```sh
flutterfire configure --platforms=android,ios,web
```
> when asked something, press **n** or **N**.
```sh
cd applimode-tool; node index.js firebaserc; cd ..
```
```sh
firebase deploy --only firestore
```
```sh
firebase deploy --only storage
```
> [!NOTE]
> * If you want to enter commands all at once, run the following command:
> ```sh
> flutter pub get; dart run flutter_native_splash:create; flutter pub run flutter_launcher_icons; dart run build_runner build -d; flutterfire configure --platforms=android,ios,web; cd applimode-tool; node index.js firebaserc; cd ..; firebase deploy --only firestore; firebase deploy --only storage;
> ```
* Delete your old project folder.



## Configure Cloud Firestore Security Rules
#### Access is restricted to logged-in users.
* Go to or open your Applimode project in **VSCode**.
* Press ```Ctrl``` + ```P``` and type *custom_settings.dart*, then click.
* Press ```Ctrl``` + ```F``` and type *isInitialSignIn*.
* Change the **isInitialSignIn** value from **false** to **true**.
* Open this [page](https://github.com/mycalls/applimode-examples/blob/main/fs_authed.firestore.rules) and click the **Copy raw file** button (next to the **Raw** button) on the upper-right corner of the file view.
![copy-raw-file](https://github.com/mycalls/applimode-examples/blob/main/assets/gh-copy-raw-file.png?raw=true)
* Open or go to your [Firebase console](https://console.firebase.google.com/) in your web browser. 
* Click your project.
* Click **Firestore Database** (on the left sidebar).
* Click **Rules** on the top.
* Paste the content you copied.
* Add admin IDs. If you have forgotten how to do this, please follow the [this page](#add-administrator).
* Click **Publish**.

#### Access is restricted to verified users.
<!--
* To configure the rules so that only users you have authorized, not just logged-in users, can access the app, follow these instructions.
-->
* Go to or open your Applimode project in **VSCode**.
* Press ```Ctrl``` + ```P``` and type *custom_settings.dart*, then click.
* Press ```Ctrl``` + ```F``` and type *isInitialSignIn*.
* Change the **isInitialSignIn** value from **false** to **true**.
* Press ```Ctrl``` + ```F``` and type *verifiedOnlyWrite*.
* Change the **verifiedOnlyWrite** value from **false** to **true**.
* Open or go to your [Firebase console](https://console.firebase.google.com/) in your web browser. 
* Click **Firestore Database** (on the left sidebar).
* Click the users collection and select the UID of the user you want to grant access to.
* Click the **Edit field** button (pencil shape) next to the **verified** field. (Move your mouse cursor over the **verified** field to display the **Edid field** button)
* Change the value from **false** to **true** and click **Update**.
* Open this [page](https://github.com/mycalls/applimode-examples/blob/main/fs_verified.firestore.rules) and click the **Copy raw file** button (next to the **Raw** button) on the upper-right corner of the file view.
* Paste the content you copied into the Firestore Rules.
* Add admin IDs and verified IDs.
* Click **Publish**.



## Troubleshooting
* ### If you don't see images or videos in your uploaded post, follow these steps. (CORS issue)
1. Open [Google Cloud console](https://console.cloud.google.com/) in your web browser.
2. Sign up or log in.
3. Select your project on the top left.
4. Click **Activate Cloud Shell** on the top right.
![gcp-console-head](https://github.com/mycalls/applimode-examples/blob/main/assets/gcp-console-head.png?raw=true)
5. Run the following command in the shell at the bottom.
```sh
echo '[{"origin": ["*"],"method": ["GET"],"maxAgeSeconds": 3600}]' > cors.json
```
<!--
> touch cors.json
> nano cors.json
[
  {
    "origin": ["*"],
    "method": ["GET"],
    "maxAgeSeconds": 3600
  }
]
-->
6. Open or go to your [Firebase console](https://console.firebase.google.com/) in your web browser.
7. Click your project.
8. Click **Storage** (on the left sidebar).
9. Click the Copy folder path icon (on the right of the URL starting with **gs://**) to copy your cloud storage bucket.
![fb-storage-head](https://github.com/mycalls/applimode-examples/blob/main/assets/fb-storage-head.png?raw=true)
10.  Go back to your Google Cloud console.
11.  Run the following command in the shell at the bottom.
```sh
gsutil cors set cors.json gs://<your-cloud-storage-bucket>
```

* ### If an error occurs when building with an Android device, follow these steps.
1. Open **VSCode**
2. Click **File** (on the top menu of VSCode) and select **Open Folder**.
3. Select your project folder (maybe in the **projects** folder) and click **Open**.
4. Click **View** (on the top menu of VSCode) and select **Terminal**.
5. Run the following commands in order.
```sh
flutter clean
```
```sh
flutter pub cache repair
```
```sh
flutter pub get
```

* ### If you don't see your Android device in the target device list, follow these steps.
1. Enable Developer options and USB debugging on your android device.
2. To enable Developer options and USB debugging on your android device, refer to [this page](https://developer.android.com/studio/debug/dev-options).
3. Try changing the USB Preferences to Charging or File transfers.
4. Connet again.

* ### If you cannot upload a post with images or videos attached when using Cloudflare R2, follow these steps.
1. Open **VSCode**
2. Click **File** (on the top menu of VSCode) and select **Open Folder**.
3. Select your project folder (maybe in the **projects** folder) and click **Open**.
4. Click **View** (on the top menu of VSCode) and select **Terminal**.
5. Run the following commands in order.
```sh
dart run build_runner clean
```
```sh
dart run build_runner build --delete-conflicting-outputs
```
