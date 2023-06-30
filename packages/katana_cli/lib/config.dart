/// Describe the settings.
///
/// 設定を記述します。
class Config {
  Config._();

  /// Contents of katana.yaml.
  ///
  /// katana.yamlの中身。
  static String katanaYamlCode(bool showAllConfig) => """
# Describe the application information.
# アプリケーション情報を記載します。
app:

  # The application icon is automatically set based on the image file specified in [path].
  # Image files should be created as 1024 x 1024 png files.
  # [path]に指定された画像ファイルを元にアプリのアイコンを自動設定します。
  # 画像ファイルは1024×1024のpngファイルで作成してください。
  icon:
    enable: false
    path: assets/icon.png
  
  # Describe the application information.
  # For each language code, put the normal title in [title] and a short title for the app in [short_title]. Provide an overview of the app in [overview].
  # By increasing the language code, information corresponding to that language can be described.
  # By specifying [domain], you can change the web og tags to those appropriate for that domain.
  # アプリケーションの情報を記載します。
  # それぞれの言語コードに対して[title]に通常タイトル、[short_title]にアプリ用の短いタイトルを記載します。[overview]にアプリの概要を記載します。
  # 言語コードを増やすことでその言語に対応した情報を記載することができます。
  # [domain]を指定することでWebのogタグをそのドメインに応じたものに変更することができます。
  info:
    enable: false
    domain:
    locale:
      en:
        title: 
        short_title:
        overview:

${showAllConfig ? """
  # Retrieve data from a spreadsheet retrieved by a specific Google Form.
  # Please include the URL of the spreadsheet in [url] and the email address you collected in [email].
  # If [domain] is specified, og tags for the Web are generated for that domain.
  # Takes precedence over [info].
  # 特定のGoogleフォームで取得したスプレッドシートからデータを取得します。
  # [url]にスプレッドシートのURL、[email]に収集したメールアドレスを記載してください。
  # [domain]を指定するとそのドメインに応じたWeb用のogタグを生成します。
  # [info]よりも優先されます。
  spread_sheet:
    enable: false
    url:
    email:
    domain: 
""" : ""}

  # Create a `CertificateSigningRequest.certSigningRequest` for iOS.
  # Please include your support email address in [email].
  # iOS用の`CertificateSigningRequest.certSigningRequest`を作成します。
  # [email]にサポート用のEmailアドレスを記載してください。
  csr: 
    enable: false
    email:
  
  # Convert the cer file created by Certificate in AppleDeveloperProgram from `CertificateSigningRequest.certSigningRequest` to a p12 file.
  # `CertificateSigningRequest.certSigningRequest`からAppleDeveloperProgramのCertificateにて作成されたcerファイルをp12ファイルに変換します。
  p12:
    enable: false

  # Create a keystore for Android.
  # Enter the alias of the keystore in [alias], the common name in [name], the organization name in [organization], the state or province in [state], and the country in [country].
  # Android用のkeystoreを作成します。
  # [alias]にkeystoreのエイリアス、[name]に共通名、[organization]に組織名、[state]に州や都道府県、[country]に国名を入力してください。
  keystore: 
    enable: false
    alias: 
    name: 
    organization: 
    state: Tokyo
    country: Japan
  
${showAllConfig ? """
  # Describe the settings for using the file picker.
  # Describe the platform for using the picker in [platform]. Specify `any` or `mobile`. Import the picker package for that platform.
  # Specify the permission message to use the library in IOS in [permission].
  # Please include `en`, `ja`, etc. and write the message in that language there.
  # ファイルピッカーを利用するための設定を記述します。
  # [platform]にピッカーを利用するためのプラットフォームを記述します。`any`もしくは`mobile`を指定してください。そのプラットフォーム用のピッカーパッケージをインポートします。
  # [permission]にIOSでライブラリを利用するための権限許可メッセージを指定します。
  # `en`や`ja`などを記載しそこにその言語でのメッセージを記述してください。
  picker:
    enable: false
    permission:
      en: Use the library for profile images.

  # Describe the settings for using the calendar.
  # カレンダーを利用するための設定を記述します。
  calendar:
    enable: false
  
