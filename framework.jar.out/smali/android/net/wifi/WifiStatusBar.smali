.class public Landroid/net/wifi/WifiStatusBar;
.super Ljava/lang/Object;
.source "WifiStatusBar.java"


# static fields
.field private static final ACTION_UW_STATE_CHANGE:Ljava/lang/String; = "yulong.intent.action.UW_STATE_CHANGE"

.field public static final ACTION_WIFI_STATUSBAR:Ljava/lang/String; = "com.yulong.android.action.WifiStatusBar"

.field public static final FLAG_WIFI_STATUSBAR_ICONID:Ljava/lang/String; = "iconid"

.field public static final FLAG_WIFI_STATUSBAR_TYPEID:Ljava/lang/String; = "typeid"

.field private static final WIFI_ICON_COMMON:I = 0x0

.field private static final WIFI_ICON_CONNETCTED:I = 0x2

.field private static final WIFI_ICON_CONNETCTING:I = 0x4

.field private static final WIFI_ICON_REGISTED:I = 0x1

.field private static final WIFI_ICON_REGISTING:I = 0x3

.field private static final WIFI_STATE_DISABLED:I = -0x2

.field private static final WIFI_STATE_ENABLED:I = -0x1


# instance fields
.field final TAG:Ljava/lang/String;

.field private final UW_CONNECT_FAILED:I

.field private final UW_REGIST_FAILED:I

.field private iconId:I

.field mContext:Landroid/content/Context;

.field private mIsWifiConnected:Z

.field private mWifiEnabled:Z

.field private wifiIconType:I

