.class Landroid/server/BluetoothEventLoop;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"


# static fields
.field private static final ACCESS_REQUEST_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_REQUEST_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CREATE_DEVICE_ALREADY_EXISTS:I = 0x1

.field private static final CREATE_DEVICE_FAILED:I = -0x1

.field private static final CREATE_DEVICE_SUCCESS:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_AGENT_CANCEL:I = 0x2

.field private static final EVENT_DUN_USER_TIMEOUT:I = 0x5

.field private static final EVENT_PAIRING_CONSENT_DELAYED_ACCEPT:I = 0x1

.field private static final EVENT_PAIRING_TIMEOUT:I = 0x3

.field private static final EVENT_SAP_USER_TIMEOUT:I = 0x4

.field private static final INCOMING_PAIRING_TIMEOUT:I = 0x6590

.field private static final TAG:Ljava/lang/String; = "BluetoothEventLoop"

.field private static final USER_CONFIRM_TIMEOUT:I = 0x7530


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAuthorizationAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorizationRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

.field private final mContext:Landroid/content/Context;

.field private final mGattRequestData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mInterrupted:Z

.field private mNativeData:I

.field private final mPasskeyAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStarted:Z

.field private mThread:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 146
    invoke-static {}, Landroid/server/BluetoothEventLoop;->classInitNative()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 3
    .parameter "context"
    .parameter "adapter"
    .parameter "bluetoothService"
    .parameter "bluetoothState"

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Landroid/server/BluetoothEventLoop$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothEventLoop$1;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    .line 173
    new-instance v1, Landroid/server/BluetoothEventLoop$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothEventLoop$2;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 152
    iput-object p3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    .line 153
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    .line 154
    iput-object p4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    .line 155
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationRequestData:Ljava/util/HashMap;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    .line 159
    iput-object p2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 161
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 162
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "BluetoothEventLoop"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 164
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 165
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->initializeNativeDataNative()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothEventLoop;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method private addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 232
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getDeviceProperties()Landroid/server/BluetoothDeviceProperties;

    move-result-object v4

    .line 234
    .local v4, deviceProperties:Landroid/server/BluetoothDeviceProperties;
    const/4 v9, 0x1

    invoke-virtual {v4, p1, p2, v9}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Map;

    .line 235
    const-string v9, "RSSI"

    invoke-virtual {v4, p1, v9}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, rssi:Ljava/lang/String;
    const-string v9, "Broadcaster"

    invoke-virtual {v4, p1, v9}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, broadcaster:Ljava/lang/String;
    const-string v9, "Class"

    invoke-virtual {v4, p1, v9}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, classValue:Ljava/lang/String;
    const-string v9, "Type"

    invoke-virtual {v4, p1, v9}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, devType:Ljava/lang/String;
    const-string v9, "Name"

    invoke-virtual {v4, p1, v9}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, name:Ljava/lang/String;
    const-string v9, "Address"

    invoke-virtual {v4, p1, v9}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, addr:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 245
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-short v8, v9

    .line 249
    .local v8, rssiValue:S
    :goto_0
    if-eqz v2, :cond_2

    .line 250
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.FOUND"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v10, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    const-string v9, "android.bluetooth.device.extra.CLASS"

    new-instance v10, Landroid/bluetooth/BluetoothClass;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    const-string v9, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 255
    const-string v9, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 271
    .end local v5           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 247
    .end local v8           #rssiValue:S
    :cond_1
    const/16 v8, -0x8000

    .restart local v8       #rssiValue:S
    goto :goto_0

    .line 258
    :cond_2
    if-eqz v3, :cond_3

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Broadcaster: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 260
    const-string v9, "LE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "false"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 261
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.FOUND"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v10, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 263
    const-string v9, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 264
    const-string v9, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    .end local v5           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClassValue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for remote device: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private checkAuthorizationRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 694
    const-string v2, "BluetoothEventLoop"

    const-string v3, "Unable to get device address in checkAuthorizationRequestAndGetAddress, returning null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    :goto_0
    return-object v1

    .line 698
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 699
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationRequestData:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    move-object v1, v0

    .line 705
    goto :goto_0
.end method

