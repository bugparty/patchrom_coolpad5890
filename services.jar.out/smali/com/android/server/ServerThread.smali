.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$Injector;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1086
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1087
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1089
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1091
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 97
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    return-void
.end method

.method public run()V
    .locals 129
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    .line 103
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 106
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 108
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 111
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 112
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 116
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 118
    .local v105, shutdownAction:Ljava/lang/String;
    if-eqz v105, :cond_0

    invoke-virtual/range {v105 .. v105}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 119
    const/4 v3, 0x0

    move-object/from16 v0, v105

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_12

    const/16 v98, 0x1

    .line 122
    .local v98, reboot:Z
    :goto_0
    invoke-virtual/range {v105 .. v105}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_13

    .line 123
    const/4 v3, 0x1

    invoke-virtual/range {v105 .. v105}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v105

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v97

    .line 128
    .local v97, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v98

    move-object/from16 v1, v97

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 134
    .end local v97           #reason:Ljava/lang/String;
    .end local v98           #reboot:Z
    :cond_0
    const-string v106, "SystemProperties.get(ShutdownThread.SHUTDOWN_RUNNING_PROPERTY)"

    .line 135
    .local v106, shutdownRunning:Ljava/lang/String;
    if-eqz v106, :cond_1

    invoke-virtual/range {v106 .. v106}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 140
    :cond_1
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 141
    .local v71, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v70, 0x0

    .line 143
    .local v70, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 145
    .local v16, headless:Z
    const/16 v41, 0x0

    .line 146
    .local v41, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v59, 0x0

    .line 147
    .local v59, contentService:Landroid/content/ContentService;
    const/16 v76, 0x0

    .line 148
    .local v76, lights:Lcom/android/server/LightsService;
    const/16 v94, 0x0

    .line 149
    .local v94, power:Lcom/android/server/PowerManagerService;
    const/16 v48, 0x0

    .line 150
    .local v48, battery:Lcom/android/server/BatteryService;
    const/16 v119, 0x0

    .line 151
    .local v119, vibrator:Lcom/android/server/VibratorService;
    const/16 v44, 0x0

    .line 152
    .local v44, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 153
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 154
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v86, 0x0

    .line 155
    .local v86, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v57, 0x0

    .line 156
    .local v57, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v126, 0x0

    .line 157
    .local v126, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v124, 0x0

    .line 158
    .local v124, wifi:Lcom/android/server/WifiService;
    const/16 v104, 0x0

    .line 159
    .local v104, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v93, 0x0

    .line 160
    .local v93, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 161
    .local v4, context:Landroid/content/Context;
    const/16 v128, 0x0

    .line 162
    .local v128, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v49, 0x0

    .line 163
    .local v49, bluetooth:Landroid/server/BluetoothService;
    const/16 v51, 0x0

    .line 167
    .local v51, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v115, 0x0

    .line 170
    .local v115, uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    const/16 v65, 0x0

    .line 171
    .local v65, dock:Lcom/android/server/DockObserver;
    const/16 v117, 0x0

    .line 172
    .local v117, usb:Lcom/android/server/usb/UsbService;
    const/16 v102, 0x0

    .line 173
    .local v102, serial:Lcom/android/server/SerialService;
    const/16 v113, 0x0

    .line 174
    .local v113, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v99, 0x0

    .line 175
    .local v99, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v109, 0x0

    .line 176
    .local v109, throttle:Lcom/android/server/ThrottleService;
    const/16 v88, 0x0

    .line 177
    .local v88, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v54, 0x0

    .line 178
    .local v54, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v75, 0x0

    .line 180
    .local v75, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v95, 0x0

    .line 185
    .local v95, poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 188
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_52

    .line 190
    .end local v94           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 192
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static/range {v70 .. v70}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 198
    const-string v3, "SystemServer"

    const-string v9, "CloudSecurity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v3, "cloudsecurity"

    new-instance v9, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;

    invoke-direct {v9, v4}, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 202
    const-string v3, "SystemServer"

    const-string v9, "SystemInterface Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v82, Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    .local v82, mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, v82

    invoke-virtual {v0, v3}, Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;->setMode(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 209
    :goto_3
    :try_start_3
    const-string v3, "coolpadSystem"

    move-object/from16 v0, v82

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 216
    new-instance v96, Lcom/yulong/android/poweroff/PowerOffManagerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/yulong/android/poweroff/PowerOffManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 217
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .local v96, poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    :try_start_4
    sget-object v3, Lcom/yulong/android/poweroff/PowerOffManager;->SYS_SERVICE:Ljava/lang/String;

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 218
    invoke-virtual/range {v96 .. v96}, Lcom/yulong/android/poweroff/PowerOffManagerService;->systemInit()V

    .line 222
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 225
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 229
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 231
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 234
    .local v62, cryptState:Ljava/lang/String;
    const/16 v92, 0x0

    .line 235
    .local v92, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 236
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v92, 0x1

    .line 243
    :cond_2
    :goto_4
    const-string v3, "yulong.restore"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v101

    .line 244
    .local v101, restoreState:Ljava/lang/String;
    const-string v3, "trigger_restart_restore"

    move-object/from16 v0, v101

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    const-string v3, "SystemServer"

    const-string v9, "Detected yulong Crash Restore Mode in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/16 v92, 0x1

    .line 257
    :cond_3
    if-eqz v70, :cond_16

    const/4 v3, 0x1

    :goto_5
    move/from16 v0, v92

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v93

    .line 260
    const/16 v72, 0x0

    .line 262
    .local v72, firstBoot:Z
    :try_start_5
    invoke-interface/range {v93 .. v93}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v72

    .line 274
    :goto_6
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 276
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 280
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v42, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 282
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .local v42, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_8
    const-string v3, "account"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_59
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_53

    move-object/from16 v41, v42

    .line 287
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_7
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v3, 0x1

    move/from16 v0, v70

    if-ne v0, v3, :cond_17

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v59

    .line 291
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 294
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v77, Lcom/android/server/LightsService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    .line 296
    .end local v76           #lights:Lcom/android/server/LightsService;
    .local v77, lights:Lcom/android/server/LightsService;
    :try_start_a
    const-string v3, "light"

    move-object/from16 v0, v77

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 298
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v77

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_54

    .line 300
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_b
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 302
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v120, Lcom/android/server/VibratorService;

    move-object/from16 v0, v120

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_55

    .line 304
    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .local v120, vibrator:Lcom/android/server/VibratorService;
    :try_start_c
    const-string v3, "vibrator"

    move-object/from16 v0, v120

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 308
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v77

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 310
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_56

    .line 312
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_d
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 315
    move-object/from16 v0, v96

    move-object/from16 v1, v77

    invoke-virtual {v0, v7, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setAlarmManager(Lcom/android/server/AlarmManagerService;Lcom/android/server/LightsService;)V

    .line 319
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 323
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v3, 0x1

    move/from16 v0, v70

    if-eq v0, v3, :cond_18

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    if-nez v72, :cond_19

    const/4 v3, 0x1

    :goto_a
    move/from16 v0, v92

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v128

    .line 327
    const-string v3, "window"

    move-object/from16 v0, v128

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 328
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v75

    .line 329
    const-string v3, "input"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 331
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v128

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 348
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 349
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    :goto_b
    move-object/from16 v95, v96

    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    move-object/from16 v119, v120

    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v76, v77

    .line 386
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v72           #firstBoot:Z
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v82           #mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    .end local v92           #onlyCore:Z
    .end local v101           #restoreState:Ljava/lang/String;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    :goto_c
    const/16 v63, 0x0

    .line 387
    .local v63, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v107, 0x0

    .line 388
    .local v107, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v73, 0x0

    .line 389
    .local v73, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v45, 0x0

    .line 390
    .local v45, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v90, 0x0

    .line 391
    .local v90, notification:Lcom/android/server/NotificationManagerService;
    const/16 v122, 0x0

    .line 392
    .local v122, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v78, 0x0

    .line 393
    .local v78, location:Lcom/android/server/LocationManagerService;
    const/16 v60, 0x0

    .line 394
    .local v60, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v111, 0x0

    .line 395
    .local v111, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v80, 0x0

    .line 396
    .local v80, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v67, 0x0

    .line 399
    .local v67, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v70

    if-eq v0, v3, :cond_4

    .line 401
    :try_start_e
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v74, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v74

    move-object/from16 v1, v128

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 403
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .local v74, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_f
    const-string v3, "input_method"

    move-object/from16 v0, v74

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_51

    move-object/from16 v73, v74

    .line 409
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 418
    :cond_4
    :goto_e
    :try_start_11
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 424
    :goto_f
    :try_start_12
    invoke-interface/range {v93 .. v93}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V

    .line 425
    const-string v3, "yulong.bootdex.ready"

    const-string v9, "1"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 439
    :goto_10
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403e5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_50

    .line 446
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v70

    if-eq v0, v3, :cond_1f

    .line 447
    const/16 v84, 0x0

    .line 448
    .local v84, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 454
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v85, Lcom/android/server/MountService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 456
    .end local v84           #mountService:Lcom/android/server/MountService;
    .local v85, mountService:Lcom/android/server/MountService;
    :try_start_15
    const-string v3, "mount"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4f

    move-object/from16 v84, v85

    .line 463
    .end local v85           #mountService:Lcom/android/server/MountService;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    :cond_5
    :goto_12
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v81, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 465
    .end local v80           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v81, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_17
    const-string v3, "lock_settings"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_4e

    move-object/from16 v80, v81

    .line 471
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v80       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_13
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v64, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 473
    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v64, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_19
    const-string v3, "device_policy"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_4d

    move-object/from16 v63, v64

    .line 479
    .end local v64           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_14
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v108, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v108

    move-object/from16 v1, v128

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 481
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v108, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1b
    const-string v3, "statusbar"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_4c

    move-object/from16 v107, v108

    .line 487
    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_15
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    .line 495
    :goto_16
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 497
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_e

    .line 503
    :goto_17
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v112, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v112

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .line 505
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v112, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1f
    const-string v3, "textservices"

    move-object/from16 v0, v112

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_4b

    move-object/from16 v111, v112

    .line 511
    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_18
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v87, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 513
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v87, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_21
    const-string v3, "netstats"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_4a

    move-object/from16 v12, v87

    .line 519
    .end local v87           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 523
    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_23
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_49

    .line 529
    :goto_1a
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v127, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    .line 531
    .end local v126           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v127, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_25
    const-string v3, "wifip2p"

    move-object/from16 v0, v127

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_48

    move-object/from16 v126, v127

    .line 537
    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v126       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v125, Lcom/android/server/WifiService;

    move-object/from16 v0, v125

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_13

    .line 539
    .end local v124           #wifi:Lcom/android/server/WifiService;
    .local v125, wifi:Lcom/android/server/WifiService;
    :try_start_27
    const-string v3, "wifi"

    move-object/from16 v0, v125

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_47

    move-object/from16 v124, v125

    .line 545
    .end local v125           #wifi:Lcom/android/server/WifiService;
    .restart local v124       #wifi:Lcom/android/server/WifiService;
    :goto_1c
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v58, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_14

    .line 548
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .local v58, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_29
    const-string v3, "connectivity"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 549
    move-object/from16 v0, v58

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 550
    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 551
    invoke-virtual/range {v124 .. v124}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 552
    invoke-virtual/range {v126 .. v126}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_46

    move-object/from16 v57, v58

    .line 559
    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1d
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v104

    .line 561
    const-string v3, "servicediscovery"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 568
    :goto_1e
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v110, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 570
    .end local v109           #throttle:Lcom/android/server/ThrottleService;
    .local v110, throttle:Lcom/android/server/ThrottleService;
    :try_start_2c
    const-string v3, "throttle"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_45

    move-object/from16 v109, v110

    .line 577
    .end local v110           #throttle:Lcom/android/server/ThrottleService;
    .restart local v109       #throttle:Lcom/android/server/ThrottleService;
    :goto_1f
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17

    .line 589
    :goto_20
    if-eqz v84, :cond_6

    .line 590
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 594
    :cond_6
    if-eqz v41, :cond_7

    .line 595
    :try_start_2e
    invoke-virtual/range {v41 .. v41}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_18

    .line 601
    :cond_7
    :goto_21
    if-eqz v59, :cond_8

    .line 602
    :try_start_2f
    invoke-virtual/range {v59 .. v59}, Landroid/content/ContentService;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_19

    .line 608
    :cond_8
    :goto_22
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v91, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v91

    move-object/from16 v1, v107

    move-object/from16 v2, v76

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1a

    .line 610
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .local v91, notification:Lcom/android/server/NotificationManagerService;
    :try_start_31
    const-string v3, "notification"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 611
    move-object/from16 v0, v91

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_44

    move-object/from16 v90, v91

    .line 617
    .end local v91           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    :goto_23
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1b

    .line 625
    :goto_24
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance v79, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1c

    .line 627
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .local v79, location:Lcom/android/server/LocationManagerService;
    :try_start_34
    const-string v3, "location"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_43

    move-object/from16 v78, v79

    .line 636
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    :goto_25
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "BugReport Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v3, "bug_report"

    new-instance v9, Lcom/yulong/android/server/BugReportService;

    invoke-direct {v9, v4}, Lcom/yulong/android/server/BugReportService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 645
    :goto_26
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v61, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1e

    .line 647
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v61, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_37
    const-string v3, "country_detector"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_42

    move-object/from16 v60, v61

    .line 653
    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_27
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 661
    :goto_28
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 668
    :goto_29
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110024

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 671
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    if-nez v16, :cond_9

    .line 673
    new-instance v123, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 674
    .end local v122           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v123, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3b
    const-string v3, "wallpaper"

    move-object/from16 v0, v123

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_41

    move-object/from16 v122, v123

    .line 681
    .end local v123           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v122       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_9
    :goto_2a
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 683
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .line 691
    :cond_a
    :goto_2b
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v66, Lcom/android/server/DockObserver;

    move-object/from16 v0, v66

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .end local v65           #dock:Lcom/android/server/DockObserver;
    .local v66, dock:Lcom/android/server/DockObserver;
    move-object/from16 v65, v66

    .line 699
    .end local v66           #dock:Lcom/android/server/DockObserver;
    .restart local v65       #dock:Lcom/android/server/DockObserver;
    :goto_2c
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .line 710
    :goto_2d
    :try_start_3f
    new-instance v116, Lcom/yulong/android/uitechno/service/UitechnoService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/yulong/android/uitechno/service/UitechnoService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_25

    .line 711
    .end local v115           #uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    .local v116, uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Uitechno Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v3, "uitechnoService"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_40

    move-object/from16 v115, v116

    .line 720
    .end local v116           #uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    .restart local v115       #uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    :goto_2e
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v118, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_26

    .line 723
    .end local v117           #usb:Lcom/android/server/usb/UsbService;
    .local v118, usb:Lcom/android/server/usb/UsbService;
    :try_start_42
    const-string v3, "usb"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_3f

    move-object/from16 v117, v118

    .line 729
    .end local v118           #usb:Lcom/android/server/usb/UsbService;
    .restart local v117       #usb:Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v103, Lcom/android/server/SerialService;

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_27

    .line 732
    .end local v102           #serial:Lcom/android/server/SerialService;
    .local v103, serial:Lcom/android/server/SerialService;
    :try_start_44
    const-string v3, "serial"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_3e

    move-object/from16 v102, v103

    .line 738
    .end local v103           #serial:Lcom/android/server/SerialService;
    .restart local v102       #serial:Lcom/android/server/SerialService;
    :goto_30
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v114, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v114

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_28

    .end local v113           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v114, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v113, v114

    .line 746
    .end local v114           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v113       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_31
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_29

    .line 754
    :goto_32
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v46, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2a

    .line 756
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .local v46, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_48
    const-string v3, "appwidget"

    move-object/from16 v0, v46

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_3d

    move-object/from16 v45, v46

    .line 762
    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_33
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v100, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2b

    .end local v99           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v100, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v99, v100

    .line 769
    .end local v100           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v99       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_34
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2c

    .line 776
    :goto_35
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v47, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 778
    .local v47, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v3, "AtCmdFwd"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2d

    .line 788
    .end local v47           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_36
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2e

    .line 796
    :goto_37
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v89, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2f

    .end local v88           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v89, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v88, v89

    .line 803
    .end local v89           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v88       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_38
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance v55, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_30

    .line 805
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v55, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_4f
    const-string v3, "commontime_management"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_3c

    move-object/from16 v54, v55

    .line 811
    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_39
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_31

    .line 817
    :goto_3a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110038

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 820
    :try_start_51
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v68, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_32

    .line 823
    .end local v67           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v68, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_52
    const-string v3, "dreams"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_3b

    move-object/from16 v67, v68

    .line 844
    .end local v68           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v84           #mountService:Lcom/android/server/MountService;
    .restart local v67       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_b
    :goto_3b
    invoke-static {v4}, Lcom/android/server/ServerThread$Injector;->registerServices(Landroid/content/Context;)V

    :goto_lewa_0
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 845
    .local v28, safeMode:Z
    if-eqz v28, :cond_1e

    .line 846
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 848
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 850
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 861
    :goto_3c
    if-eqz v115, :cond_c

    .line 863
    :try_start_53
    invoke-virtual/range {v115 .. v115}, Lcom/yulong/android/uitechno/service/UitechnoService;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_33

    .line 872
    :cond_c
    :goto_3d
    :try_start_54
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_34

    .line 877
    :goto_3e
    if-eqz v63, :cond_d

    .line 879
    :try_start_55
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_35

    .line 885
    :cond_d
    :goto_3f
    if-eqz v90, :cond_e

    .line 887
    :try_start_56
    invoke-virtual/range {v90 .. v90}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_36

    .line 894
    :cond_e
    :goto_40
    :try_start_57
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_37

    .line 899
    :goto_41
    if-eqz v28, :cond_f

    .line 900
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 906
    :cond_f
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v56

    .line 907
    .local v56, config:Landroid/content/res/Configuration;
    new-instance v83, Landroid/util/DisplayMetrics;

    invoke-direct/range {v83 .. v83}, Landroid/util/DisplayMetrics;-><init>()V

    .line 908
    .local v83, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/view/WindowManager;

    .line 909
    .local v121, w:Landroid/view/WindowManager;
    invoke-interface/range {v121 .. v121}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 910
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v56

    move-object/from16 v1, v83

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 912
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 914
    :try_start_58
    invoke-interface/range {v93 .. v93}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_38

    .line 919
    :goto_42
    :try_start_59
    invoke-virtual/range {v80 .. v80}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_39

    .line 927
    :goto_43
    if-eqz v95, :cond_10

    .line 928
    move-object/from16 v0, v95

    move-object/from16 v1, v128

    invoke-virtual {v0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->systemReady(Lcom/android/server/wm/WindowManagerService;)V

    .line 934
    :cond_10
    invoke-static {v4}, Lcom/android/server/ServerThread$Injector;->registerReceivers(Landroid/content/Context;)V

    move-object/from16 v17, v4

    .line 935
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 936
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 937
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 938
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 939
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v57

    .line 940
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v65

    .line 941
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v117

    .line 942
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v109

    .line 943
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v113

    .line 944
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v45

    .line 945
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v122

    .line 946
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v73

    .line 947
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v99

    .line 948
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v78

    .line 949
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v60

    .line 950
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v88

    .line 951
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v54

    .line 952
    .local v36, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v37, v111

    .line 953
    .local v37, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v107

    .line 954
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v38, v67

    .line 955
    .local v38, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v39, v75

    .line 956
    .local v39, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v49

    .line 963
    .local v40, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v40}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1077
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1078
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_11
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1082
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-void

    .line 119
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #config:Landroid/content/res/Configuration;
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v59           #contentService:Landroid/content/ContentService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v65           #dock:Lcom/android/server/DockObserver;
    .end local v67           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v70           #factoryTest:I
    .end local v71           #factoryTestStr:Ljava/lang/String;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v75           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .end local v80           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v83           #metrics:Landroid/util/DisplayMetrics;
    .end local v88           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .end local v93           #pm:Landroid/content/pm/IPackageManager;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .end local v99           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v102           #serial:Lcom/android/server/SerialService;
    .end local v104           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v106           #shutdownRunning:Ljava/lang/String;
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v109           #throttle:Lcom/android/server/ThrottleService;
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v113           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v115           #uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    .end local v117           #usb:Lcom/android/server/usb/UsbService;
    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .end local v121           #w:Landroid/view/WindowManager;
    .end local v122           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v124           #wifi:Lcom/android/server/WifiService;
    .end local v126           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v128           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_12
    const/16 v98, 0x0

    goto/16 :goto_0

    .line 125
    .restart local v98       #reboot:Z
    :cond_13
    const/16 v97, 0x0

    .restart local v97       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 141
    .end local v97           #reason:Ljava/lang/String;
    .end local v98           #reboot:Z
    .restart local v71       #factoryTestStr:Ljava/lang/String;
    .restart local v106       #shutdownRunning:Ljava/lang/String;
    :cond_14
    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v70

    goto/16 :goto_2

    .line 206
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    .restart local v51       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v59       #contentService:Landroid/content/ContentService;
    .restart local v65       #dock:Lcom/android/server/DockObserver;
    .restart local v70       #factoryTest:I
    .restart local v75       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v82       #mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    .restart local v86       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v93       #pm:Landroid/content/pm/IPackageManager;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v99       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v102       #serial:Lcom/android/server/SerialService;
    .restart local v104       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v109       #throttle:Lcom/android/server/ThrottleService;
    .restart local v113       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v115       #uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    .restart local v117       #usb:Lcom/android/server/usb/UsbService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    .restart local v124       #wifi:Lcom/android/server/WifiService;
    .restart local v126       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v128       #wm:Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v69

    .line 207
    .local v69, e:Landroid/os/RemoteException;
    :try_start_5a
    const-string v3, "SystemServer"

    const-string v9, "systemInterface remote error."

    move-object/from16 v0, v69

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_5a} :catch_1

    goto/16 :goto_3

    .line 381
    .end local v69           #e:Landroid/os/RemoteException;
    .end local v82           #mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    :catch_1
    move-exception v69

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v48

    .line 382
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v69, e:Ljava/lang/RuntimeException;
    :goto_44
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v69

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 238
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v69           #e:Ljava/lang/RuntimeException;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v82       #mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    .restart local v92       #onlyCore:Z
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    :cond_15
    :try_start_5b
    const-string v3, "1"

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v92, 0x1

    goto/16 :goto_4

    .line 257
    .restart local v101       #restoreState:Ljava/lang/String;
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 283
    .restart local v72       #firstBoot:Z
    :catch_2
    move-exception v69

    .line 284
    .local v69, e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v69

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5b} :catch_3

    goto/16 :goto_7

    .line 381
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v69           #e:Ljava/lang/Throwable;
    .end local v72           #firstBoot:Z
    .end local v92           #onlyCore:Z
    .end local v101           #restoreState:Ljava/lang/String;
    :catch_3
    move-exception v69

    move-object/from16 v95, v96

    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v48

    .end local v48           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto :goto_44

    .line 288
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v72       #firstBoot:Z
    .restart local v92       #onlyCore:Z
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v101       #restoreState:Ljava/lang/String;
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 324
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    :cond_18
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_9

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 350
    :cond_1a
    const/4 v3, 0x1

    move/from16 v0, v70

    if-ne v0, v3, :cond_1b

    .line 352
    :try_start_5c
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 381
    :catch_4
    move-exception v69

    move-object/from16 v95, v96

    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    move-object/from16 v119, v120

    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto :goto_44

    .line 354
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    :cond_1b
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v50, Landroid/server/BluetoothService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_5c} :catch_4

    .line 356
    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .local v50, bluetooth:Landroid/server/BluetoothService;
    :try_start_5d
    const-string v3, "bluetooth"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 357
    invoke-virtual/range {v50 .. v50}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 359
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 360
    new-instance v52, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_5d} :catch_57

    .line 361
    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v52, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_5e
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 363
    invoke-virtual/range {v50 .. v50}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_5e} :catch_58

    move-object/from16 v51, v52

    .line 371
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v51       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_1c
    :try_start_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    .line 373
    .local v43, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    .line 375
    .local v53, bluetoothOn:I
    if-nez v43, :cond_1d

    if-eqz v53, :cond_1d

    .line 376
    invoke-virtual/range {v50 .. v50}, Landroid/server/BluetoothService;->enable()Z
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_57

    :cond_1d
    move-object/from16 v49, v50

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b

    .line 404
    .end local v43           #airplaneModeOn:I
    .end local v53           #bluetoothOn:I
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v72           #firstBoot:Z
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v82           #mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    .end local v92           #onlyCore:Z
    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .end local v101           #restoreState:Ljava/lang/String;
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v63       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    .restart local v80       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    .restart local v122       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_5
    move-exception v69

    .line 405
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 412
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v69

    .line 413
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 419
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v69

    .line 420
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 426
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v69

    .line 427
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 457
    .end local v69           #e:Ljava/lang/Throwable;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    :catch_9
    move-exception v69

    .line 458
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 466
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v69

    .line 467
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 474
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v69

    .line 475
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 482
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v69

    .line 483
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 490
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v69

    .line 491
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 498
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v69

    .line 499
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 506
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v69

    .line 507
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 514
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v69

    .line 515
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 524
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v69

    move-object/from16 v8, v86

    .line 525
    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 532
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v69

    .line 533
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 540
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v69

    .line 541
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 554
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v69

    .line 555
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 563
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v69

    .line 564
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 572
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v69

    .line 573
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 580
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v69

    .line 581
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 596
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v69

    .line 597
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 603
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v69

    .line 604
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 612
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v69

    .line 613
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 620
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v69

    .line 621
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 628
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v69

    .line 629
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 638
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v69

    .line 639
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BugReport Service"

    move-object/from16 v0, v69

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 648
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v69

    .line 649
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 656
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v69

    .line 657
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 664
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v69

    .line 665
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 676
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v69

    .line 677
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 685
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v69

    .line 686
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 694
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v69

    .line 695
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 702
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v69

    .line 703
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 713
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v69

    .line 714
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting UitechnoService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 724
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v69

    .line 725
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 733
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v69

    .line 734
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v69

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 741
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v69

    .line 742
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 749
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v69

    .line 750
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v69

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 757
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v69

    .line 758
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 764
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v69

    .line 765
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 771
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v69

    .line 772
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 779
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v69

    .line 780
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 791
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v69

    .line 792
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 798
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v69

    .line 799
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 806
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v69

    .line 807
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 813
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v69

    .line 814
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 824
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v69

    .line 825
    .restart local v69       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 853
    .end local v69           #e:Ljava/lang/Throwable;
    .end local v84           #mountService:Lcom/android/server/MountService;
    .restart local v28       #safeMode:Z
    :cond_1e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3c

    .line 864
    :catch_33
    move-exception v69

    .line 865
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making Uitechno Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 873
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v69

    .line 874
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 880
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v69

    .line 881
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 888
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v69

    .line 889
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 895
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v69

    .line 896
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 915
    .end local v69           #e:Ljava/lang/Throwable;
    .restart local v56       #config:Landroid/content/res/Configuration;
    .restart local v83       #metrics:Landroid/util/DisplayMetrics;
    .restart local v121       #w:Landroid/view/WindowManager;
    :catch_38
    move-exception v69

    .line 916
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 920
    .end local v69           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v69

    .line 921
    .restart local v69       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 263
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v56           #config:Landroid/content/res/Configuration;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v67           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v69           #e:Ljava/lang/Throwable;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .end local v80           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v83           #metrics:Landroid/util/DisplayMetrics;
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v121           #w:Landroid/view/WindowManager;
    .end local v122           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v72       #firstBoot:Z
    .restart local v82       #mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    .restart local v86       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v92       #onlyCore:Z
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v101       #restoreState:Ljava/lang/String;
    :catch_3a
    move-exception v3

    goto/16 :goto_6

    .line 824
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v72           #firstBoot:Z
    .end local v82           #mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v92           #onlyCore:Z
    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .end local v101           #restoreState:Ljava/lang/String;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v63       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v68       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    .restart local v80       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v122       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3b
    move-exception v69

    move-object/from16 v67, v68

    .end local v68           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v67       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_5b

    .line 806
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v55       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3c
    move-exception v69

    move-object/from16 v54, v55

    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_5a

    .line 757
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v46       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3d
    move-exception v69

    move-object/from16 v45, v46

    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_59

    .line 733
    .end local v102           #serial:Lcom/android/server/SerialService;
    .restart local v103       #serial:Lcom/android/server/SerialService;
    :catch_3e
    move-exception v69

    move-object/from16 v102, v103

    .end local v103           #serial:Lcom/android/server/SerialService;
    .restart local v102       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_58

    .line 724
    .end local v117           #usb:Lcom/android/server/usb/UsbService;
    .restart local v118       #usb:Lcom/android/server/usb/UsbService;
    :catch_3f
    move-exception v69

    move-object/from16 v117, v118

    .end local v118           #usb:Lcom/android/server/usb/UsbService;
    .restart local v117       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_57

    .line 713
    .end local v115           #uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    .restart local v116       #uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    :catch_40
    move-exception v69

    move-object/from16 v115, v116

    .end local v116           #uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    .restart local v115       #uitechno:Lcom/yulong/android/uitechno/service/UitechnoService;
    goto/16 :goto_56

    .line 676
    .end local v122           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v123       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_41
    move-exception v69

    move-object/from16 v122, v123

    .end local v123           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v122       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_55

    .line 648
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v61       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_42
    move-exception v69

    move-object/from16 v60, v61

    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_54

    .line 628
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    :catch_43
    move-exception v69

    move-object/from16 v78, v79

    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_53

    .line 612
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v91       #notification:Lcom/android/server/NotificationManagerService;
    :catch_44
    move-exception v69

    move-object/from16 v90, v91

    .end local v91           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_52

    .line 572
    .end local v109           #throttle:Lcom/android/server/ThrottleService;
    .restart local v110       #throttle:Lcom/android/server/ThrottleService;
    :catch_45
    move-exception v69

    move-object/from16 v109, v110

    .end local v110           #throttle:Lcom/android/server/ThrottleService;
    .restart local v109       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_51

    .line 554
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_46
    move-exception v69

    move-object/from16 v57, v58

    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_50

    .line 540
    .end local v124           #wifi:Lcom/android/server/WifiService;
    .restart local v125       #wifi:Lcom/android/server/WifiService;
    :catch_47
    move-exception v69

    move-object/from16 v124, v125

    .end local v125           #wifi:Lcom/android/server/WifiService;
    .restart local v124       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_4f

    .line 532
    .end local v126           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v127       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_48
    move-exception v69

    move-object/from16 v126, v127

    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v126       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_4e

    .line 524
    :catch_49
    move-exception v69

    goto/16 :goto_4d

    .line 514
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v86       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v87       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4a
    move-exception v69

    move-object/from16 v12, v87

    .end local v87           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4c

    .line 506
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v112       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4b
    move-exception v69

    move-object/from16 v111, v112

    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4b

    .line 482
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v108       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_4c
    move-exception v69

    move-object/from16 v107, v108

    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4a

    .line 474
    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_4d
    move-exception v69

    move-object/from16 v63, v64

    .end local v64           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_49

    .line 466
    .end local v80           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_4e
    move-exception v69

    move-object/from16 v80, v81

    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v80       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_48

    .line 457
    .end local v84           #mountService:Lcom/android/server/MountService;
    .restart local v85       #mountService:Lcom/android/server/MountService;
    :catch_4f
    move-exception v69

    move-object/from16 v84, v85

    .end local v85           #mountService:Lcom/android/server/MountService;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_47

    .line 443
    .end local v84           #mountService:Lcom/android/server/MountService;
    :catch_50
    move-exception v3

    goto/16 :goto_11

    .line 404
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_51
    move-exception v69

    move-object/from16 v73, v74

    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_46

    .line 381
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v67           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .end local v80           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v122           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #power:Lcom/android/server/PowerManagerService;
    :catch_52
    move-exception v69

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v48

    .end local v48           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v94

    .end local v94           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_44

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v72       #firstBoot:Z
    .restart local v82       #mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    .restart local v92       #onlyCore:Z
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v101       #restoreState:Ljava/lang/String;
    :catch_53
    move-exception v69

    move-object/from16 v95, v96

    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v48

    .end local v48           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_44

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    :catch_54
    move-exception v69

    move-object/from16 v95, v96

    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v48

    .end local v48           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_44

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    :catch_55
    move-exception v69

    move-object/from16 v95, v96

    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_44

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    :catch_56
    move-exception v69

    move-object/from16 v95, v96

    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v119, v120

    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_44

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    :catch_57
    move-exception v69

    move-object/from16 v95, v96

    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    move-object/from16 v49, v50

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v119, v120

    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_44

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    :catch_58
    move-exception v69

    move-object/from16 v95, v96

    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    move-object/from16 v51, v52

    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v51       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v49, v50

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v119, v120

    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_44

    .line 283
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v95           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v96       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    :catch_59
    move-exception v69

    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_45

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v72           #firstBoot:Z
    .end local v82           #mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    .end local v92           #onlyCore:Z
    .end local v96           #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .end local v101           #restoreState:Ljava/lang/String;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v63       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    .restart local v80       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v95       #poweroffservice:Lcom/yulong/android/poweroff/PowerOffManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v122       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1f
    move-object/from16 v8, v86

    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_lewa_0
.end method