.field private wifiLevelCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v1, "WifiStatusBar"

    iput-object v1, p0, Landroid/net/wifi/WifiStatusBar;->TAG:Ljava/lang/String;

    .line 26
    const/4 v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStatusBar;->UW_REGIST_FAILED:I

    .line 27
    const/4 v1, 0x2

    iput v1, p0, Landroid/net/wifi/WifiStatusBar;->UW_CONNECT_FAILED:I

    .line 48
    iput-object p1, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    .line 49
    const-string v1, "WifiStatusBar"

    const-string v2, "construct WifiStatusBar"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/WifiStatusBar$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiStatusBar$1;-><init>(Landroid/net/wifi/WifiStatusBar;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    .line 68
    return-void
.end method

.method private emmit_quoted_string(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "myString"

    .prologue
    const/16 v2, 0x22

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const-string p1, ""

    .line 209
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 204
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 205
    .local v0, lastPos:I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 206
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method updateWifi(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiStatusBar: action = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v10, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 80
    const-string/jumbo v10, "wifi_state"

    const/4 v11, 0x4

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 81
    .local v9, wifiStatus:I
    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    const/4 v1, 0x1

    .line 82
    .local v1, enabled:Z
    :goto_1
    if-nez v1, :cond_4

    .line 84
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    .line 85
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/net/wifi/WifiStatusBar;->mWifiEnabled:Z

    .line 86
    const/4 v10, -0x2

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 92
    :goto_2
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiStatusBar iconId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v1           #enabled:Z
    .end local v9           #wifiStatus:I
    :cond_2
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.yulong.android.action.WifiStatusBar"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, intent2:Landroid/content/Intent;
    const/high16 v10, 0x800

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    const-string/jumbo v10, "iconid"

    iget v11, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string/jumbo v10, "typeid"

    iget v11, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    iget-object v10, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    .end local v2           #intent2:Landroid/content/Intent;
    .restart local v9       #wifiStatus:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 88
    .restart local v1       #enabled:Z
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/net/wifi/WifiStatusBar;->mWifiEnabled:Z

    .line 89
    const/4 v10, -0x1

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    goto :goto_2

    .line 93
    .end local v1           #enabled:Z
    .end local v9           #wifiStatus:I
    :cond_5
    const-string v10, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 94
    const-string v10, "connected"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 96
    .restart local v1       #enabled:Z
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiStatusBar iconId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 97
    .end local v1           #enabled:Z
    :cond_6
    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 98
    const-string/jumbo v10, "networkInfo"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 101
    .local v5, networkInfo:Landroid/net/NetworkInfo;
    iget-boolean v10, p0, Landroid/net/wifi/WifiStatusBar;->mWifiEnabled:Z

    if-eqz v10, :cond_7

    .line 102
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 103
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    .line 104
    iget v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiLevelCount:I

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 111
    :cond_7
    :goto_4
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiStatusBar iconId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 106
    :cond_8
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    .line 107
    const/4 v10, -0x1

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 108
    const/4 v10, 0x0

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_4

    .line 112
    .end local v5           #networkInfo:Landroid/net/NetworkInfo;
    :cond_9
    const-string v10, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 114
    const-string/jumbo v10, "newRssi"

    const/16 v11, -0xc8

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 115
    .local v6, newRssi:I
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiStatusBar: mRssi = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v10, 0x4

    invoke-static {v6, v10}, Landroid/net/wifi/WifiManager;->YLcalculateSignalLevel(II)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiLevelCount:I

    .line 118
    iget-boolean v10, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    if-eqz v10, :cond_2

    .line 119
    iget v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiLevelCount:I

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 120
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiStatusBar iconId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 123
    .end local v6           #newRssi:I
    :cond_a
    const-string/jumbo v10, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 124
    iget-boolean v10, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    if-eqz v10, :cond_10

    .line 125
    iget-object v10, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 126
    .local v3, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, mySsid:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 128
    const-wide/16 v10, 0xc8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 129
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 131
    :cond_b
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStatusBar;->emmit_quoted_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current primary ap ssid is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v10, "ChinaNet_HomeCW"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "ChinaNet_CW"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "ChinaNet"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 134
    :cond_c
    const-string/jumbo v10, "state"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 135
    .local v8, uwState:I
    const-string/jumbo v10, "state_reason"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 136
    .local v7, uwErrorCode:I
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CPUWDManager.UW_STATE_KEY:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",uwErrorCode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v10, 0x1

    if-eq v10, v7, :cond_d

    const/4 v10, 0x2

    if-ne v10, v7, :cond_f

    .line 138
    :cond_d
    const/4 v10, 0x1

    if-ne v10, v7, :cond_e

    .line 139
    const/4 v10, 0x0

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_0

    .line 140
    :cond_e
    const/4 v10, 0x2

    if-ne v10, v7, :cond_0

    .line 141
    const/4 v10, 0x1

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_0

    .line 145
    :cond_f
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uwState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    packed-switch v8, :pswitch_data_0

    .line 182
    const-string v10, "WifiStatusBar"

    const-string v11, "c+w default"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v10, 0x0

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    .line 189
    .end local v3           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v4           #mySsid:Ljava/lang/String;
    .end local v7           #uwErrorCode:I
    .end local v8           #uwState:I
    :cond_10
    :goto_5
    const-string v10, "WifiStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiStatusBar iconId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; wifiIconType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 148
    .restart local v3       #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v4       #mySsid:Ljava/lang/String;
    .restart local v7       #uwErrorCode:I
    .restart local v8       #uwState:I
    :pswitch_0
    const/4 v10, 0x0

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 152
    :pswitch_1
    const-string v10, "WifiStatusBar"

    const-string v11, "C+W UW_REGISTING"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v10, 0x3

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 157
    :pswitch_2
    const-string v10, "WifiStatusBar"

    const-string v11, "C+W UW_REGISTED"

    invoke-static {v10, v11}, Landroid/util/Log;->d1(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v10, 0x1

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 162
    :pswitch_3
    const-string v10, "WifiStatusBar"

    const-string v11, "C+W UW_CONNECTING"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v10, 0x4

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 167
    :pswitch_4
    const-string v10, "WifiStatusBar"

    const-string v11, "C+W UW_CONNECTED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v10, 0x2

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 172
    :pswitch_5
    const-string v10, "WifiStatusBar"

    const-string v11, "C+W UW_DISCONNECTING"

    invoke-static {v10, v11}, Landroid/util/Log;->d1(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v10, 0x1

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 177
    :pswitch_6
    const-string v10, "WifiStatusBar"

    const-string v11, "C+W UW_DEREGISTING"

    invoke-static {v10, v11}, Landroid/util/Log;->d1(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v10, 0x0

    iput v10, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