  # Describe the settings for using OpenAI's GPT, etc.
  # OpenAIのGPT等を利用するための設定を記述します。
  openai:
    enable: false
""" : ""}

# This section contains information related to Firebase.
# Firebase関連の情報を記載します。
firebase:
  # Set the Firebase project ID.
  # FirebaseのプロジェクトIDを設定します。
  project_id:

  # Enable Firebase Firestore.
  # Firebase Firestoreを有効にします。
  firestore:
    enable: false
    overwrite_rule: false

  # Enable Firebase Authentication.
  # Firebase Authenticationを有効にします。
  authentication:
    enable: false

${showAllConfig ? """
    # If you want to use SNS providers, set [enable] to `true` for each SNS.
    # SNSプロバイダーを利用したい場合はそれぞれのSNSの[enable]を`true`にしてください。
    providers:

      # SignIn with apple.
      # When creating an application ID from the URL below, look for "Sign In with Apple" in the Capabilities section and check the box.
      # https://developer.apple.com/account/resources/identifiers/list
      # Also, from the Firebase console (https://console.firebase.google.com/), select [Authentication]->[Sing-in method] and enable `Apple`.
      # SignIn with appleを利用します。
      # 下記URLからアプリケーションIDを作成する際にCapabilitiesの項目の中から「Sign In with Apple」を探しチェックを入れてください。
      # https://developer.apple.com/account/resources/identifiers/list
      # またFirebaseのコンソール（https://console.firebase.google.com/）から[Authentication]->[Sing-in method]を選択し`Apple`を有効にしてください。
      apple:
        enable: false
      
      # Sign in with your Google account.
      # Get the settings for Google Login automatically from Firebase settings.
      # Also, from the Firebase console (https://console.firebase.google.com/), select [Authentication]->[Sing-in method] and enable `Google`.
      # Googleアカウントによるログインを行います。
      # Firebaseの設定から自動でGoogleログイン用の設定を取得します。
      # またFirebaseのコンソール（https://console.firebase.google.com/）から[Authentication]->[Sing-in method]を選択し`Google`を有効にしてください。
      google:
        enable: false

      # Log in with your Facebook account.
      # Get the following settings for Facebook login.
      # https://www.notion.so/mathru/Meta-Facebook-7acf4e522e7d42998a9dcc613a0b7760
      # Please enter [AppId] and [AppSecret] in each field.
      # Also, from the Firebase console (https://console.firebase.google.com/), select [Authentication]->[Sing-in method] and enable `Facebook`.
      # Facebookアカウントによるログインを行います。
      # 下記の設定でFacebookログイン用の設定を取得します。
      # https://www.notion.so/mathru/Meta-Facebook-7acf4e522e7d42998a9dcc613a0b7760
      # [AppId]と[AppSecret]を各項目に記載してください。
      # またFirebaseのコンソール（https://console.firebase.google.com/）から[Authentication]->[Sing-in method]を選択し`Facebook`を有効にしてください。
      facebook:
        enable: false
        app_id: 
        app_secret: 
""" : ""}

  # Enable Cloud Storage for Firebase.
  # Cloud Storage for Firebaseを有効にします。
  storage:
    enable: false
    overwrite_rule: false

  # Enable Cloud Functions for Firebase.
  # Cloud Functions for Firebaseを有効にします。
  functions:
    enable: false

    # Specify the Region for FirebaseFunctions.
    # Please refer to the following link for the Region of FirebaseFunctions.
    # FirebaseFunctionsのRegionを指定します。
    # FirebaseFunctionsのRegionは以下のリンクを参考にしてください。
    # https://firebase.google.com/docs/functions/locations?hl=ja
    region: asia-northeast1
  
  # Enable Firebase Analytics and Firebase Crashlytics.
  # If you are unable to activate Analytics, please check if the "Project Settings" -> "Integration" -> "GoogleAnalytics" application is successfully linked.
  # Firebase AnalyticsとFirebase Crashlyticsを有効にします。
  # Analyticsの有効化が出来ない場合は、「プロジェクトの設定」→「統合」→「GoogleAnalytics」のアプリが正常に連携されているかを確認してください。
  logger:
    enable: false

  # Configure Firebase Hosting settings.
  # Set [use_flutter] to `true` so that all routes point to index.html, and set it to `true` when using Flutter Web.
  # Even in the above case, /**/terms.html and /**/privacy.html will not be directed to the root.
  # Firebase Hostingの設定を行います。
  # [use_flutter]を`true`にするとすべてのルートがindex.htmlを向くようになります。Flutter Webを利用する際に`true`にしてください。
  # 上記の場合でも/**/terms.html、/**/privacy.htmlはルートに向かないようになります。
  hosting:
    enable: false
    use_flutter: true

${showAllConfig ? """
  # Deploy Terms of Use and Privacy Policy data to Firebase Hosting.
  # Specify the URL of the Terms of Use and Privacy Policy in [terms_of_use] and [privacy_policy] under each language code.
  # Adding a language code allows you to include the URL for the Terms of Use and Privacy Policy for that language.
  # \${ApplicationName} and \${SupportEmail} will be replaced with the app name and support email address, respectively.
  # Firebase Hostingに利用規約とプライバシーポリシーのデータをデプロイします。
  # 各言語コードの下に[terms_of_use]と[privacy_policy]には利用規約とプライバシーポリシーのURLを記載してください。
  # 言語コードを追加するとその言語の利用規約とプライバシーポリシーのURLを記載することができます。
  # \${ApplicationName}と\${SupportEmail}がそれぞれアプリ名とサポート用のEmailアドレスに置き換わります。
  terms_and_privacy:
    enable: false
    en:
      terms_of_use:
      privacy_policy:
    ja:
      terms_of_use:
      privacy_policy:
""" : ""}
  
  # Enable Firebase Messaging.
  # Specify ChannelNotificationId for Android in [channel_id].
  # Firebase Messagingを有効にします。
  # [channel_id]にAndroid用のChannelNotificationIdを指定してください。
  messaging:
    enable: false
    channel_id: 

${showAllConfig ? """
# This section contains information related to Git.
# Git関連の情報を記載します。
git:
  # Add secure files to .gitignore.
  # If `false`, password files, etc. will be uploaded to Git.
  # Please limit your use to private repositories only.
  # セキュアなファイルを.gitignoreに追加します。
  # `false`にした場合、パスワードファイルなどがGitにアップロードされることになります。
  # プライベートレポジトリのみでの利用に限定してください。
  ignore_secure_file: true

