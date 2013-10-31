.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoCallbackImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnrefreshDoubleTime(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "localCityName"
    .parameter "localCityTime"
    .parameter "localCityDate"
    .parameter "appointCityName"
    .parameter "appointCityTime"
    .parameter "appointCityDate"

    .prologue
    .line 1183
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1138
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 1144
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method

.method public onDualNetworkRoaming(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "showTime"

    .prologue
    .line 1176
    return-void
.end method

.method public onDualStateChanged(Z)V
    .locals 0
    .parameter "isManyou"

    .prologue
    .line 1188
    return-void
.end method

.method public onMusicInfoUpated(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "tzAlbumArtP"
    .parameter "bPlayingMusicP"
    .parameter "strSongNameP"

    .prologue
    .line 1153
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1135
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1123
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1129
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1132
    return-void
.end method

.method public onSetKeyguardBg()V
    .locals 0

    .prologue
    .line 1170
    return-void
.end method

.method public onShowCalendarNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 1168
    return-void
.end method

.method public onShowEmailNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 1165
    return-void
.end method

.method public onShowMusic(Z)V
    .locals 0
    .parameter "mshowmusic"

    .prologue
    .line 1150
    return-void
.end method

.method public onShowPhoneNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 1162
    return-void
.end method

.method public onShowSmsNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 1159
    return-void
.end method

.method public onStatusBarStartUp()V
    .locals 0

    .prologue
    .line 1173
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1126
    return-void
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1147
    return-void
.end method

.method public onWeatherInfoUpated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "cityName"
    .parameter "strMinDegree"
    .parameter "strMaxDegree"
    .parameter "strWeatherRdes"
    .parameter "weatherType"
    .parameter "strExpDetail"

    .prologue
    .line 1156
    return-void
.end method