.method private checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v1, 0x0

    .line 709
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 711
    const-string v2, "BluetoothEventLoop"

    const-string v3, "Unable to get device address in checkPairingRequestAndGetAddress, returning null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return-object v1

    .line 715
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 716
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 720
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    goto :goto_0

    .line 728
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 729
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    :cond_2
    move-object v1, v0

    .line 730
    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private isOtherSinkInNonDisconnectedState(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1139
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 1144
    .local v1, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return v3

    .line 1145
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1146
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 1139
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1537
    const-string v0, "BluetoothEventLoop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    return-void
.end method

.method private onAgentAuthorize(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "objectPath"
    .parameter "deviceUuid"
    .parameter "nativeData"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1063
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1067
    const-string v4, "BluetoothEventLoop"

    const-string v5, "Unable to get device address in onAuthAgentAuthorize"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1071
    :cond_1
    const/4 v1, 0x0

    .line 1072
    .local v1, authorized:Z
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 1074
    .local v3, uuid:Landroid/os/ParcelUuid;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1075
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v6, :cond_5

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    invoke-direct {p0, v0}, Landroid/server/BluetoothEventLoop;->isOtherSinkInNonDisconnectedState(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1083
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-lez v6, :cond_3

    move v1, v4

    .line 1084
    :goto_1
    if-eqz v1, :cond_4

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1085
    const-string v4, "BluetoothEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First check pass for incoming A2DP / AVRCP connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0, v5}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    .line 1122
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAgentAuthorize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v1, v5

    .line 1083
    goto :goto_1

    .line 1097
    :cond_4
    const-string v5, "BluetoothEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Incoming A2DP / AVRCP connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v2, v1}, Landroid/bluetooth/BluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 1100
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0, v4}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    goto :goto_2

    .line 1102
    :cond_5
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isInputDevice(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1104
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2}, Landroid/server/BluetoothService;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-lez v6, :cond_6

    move v1, v4

    .line 1106
    :goto_3
    if-eqz v1, :cond_7

    .line 1107
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First check pass for incoming HID connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->notifyIncomingHidConnection(Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_6
    move v1, v5

    .line 1104
    goto :goto_3

    .line 1111
    :cond_7
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejecting incoming HID connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_2

    .line 1114
    :cond_8
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isBnep(Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1116
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/server/BluetoothService;->allowIncomingTethering()Z

    move-result v1

    .line 1117
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_2

    .line 1119
    :cond_9
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejecting incoming "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_2
.end method

.method private onAgentCancel()V
    .locals 5

    .prologue
    .line 1155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1158
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1161
    return-void
.end method

.method private onAgentOutOfBandDataAvailable(Ljava/lang/String;)Z
    .locals 4
    .parameter "objectPath"

    .prologue
    const/4 v1, 0x0

    .line 1126
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return v1

    .line 1128
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1131
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1133
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onCreateDeviceResult(Ljava/lang/String;I)V
    .locals 9
    .parameter "address"
    .parameter "result"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x580

    .line 1201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result of onCreateDeviceResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1202
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 1203
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    .line 1205
    .local v1, btDeviceClass:I
    packed-switch p2, :pswitch_data_0

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1207
    :pswitch_0
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1208
    .local v3, path:Ljava/lang/String;
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device exists "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    if-eqz v3, :cond_2

    .line 1210
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start service discovery "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v5, "Type"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothService;->getUpdatedRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1212
    .local v2, devType:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, "LE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1213
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v3}, Landroid/server/BluetoothService;->discoverPrimaryServicesNative(Ljava/lang/String;)Z

    goto :goto_0

    .line 1215
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1216
    if-ne v1, v7, :cond_0

    .line 1217
    const-string v4, "The device is HID pointing device,moving pairing state"

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1218
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1, v8}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto :goto_0

    .line 1223
    .end local v2           #devType:Ljava/lang/String;
    :cond_2
    const-string v4, "BluetoothEventLoop"

    const-string v5, "Device exists, but we don\'t have the bluez path, failing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    .end local v3           #path:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 1227
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothService;->sendGattIntent(Ljava/lang/String;I)V

    .line 1228
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    .line 1229
    if-ne v1, v7, :cond_0

    .line 1230
    const-string v4, "The device is HID pointing device,moving pairing state to BOND_NONE"

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1231
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v5, 0xa

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1237
    :pswitch_2
    if-ne v1, v7, :cond_0

    .line 1238
    const-string v4, "The device is HID pointing device,moving pairing state"

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1239
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1, v8}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1205
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .locals 1
    .parameter "address"
    .parameter "result"

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 332
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onCreatePairedDeviceResult(Ljava/lang/String;I)V

    .line 333
    return-void
.end method

.method private onDUNAuthorize(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "objectPath"
    .parameter "uuid"
    .parameter "nativeData"

    .prologue
    .line 848
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDUNAuthorize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkAuthorizationRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 851
    const-string v4, "BluetoothEventLoop"

    const-string v5, "address is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/server/BluetoothService;->DUNAuthorize(Ljava/lang/String;Z)Z

    .line 880
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->getTrustState(Ljava/lang/String;)Z

    move-result v3

    .line 857
    .local v3, trusted:Z
    if-eqz v3, :cond_1

    .line 860
    const-string v4, "BluetoothEventLoop"

    const-string v5, "Trusted device connection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/server/BluetoothService;->DUNAuthorize(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 863
    :cond_1
    const-string v4, "BluetoothEventLoop"

    const-string v5, "Get the remote address"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 865
    .local v2, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 870
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 871
    const-string/jumbo v4, "name"

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string v4, "address"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    const-string/jumbo v4, "uuid"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 875
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onDUNStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "objectPath"
    .parameter "state"
    .parameter "nativeData"

    .prologue
    .line 906
    const-string v3, "BluetoothEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDUNStateChanged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, address:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 910
    const-string v3, "BluetoothEventLoop"

    const-string v4, "Unable to get device address , returning null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :goto_0
    return-void

    .line 914
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 917
    const-string v3, "Connected"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    const-string v3, "BluetoothEventLoop"

    const-string v4, "On DUN state changed "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x2

    .line 924
    .local v0, DUNState:I
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.bluetooth.dun.statechanged"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 926
    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 927
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 922
    .end local v0           #DUNState:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #DUNState:I
    goto :goto_1
.end method

.method private onDeviceCreated(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceObjectPath"

    .prologue
    .line 341
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 343
    const-string v2, "BluetoothEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDeviceCreated: device address null! deviceObjectPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, properties:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 352
    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeviceDisappeared(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private onDeviceDisconnectRequested(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"

    .prologue
    .line 313
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 315
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceDisconnectRequested: Address of the remote device in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 320
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeviceFound(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 282
    if-nez p2, :cond_0

    .line 283
    const-string v0, "BluetoothEventLoop"

    const-string v1, "ERROR: Remote device properties are null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    const-string v0, "BluetoothEventLoop"

    const-string v1, "Bluetooth is not on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 489
    const/4 v9, 0x0

    aget-object v5, p2, v9

    .line 490
    .local v5, name:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 492
    const-string v9, "BluetoothEventLoop"

    const-string/jumbo v10, "onDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 497
    const-string v9, "BluetoothEventLoop"

    const-string v10, "Bluetooth is not enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v9, "Connected"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string v10, "false"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 500
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v3, intent:Landroid/content/Intent;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 502
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Landroid/server/BluetoothService;->sendDeviceConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 504
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    const/high16 v9, 0x800

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device property changed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 514
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 515
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "Name"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 516
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 519
    const-string v9, "android.bluetooth.device.extra.NAME"

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const/high16 v9, 0x800

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 522
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const-string v9, "Alias"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 523
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 526
    const/high16 v9, 0x800

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 527
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    const-string v9, "Class"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 529
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 532
    const-string v9, "android.bluetooth.device.extra.CLASS"

    new-instance v10, Landroid/bluetooth/BluetoothClass;

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 534
    const/high16 v9, 0x800

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    const-string v9, "RSSI"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 537
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.RSSI_UPDATE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 540
    const-string v9, "android.bluetooth.device.extra.RSSI"

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 542
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    const-string v9, "Connected"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 543
    const-string v9, "BluetoothEventLoop"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Device property Connected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v3, 0x0

    .line 547
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 548
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 552
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0x1f40

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setLinkTimeout(Ljava/lang/String;I)V

    .line 554
    :cond_7
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x2

    invoke-virtual {v9, v1, v10}, Landroid/server/BluetoothService;->sendDeviceConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 571
    :goto_1
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 572
    const/high16 v9, 0x800

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 573
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 558
    :cond_8
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xb

    if-ne v9, v10, :cond_9

    .line 560
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 564
    :cond_9
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_a

    .line 565
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->clearRemoteDeviceGattServices(Ljava/lang/String;)V

    .line 567
    :cond_a
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Landroid/server/BluetoothService;->sendDeviceConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 574
    .end local v3           #intent:Landroid/content/Intent;
    :cond_b
    const-string v9, "UUIDs"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 575
    const/4 v8, 0x0

    .line 576
    .local v8, uuid:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 577
    .local v4, len:I
    if-lez v4, :cond_d

    .line 578
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v7, str:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .local v2, i:I
    :goto_2
    array-length v9, p2

    if-ge v2, v9, :cond_c

    .line 580
    aget-object v9, p2, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 583
    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 585
    .end local v2           #i:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_d
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0, v5, v8}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 590
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 591
    .end local v4           #len:I
    .end local v8           #uuid:Ljava/lang/String;
    :cond_e
    const-string v9, "Services"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 592
    const/4 v6, 0x0

    .line 593
    .local v6, services:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 594
    .restart local v4       #len:I
    if-lez v4, :cond_10

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .restart local v7       #str:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .restart local v2       #i:I
    :goto_3
    array-length v9, p2

    if-ge v2, v9, :cond_f

    .line 597
    aget-object v9, p2, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 600
    :cond_f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 602
    .end local v2           #i:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_10
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0, v5, v6}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->sendGattIntent(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 606
    .end local v4           #len:I
    .end local v6           #services:Ljava/lang/String;
    :cond_11
    const-string v9, "Paired"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 607
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 613
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 614
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xc

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 617
    :cond_12
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 618
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Trusted"

    const-string v11, "false"

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    :cond_13
    const-string v9, "Trusted"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 622
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set trust state succeeded, value is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 623
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 624
    :cond_14
    const-string v9, "LeConnParams"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 625
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.LE_CONN_PARAMS"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 628
    const-string v9, "android.bluetooth.device.extra.CONN_INTERVAL"

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 629
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onDeviceRemoved(Ljava/lang/String;)V
    .locals 6
    .parameter "deviceObjectPath"

    .prologue
    const/4 v5, 0x0

    .line 363
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 365
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 367
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "UUIDs"

    invoke-virtual {v1, v0, v2, v5}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "Services"

    invoke-virtual {v1, v0, v2, v5}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "Trusted"

    const-string v3, "false"

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->clearRemoteDeviceGattServices(Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method

.method private onDiscoverCharacteristicsResult(Ljava/lang/String;Z)V
    .locals 3
    .parameter "serviceObjectPath"
    .parameter "result"

    .prologue
    .line 1392
    const-string v0, "BluetoothEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDiscoverCharacteristicsResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    if-eqz p2, :cond_0

    .line 1395
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService;->updateGattServicePropertiesCache(Ljava/lang/String;)Z

    .line 1397
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->makeDiscoverCharacteristicsCallback(Ljava/lang/String;Z)V

    .line 1398
    return-void
.end method

.method private onDiscoverServicesResult(Ljava/lang/String;Z)V
    .locals 3
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 1172
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1173
    const-string v1, "Bluetooth is not on"

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1181
    if-nez v0, :cond_2

    .line 1182
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Unexpected error! address is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1185
    :cond_2
    if-eqz p2, :cond_3

    .line 1186
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)V

    .line 1188
    :cond_3
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDisplayPasskey(Ljava/lang/String;II)V
    .locals 4
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 1009
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1014
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1016
    const-string v2, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1017
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1019
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1021
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onGattDiscoverCharacteristicsRequest(Ljava/lang/String;III)V
    .locals 3
    .parameter "gattObjectPath"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 1461
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Inside onGattDiscoverCharacteristicsRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .line 1467
    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothGattProfileHandler;->onGattDiscoverCharacteristicsRequest(Ljava/lang/String;III)V

    .line 1468
    return-void
.end method

.method private onGattDiscoverIncludedRequest(Ljava/lang/String;III)V
    .locals 3
    .parameter "gattObjectPath"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 1450
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Inside onGattDiscoverIncludedRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1454
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .line 1456
    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothGattProfileHandler;->onGattDiscoverIncludedRequest(Ljava/lang/String;III)V

    .line 1457
    return-void
.end method

.method private onGattDiscoverPrimaryByUuidRequest(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .parameter "gattObjectPath"
    .parameter "uuid"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 1438
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Inside onGattDiscoverPrimaryByUuidRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p5

    .line 1444
    invoke-virtual/range {v0 .. v5}, Landroid/server/BluetoothGattProfileHandler;->onGattDiscoverPrimaryByUuidRequest(Ljava/lang/String;IILjava/lang/String;I)V

    .line 1446
    return-void
.end method

.method private onGattDiscoverPrimaryRequest(Ljava/lang/String;III)V
    .locals 3
    .parameter "gattObjectPath"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 1426
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Inside onGattDiscoverPrimaryRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .line 1432
    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothGattProfileHandler;->onGattDiscoverPrimaryRequest(Ljava/lang/String;III)V

    .line 1433
    return-void
.end method

.method private onGattFindInfoRequest(Ljava/lang/String;III)V
    .locals 3
    .parameter "gattObjectPath"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 1472
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Inside onGattFindInfoRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .line 1478
    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothGattProfileHandler;->onGattFindInfoRequest(Ljava/lang/String;III)V

    .line 1479
    return-void
.end method

.method private onGattReadByTypeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .parameter "gattObjectPath"
    .parameter "uuid"
    .parameter "auth"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 1484
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Inside onGattReadByTypeRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    move-object v1, p1

    move v2, p4

    move v3, p5

    move-object v4, p2

    move-object v5, p3

    move v6, p6

    .line 1490
    invoke-virtual/range {v0 .. v6}, Landroid/server/BluetoothGattProfileHandler;->onGattReadByTypeRequest(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    .line 1492
    return-void
.end method

.method private onGattReadRequest(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "gattObjectPath"
    .parameter "auth"
    .parameter "handle"
    .parameter "reqHandle"

    .prologue
    .line 1495
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Inside onGattReadRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .line 1501
    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothGattProfileHandler;->onGattReadRequest(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1502
    return-void
.end method

.method private onGattSetClientConfigDescriptor(Ljava/lang/String;II[B)V
    .locals 3
    .parameter "gattObjectPath"
    .parameter "sessionHandle"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    .line 1529
    const-string v1, "BluetoothEventLoop"

    const-string/jumbo v2, "onGattSetClientConfigDescriptor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .line 1533
    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothGattProfileHandler;->onGattSetClientConfigDescriptor(Ljava/lang/String;II[B)V

    .line 1534
    return-void
.end method

.method private onGattWriteCommand(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 3
    .parameter "gattObjectPath"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    .line 1519
    const-string v1, "BluetoothEventLoop"

    const-string/jumbo v2, "onGattWriteCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .line 1523
    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothGattProfileHandler;->onGattWriteCommand(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 1525
    return-void
.end method

.method private onGattWriteRequest(Ljava/lang/String;Ljava/lang/String;I[BII)V
    .locals 7
    .parameter "gattObjectPath"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"
    .parameter "sessionHandle"
    .parameter "reqHandle"

    .prologue
    .line 1507
    const-string v1, "BluetoothEventLoop"

    const-string/jumbo v2, "onGattWriteRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 1513
    invoke-virtual/range {v0 .. v6}, Landroid/server/BluetoothGattProfileHandler;->onGattWriteRequest(Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 1515
    return-void
.end method

.method private onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "devicePath"
    .parameter "channelPath"
    .parameter "exists"

    .prologue
    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health Device : devicePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":channelPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothService;->onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1388
    return-void
.end method

.method private onHealthDeviceConnectionResult(II)V
    .locals 2
    .parameter "chanCode"
    .parameter "result"

    .prologue
    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHealthDeviceConnectionResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1331
    const/16 v0, 0x1770

    if-eq p2, v0, :cond_0

    .line 1332
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService;->onHealthDeviceChannelConnectionError(II)V

    .line 1335
    :cond_0
    return-void
.end method

.method private onHealthDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "devicePath"
    .parameter "propValues"

    .prologue
    const/4 v2, 0x1

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health Device : Name of Property is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v1, p2, v2

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService;->onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    return-void
.end method

.method private onIndicateResponse(Ljava/lang/String;Z)V
    .locals 4
    .parameter "path"
    .parameter "result"

    .prologue
    .line 1408
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onIndicateResponse path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothGattProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;

    move-result-object v0

    .line 1411
    .local v0, gattProfileHandler:Landroid/server/BluetoothGattProfileHandler;
    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothGattProfileHandler;->onIndicateResponse(Ljava/lang/String;Z)V

    .line 1412
    return-void
.end method

.method private onInputDeviceConnectionResult(Ljava/lang/String;I)V
    .locals 7
    .parameter "path"
    .parameter "result"

    .prologue
    .line 1253
    const/16 v4, 0x138c

    if-eq p2, v4, :cond_0

    .line 1254
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1278
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1257
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 1258
    .local v1, connected:Z
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1259
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2}, Landroid/server/BluetoothService;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 1260
    .local v3, state:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1261
    const/16 v4, 0x1389

    if-ne p2, v4, :cond_2

    .line 1262
    const/4 v1, 0x1

    .line 1276
    :goto_1
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0, v1}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1264
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1266
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 1267
    const/16 v4, 0x1388

    if-ne p2, v4, :cond_4

    .line 1268
    const/4 v1, 0x0

    goto :goto_1

    .line 1271
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 1274
    :cond_5
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error onInputDeviceConnectionResult. State is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onInputDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "propValues"

    .prologue
    .line 642
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 644
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onInputDevicePropertyChanged: Address of the remote device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return-void

    .line 647
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Device : Name of Property is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, state:Z
    const/4 v2, 0x1

    aget-object v2, p2, v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    const/4 v1, 0x1

    .line 652
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0, v1}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onNetworkDeviceConnected(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "address"
    .parameter "iface"
    .parameter "destUuid"

    .prologue
    .line 1358
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1359
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 1361
    return-void
.end method

.method private onNetworkDeviceDisconnected(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 1344
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1345
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1347
    return-void
.end method

.method private onPanDeviceConnectionResult(Ljava/lang/String;I)V
    .locals 9
    .parameter "path"
    .parameter "result"

    .prologue
    const/4 v5, 0x2

    .line 1288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPanDeviceConnectionResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1290
    const/16 v6, 0x3ec

    if-eq p2, v6, :cond_0

    .line 1291
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1319
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1294
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 1295
    .local v1, connected:Z
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1296
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2}, Landroid/server/BluetoothService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 1297
    .local v4, state:I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 1298
    const/16 v6, 0x3e9

    if-ne p2, v6, :cond_2

    .line 1299
    const/4 v1, 0x1

    .line 1314
    :goto_1
    if-eqz v1, :cond_6

    move v3, v5

    .line 1316
    .local v3, newState:I
    :goto_2
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2, v3, v5}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1301
    .end local v3           #newState:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1303
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 1304
    const/16 v6, 0x3e8

    if-ne p2, v6, :cond_4

    .line 1305
    const/4 v1, 0x0

    goto :goto_1

    .line 1308
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 1311
    :cond_5
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error onPanDeviceConnectionResult. State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1314
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private onPanDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 664
    aget-object v3, p2, v8

    .line 665
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 667
    const-string v4, "BluetoothEventLoop"

    const-string/jumbo v5, "onPanDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pan Device property changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 674
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 675
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "Connected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 676
    aget-object v4, p2, v6

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 677
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v1, v8, v7}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 681
    :cond_2
    const-string v4, "Interface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    aget-object v2, p2, v6

    .line 683
    .local v2, iface:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 684
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v1, v2, v7, v7}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private onRequestOobData(Ljava/lang/String;I)V
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 1045
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1048
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1050
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPairingConsent(Ljava/lang/String;I)V
    .locals 6
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 741
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 751
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 752
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 753
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 757
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 758
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 760
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 764
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onRequestPasskey(Ljava/lang/String;I)V
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 800
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 804
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 805
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 806
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 808
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 810
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onRequestPasskeyConfirmation(Ljava/lang/String;II)V
    .locals 4
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 777
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 781
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 783
    const-string v2, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 784
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 788
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onRequestPinCode(Ljava/lang/String;IZ)V
    .locals 11
    .parameter "objectPath"
    .parameter "nativeData"
    .parameter "secure"

    .prologue
    const/4 v10, 0x3

    .line 931
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Secure pairing is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v5

    .line 936
    .local v5, pendingOutgoingAddress:Ljava/lang/String;
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v0}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v1, v7}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 937
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 939
    .local v2, btDeviceClass:I
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 943
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 944
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->getDockPin()Ljava/lang/String;

    move-result-object v6

    .line 945
    .local v6, pin:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v6}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 950
    .end local v6           #pin:Ljava/lang/String;
    :cond_2
    sparse-switch v2, :sswitch_data_0

    .line 960
    :cond_3
    const/16 v7, 0x540

    if-eq v2, v7, :cond_4

    const/16 v7, 0x5c0

    if-ne v2, v7, :cond_6

    .line 966
    :cond_4
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v0}, Landroid/server/BluetoothService;->isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 967
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v8, "0000"

    invoke-static {v8}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 956
    :sswitch_0
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v0}, Landroid/server/BluetoothService;->attemptAutoPair(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 972
    :cond_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x40c3880000000000L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v6, v7

    .line 973
    .local v6, pin:I
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v8, 0xb

    invoke-virtual {v7, v0, v8}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 974
    invoke-direct {p0, v0, v6}, Landroid/server/BluetoothEventLoop;->sendDisplayPinIntent(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 978
    .end local v6           #pin:I
    :cond_6
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 979
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 981
    const-string v7, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    const-string v7, "android.bluetooth.device.extra.SECURE"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 983
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 985
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 986
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 987
    const-string v7, "BluetoothEventLoop"

    const-string v8, "Ther is EVENT_PAIRING_TIMEOUT message"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 990
    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 991
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 992
    .local v4, msg:Landroid/os/Message;
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 993
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x6590

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 994
    const-string v7, "BluetoothEventLoop"

    const-string v8, "Queuing INCOMING_PAIRING_TIMEOUT msg"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 950
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x418 -> :sswitch_0
        0x41c -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch
.end method

.method private onSapAuthorize(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "objectPath"
    .parameter "uuid"
    .parameter "nativeData"

    .prologue
    .line 815
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSapAuthorize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkAuthorizationRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 818
    const-string v4, "BluetoothEventLoop"

    const-string v5, "address is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    .line 845
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->getTrustState(Ljava/lang/String;)Z

    move-result v3

    .line 824
    .local v3, trusted:Z
    if-eqz v3, :cond_1

    .line 827
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 829
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 830
    .local v2, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 836
    const-string/jumbo v4, "uuid"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const-string/jumbo v4, "name"

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v4, "address"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 840
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onSapStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "objectPath"
    .parameter "state"
    .parameter "nativeData"

    .prologue
    .line 882
    const-string v3, "BluetoothEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSapStateChanged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 886
    const-string v3, "BluetoothEventLoop"

    const-string v4, "Unable to get device address , returning null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 893
    const-string v3, "Connected"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 895
    const/4 v2, 0x2

    .line 899
    .local v2, sapState:I
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.bluetooth.sap.statechanged"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 900
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 901
    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 897
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #sapState:I
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #sapState:I
    goto :goto_1
.end method

.method private onSetCharacteristicPropertyResult(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "path"
    .parameter "property"
    .parameter "result"

    .prologue
    .line 1402
    const-string v0, "BluetoothEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetCharPropResult path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " property = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v0, "BluetoothEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothService;->makeSetCharacteristicPropertyCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1405
    return-void
.end method

.method private onUpdateCharacteristicValueResult(Ljava/lang/String;Z)V
    .locals 1
    .parameter "charObjectPath"
    .parameter "result"

    .prologue
    .line 1422
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->makeUpdateCharacteristicValueCallback(Ljava/lang/String;Z)V

    .line 1423
    return-void
.end method

.method private onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "characteristicPath"
    .parameter "value"

    .prologue
    .line 1416
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->makeWatcherValueChangedCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    return-void
.end method

.method private sendDisplayPinIntent(Ljava/lang/String;I)V
    .locals 3
    .parameter "address"
    .parameter "pin"

    .prologue
    .line 1026
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1027
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1029
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1032
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1034
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1035
    return-void
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method

.method private updateBTState(Ljava/lang/String;)V
    .locals 3
    .parameter "uuids"

    .prologue
    .line 472
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 473
    .local v0, adapterUuids:[Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v1, v1, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v1, v1, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 478
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAuthorizationAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getAuthorizationRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getGattRequestData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mGattRequestData:Ljava/util/List;

    return-object v0
.end method

.method getPasskeyAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getProfileProxy()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 170
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 171
    return-void
.end method

.method public isEventLoopRunning()Z
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    return v0
.end method

.method onPropertyChanged([Ljava/lang/String;)V
    .locals 16
    .parameter "propValues"

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v12}, Landroid/server/BluetoothService;->getAdapterProperties()Landroid/server/BluetoothAdapterProperties;

    move-result-object v2

    .line 387
    .local v2, adapterProperties:Landroid/server/BluetoothAdapterProperties;
    invoke-virtual {v2}, Landroid/server/BluetoothAdapterProperties;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 390
    invoke-virtual {v2}, Landroid/server/BluetoothAdapterProperties;->getAllProperties()V

    .line 392
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Property Changed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 393
    const/4 v12, 0x0

    aget-object v8, p1, v12

    .line 395
    .local v8, name:Ljava/lang/String;
    const-string v12, "Name"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 396
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v2, v8, v12}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v5, intent:Landroid/content/Intent;
    const-string v12, "android.bluetooth.adapter.extra.LOCAL_NAME"

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const/high16 v12, 0x800

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.BLUETOOTH"

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 464
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    const-string v12, "Pairable"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "Discoverable"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 402
    :cond_3
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v2, v8, v12}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v12, "Discoverable"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v13, 0x35

    invoke-virtual {v12, v13}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 408
    :cond_4
    const-string v12, "Pairable"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    aget-object v9, p1, v12

    .line 410
    .local v9, pairable:Ljava/lang/String;
    :goto_1
    const-string v12, "Discoverable"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    aget-object v3, p1, v12

    .line 414
    .local v3, discoverable:Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_1

    if-eqz v3, :cond_1

    .line 417
    const-string/jumbo v12, "true"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v13, "true"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v12, v13}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v7

    .line 420
    .local v7, mode:I
    if-ltz v7, :cond_1

    .line 421
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v12, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v5, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    const/high16 v12, 0x800

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.BLUETOOTH"

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    .end local v3           #discoverable:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #mode:I
    .end local v9           #pairable:Ljava/lang/String;
    :cond_5
    const-string v12, "Pairable"

    invoke-virtual {v2, v12}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 410
    .restart local v9       #pairable:Ljava/lang/String;
    :cond_6
    const-string v12, "Discoverable"

    invoke-virtual {v2, v12}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 426
    .end local v9           #pairable:Ljava/lang/String;
    :cond_7
    const-string v12, "Discovering"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 428
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v2, v8, v12}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v12, 0x1

    aget-object v12, p1, v12

    const-string/jumbo v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 430
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .restart local v5       #intent:Landroid/content/Intent;
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.BLUETOOTH"

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    .end local v5           #intent:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v12}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    .line 434
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 437
    .end local v5           #intent:Landroid/content/Intent;
    :cond_9
    const-string v12, "Devices"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "UUIDs"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 438
    :cond_a
    const/4 v11, 0x0

    .line 439
    .local v11, value:Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 440
    .local v6, len:I
    if-lez v6, :cond_c

    .line 441
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v10, str:Ljava/lang/StringBuilder;
    const/4 v4, 0x2

    .local v4, i:I
    :goto_4
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v4, v12, :cond_b

    .line 443
    aget-object v12, p1, v4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 446
    :cond_b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 448
    .end local v4           #i:I
    .end local v10           #str:Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {v2}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, adapterObjectPath:Ljava/lang/String;
    if-eqz v11, :cond_d

    const-string v12, "UUIDs"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 450
    invoke-virtual {v2, v8, v11}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/server/BluetoothEventLoop;->updateBTState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :cond_d
    if-eqz v11, :cond_1

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 454
    invoke-virtual {v2, v8, v11}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    .end local v1           #adapterObjectPath:Ljava/lang/String;
    .end local v6           #len:I
    .end local v11           #value:Ljava/lang/String;
    :cond_e
    const-string v12, "Powered"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v14, 0x36

    const/4 v12, 0x1

    aget-object v12, p1, v12

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    new-instance v12, Ljava/lang/Boolean;

    const/4 v15, 0x1

    invoke-direct {v12, v15}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_5
    invoke-virtual {v13, v14, v12}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    new-instance v12, Ljava/lang/Boolean;

    const/4 v15, 0x0

    invoke-direct {v12, v15}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_5

    .line 459
    :cond_10
    const-string v12, "DiscoverableTimeout"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 460
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v2, v8, v12}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :cond_11
    const-string v12, "Class"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 462
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v2, v8, v12}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method start()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const-string v0, "Starting Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->startEventLoopNative()V

    .line 218
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "Stopping Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->stopEventLoopNative()V

    .line 225
    :cond_0
    return-void
.end method