  # Ensure that the dart code is modified and verified before committing.
  # lefthand installation is required.
  # コミット前にdartコードの修正や確認を行うようにします。
  # lefthandのインストールが必要です。
  pre_commit:
    enable: false
""" : ""}

# Github-related information will be described.
# Github関連の情報を記載します。
github:
  # Enable Github Actions to perform CI/CD builds on each platform.
  # Enter the platform you wish to specify in [platform], separated by spaces.
  # Available platforms are `android`, `ios`, `web`, `windows`, `macos`, and `linux`.
  # Github Actionsを有効にして各プラットフォームでCI/CDビルドを行うようにします。
  # [platform]で指定したいプラットフォームをスペース区切り入力します。
  # 使用できるプラットフォームは`android`、`ios`、`web`、`windows`、`macos`、`linux`です。
  #
  # [Android]
  # Json for the service account is required under the `android` folder, please refer to https://mathru.notion.site/Google-Play-Developer-df655aff2dfb49988b82feb7aae3c61b to set it up Please refer to the `android` folder to set it up.
  #
  # [Android]
  # サービスアカウント用のJsonが`android`フォルダ以下に必要です。https://mathru.notion.site/Google-Play-Developer-df655aff2dfb49988b82feb7aae3c61b を参考に設定してください。
  action:
    enable: false
    platform: android ios web
    web:
      # Configure to deploy to Firebase Hosting. Set to `true` to deploy to FirebaseHosting.
      # Firebase Hostingへデプロイするための設定を行います。FirebaseHostingにデプロイする場合は`true`にしてください。
      firebase: false

      # Please include the path to your current repository on Github in the format `user/repository name`.
      # Githubの現在のリポジトリのパスを`ユーザー/レポジトリ名`のフォーマットで記載してください。
      repository: 

    ios:
      # Copy the Issuer ID listed on the page at https://appstoreconnect.apple.com/access/api.
      # https://appstoreconnect.apple.com/access/api のページに記載されているIssuer IDをコピーしてください。
      issuer_id: 
      # Please copy and include your team ID from https://developer.apple.com/account.
      # https://developer.apple.com/account のチームIDをコピーして記載してください。
      team_id: 

${showAllConfig ? """
# Store-related information.
# ストア関連の情報を記載します。
store:
  # Create a simple screenshot to be posted in the store. It can be executed with the following command.
  # ストアに掲載する簡易的なスクリーンショットの作成を行います。下記コマンドで実行可能です。
  # `katana store screenshot`
  # 
  # Generate images for screenshots in [export_dir] based on the list of images in [source_dir].
  # You can specify the orientation (`portrait` or `landscape`) with [orientation] and the background color with [color].
  # [source_dir]にある画像一覧を元に[export_dir]にスクリーンショット用の画像を生成します。
  # [orientation]で(`portrait` or `landscape`)向きを指定でき、[color]を指定すると背景色を指定できます。
  screenshot:
    source_dir: document/screenshot
    export_dir: document/store
    feature_image: document/feature.png
    orientation: portrait
    color: '000000'

# Describe the settings for using location information.
#
# Set [enable_background] to true if you want to acquire location information even when the application enters the background.
# If you wish to use GoogleMap, set [google_map]->[enable] to true. Also, obtain a GoogleMap API key from the following link in advance and enter it in [google_map]->[api_key].
# https://console.cloud.google.com/google/maps-apis/credentials
#
# Specify the permission message to use the library in IOS in [permission].
# Please include `en`, `ja`, etc. and write the message in that language there.
# 
# 位置情報を利用するための設定を記述します。
# 
# アプリがバックグラウンドに入った場合でも位置情報を取得する場合は[enable_background]をtrueにしてください。
# GoogleMapを利用する場合は[google_map]->[enable]をtrueにしてください。また事前に下記のリンクからGoogleMapのAPIキーを取得しておき[google_map]->[api_key]に記載してください。
# https://console.cloud.google.com/google/maps-apis/credentials
#
# [permission]にIOSでライブラリを利用するための権限許可メッセージを指定します。
# `en`や`ja`などを記載しそこにその言語でのメッセージを記述してください。
location:
  enable: false
  enable_background: false
  google_map:
    enable: false
    api_key:
      android:
      ios:
      web: 
  permission:
    en: Location information is used to display the map.

# Configure settings for store billing.
# ストア課金を行う場合の設定を行います。
purchase:

  # Configure settings for Google Play billing.
  # Follow the steps below to configure the settings.
  # 1. Obtain the OAuth client ID and client secret based on the URL below.
  #    https://mathru.notion.site/Android-1d4a60948a1446d7a82c010d96417a3d?pvs=4
  # 2. Set `enable` to `true` and enter the values you obtained for `oauth_client_id` and `oauth_client_secret`.
  # 3. Run `katana store android_token` to get a refresh token.
  # 4. Enter the obtained refresh token in the `refresh_token` field.
  # 5. Run `katana apply` to deploy the app and server.
  # GooglePlayの課金を行う場合の設定を行います。
  # 下記の手順で設定を行います。
  # 1. 下記URLを元にOAuthのクライアントIDとクライアントシークレットを取得します。
  #    https://mathru.notion.site/Android-1d4a60948a1446d7a82c010d96417a3d?pvs=4
  # 2. `enable`を`true`にし、`oauth_client_id`と`oauth_client_secret`に取得した値を入力します。
  # 3. `katana store android_token`を実行しリフレッシュトークンを取得します。
  # 4. 取得したリフレッシュトークンを`refresh_token`に入力します。
  # 5. `katana apply`を実行しアプリとサーバーのデプロイを行います。
  google_play:
    enable: false
    oauth_client_id: 
    oauth_client_secret: 
    refresh_token: 
  
  # Configure settings for AppStore billing.
  # Follow the steps below to configure the settings.
  # 1. Register your tax information and bank account to activate [Subscription]->[Paid Apps] in the AppStore.
  # 2. Get it from [AppStore]->[App Info]->[Shared Secret for App] and put it in `shared_secret`.
  # AppStoreの課金を行う場合の設定を行います。
  # 下記の手順で設定を行います。
  # 1. AppStoreの[契約]->[有料App]をアクティブにするように税務情報や銀行口座を登録します。
  # 2. AppStoreの[アプリ]->[App情報]->[App用共有シークレット]から取得して`shared_secret`に記載します。
  app_store:
    enable: false
    shared_secret: 

# Configure billing settings for Stripe.
# Stripeの課金設定を行います。
stripe:
  # Set to `true` if you use Stripe.
  # Stripeを利用する場合は`true`にしてください。
  enable: false

  # Set to `true` if you use Stripe Connect.
  # Stripeコネクトを利用する場合は`true`にしてください。
  enable_connect: false

  # Secret key for Stripe's API.
  # You can obtain keys for the test and production environments at the following URLs
  # StripeのAPI用シークレットキー。
  # 下記のURLからテスト環境用と本番環境用のキーを取得できます。
  # Production environment
  # https://dashboard.stripe.com/apikeys
  # Development enveironment
  # https://dashboard.stripe.com/test/apikeys
  secret_key: 

  # URL scheme for returning from Stripe's WebView.
  # It must be set to the same settings as the application side.
  # StripeのWebViewから戻る際のURLスキーム。
  # アプリ側と同じ設定にする必要があります。
  url_scheme:

  # Specify the email provider for use with Stripe's 3D Secure authentication.
  # Specify `sendgrid` if you use SendGrid or `gmail` if you use Gmail.
  # Also, please set up various e-mail settings.
  # Stripeの3Dセキュア認証で利用するためのメールプロバイダーを指定します。
  # SendGridを利用する場合は`sendgrid`、Gmailを利用する場合は`gmail`を指定してください。
  # また、各種メールの設定を行ってください。
  email_provider: sendgrid

  # Set up a redirect page for 3D Secure.
  # Under each language code, [success] and [failure] should include the URL for success and failure.
  # Adding a language code allows you to include the URL for that language.
  # 3Dセキュア用のリダイレクトページを設定します。
  # 各言語コードの下に[success]と[failure]には成功時、失敗時のURLを記載してください。
  # 言語コードを追加するとその言語のURLを記載することができます。
  three_d_secure_redirect_page:
    en:
      success:
      failure:
    ja:
      success:
      failure:

# Configure Agora.io streaming settings.
# Agora.ioのストリーミング設定を行います。
agora:
  # Set to `true` if you use Agora.io.
  # Agora.ioを利用する場合は`true`にしてください。
  enable: false

  # AppID for Agora.
  # Log in to the following URL and create a project.
  # After the project is created, the AppID can be copied.
  # Agora用のAppID。
  # 下記URLにログインし、プロジェクトを作成します。
  # プロジェクト作成後、AppIDをコピーすることができます。
  # https://console.agora.io/projects
  app_id: 

  # AppCertificate for Agora.
  # You can obtain the certificate after entering the project you created and activating it in Security -> App certificate.
  # Agora用のAppCertificate。
  # 作成したプロジェクトに入り、Security -> App certificateにて有効化した後取得できます。
  # https://console.agora.io/projects
  app_certificate: 

  # Set to `true` to enable Agora cloud recording.
  # Agoraのクラウドレコーディングを有効にする場合は`true`にしてください。
  enable_cloud_recording: false

# Configure Gmail sending settings.
# Gmailの送信設定を行います。
gmail:
  # Set to `true` if you want to use Gmail to send emails.
  # Gmailによるメール送信を利用する場合は`true`にしてください。
  enable: false

  # Gmail user ID. Follow the steps below to obtain a Gmail user ID.
  # 1. Press your icon in the upper right corner of the Google top screen and open "Manage Google Account".
  # 2. open "Security" on the left side of the screen and open "App Password
  # GmailのユーザーID。下記の手順で取得します。
  # 1. Googleのトップ画面の画面右上の自分のアイコンを押下し、「Google アカウントを管理」を開く
  # 2. 画面左の「セキュリティ」を開き、「アプリ パスワード」を開く
  user_id:

  # Gmail user password. Enter the password obtained in the above procedure.
  # Gmailのユーザーパスワード。上記の手順で取得したパスワードを入力します。
  user_password:

# Configure Sendgrid sending settings.
# Sendgridの送信設定を行います。
sendgrid:
  # Set to `true` if you want to use mail sending by Sendgrid.
  # Sendgridによるメール送信を利用する場合は`true`にしてください。
  enable: false

  # API key for SendGrid. It can be issued from the following URL.
  # SendGridのAPIキー。下記URLから発行可能です。
  # https://app.sendgrid.com/settings/api_keys
  api_key:
""" : ""}
""";
}
