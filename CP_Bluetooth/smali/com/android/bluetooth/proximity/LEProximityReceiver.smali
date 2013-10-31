.class public Lcom/android/bluetooth/proximity/LEProximityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LEProximityReceiver.java"


# static fields
.field private static final ACTION_GATT_PARAMS_NO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LEProximityReceiver"

.field private static handler:Landroid/os/Handler;

.field private static sendDisconnectMsg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityReceiver;->handler:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/proximity/LEProximityReceiver;->sendDisconnectMsg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static registerHandler(Landroid/os/Handler;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 167
    const-string v0, "LEProximityReceiver"

    const-string v1, " Registered Proximity Service Handler ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sput-object p0, Lcom/android/bluetooth/proximity/LEProximityReceiver;->handler:Landroid/os/Handler;

    .line 169
    return-void
.end method

.method private sendConnectionStatusMsg(Ljava/lang/String;I)V
    .locals 3
    .parameter "devAddr"
    .parameter "msg"

    .prologue
    .line 144
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 145
    .local v1, objMsg:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, objBundle:Landroid/os/Bundle;
    const-string v2, "ACTION_GATT_SERVICE_EXTRA_DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 150
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityReceiver;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method private sendRssiUpdateMsg(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "devAddr"
    .parameter "msg"
    .parameter "rssi"

    .prologue
    .line 154
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 155
    .local v1, objMsg:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, objBundle:Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v2, rssiDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v3, "ACTION_RSSI_UPDATE_EXTRA_OBJ"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 162
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 163
    sget-object v3, Lcom/android/bluetooth/proximity/LEProximityReceiver;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method

.method public static setSendDisconnect(Z)V
    .locals 2
    .parameter "sendDisconnect"

    .prologue
    .line 172
    const-string v0, "LEProximityReceiver"

    const-string v1, " setting sendDisconnect ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sput-boolean p0, Lcom/android/bluetooth/proximity/LEProximityReceiver;->sendDisconnectMsg:Z

    .line 174
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    if-nez p2, :cond_1

    const/4 v2, 0x0

    .line 57
    .local v2, action:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    .line 58
    const-string v13, "LEProximityReceiver"

    const-string v14, "action is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    :goto_1
    return-void

    .line 56
    .end local v2           #action:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 61
    .restart local v2       #action:Ljava/lang/String;
    :cond_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v7, in:Landroid/content/Intent;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 63
    const-class v13, Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    const-string v13, "action"

    invoke-virtual {v7, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v13, "android.bluetooth.device.action.GATT"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 68
    :try_start_0
    const-string v13, "LEProximityReceiver"

    const-string v14, " ACTION GATT INTENT RECEIVED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 71
    .local v10, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v13, "LEProximityReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Remote Device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v13, "android.bluetooth.device.extra.UUID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 75
    .local v12, uuid:Landroid/os/ParcelUuid;
    const-string v13, "LEProximityReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " UUID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v13, "android.bluetooth.device.extra.GATT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object v0, v13

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 79
    .local v1, ObjectPathArray:[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 80
    const-string v13, "LEProximityReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " objPathList length : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 83
    .local v9, objMsg:Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v9, Landroid/os/Message;->what:I

    .line 84
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v8, objBundle:Landroid/os/Bundle;
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    .local v6, gattDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v13, "ACTION_GATT_SERVICE_EXTRA_OBJ"

    invoke-virtual {v8, v13, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    const-string v14, "LEProximityReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " gattDataList  : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v9, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 93
    sget-object v13, Lcom/android/bluetooth/proximity/LEProximityReceiver;->handler:Landroid/os/Handler;

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 97
    .end local v1           #ObjectPathArray:[Ljava/lang/String;
    .end local v6           #gattDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #objBundle:Landroid/os/Bundle;
    .end local v9           #objMsg:Landroid/os/Message;
    .end local v10           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v12           #uuid:Landroid/os/ParcelUuid;
    :catch_0
    move-exception v5

    .line 98
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 95
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #ObjectPathArray:[Ljava/lang/String;
    .restart local v10       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v12       #uuid:Landroid/os/ParcelUuid;
    :cond_3
    :try_start_1
    const-string v13, "LEProximityReceiver"

    const-string v14, "No object paths in the ACTION GATT intent"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 100
    .end local v1           #ObjectPathArray:[Ljava/lang/String;
    .end local v10           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v12           #uuid:Landroid/os/ParcelUuid;
    :cond_4
    const-string v13, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 101
    const-string v13, "LEProximityReceiver"

    const-string v14, "Received ACTION_ACL_DISCONNECTED intent"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-boolean v13, Lcom/android/bluetooth/proximity/LEProximityReceiver;->sendDisconnectMsg:Z

    if-eqz v13, :cond_0

    .line 103
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 106
    .restart local v10       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, disconnDevAddr:Ljava/lang/String;
    const-string v13, "LEProximityReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received ACTION_ACL_DISCONNECTED, bt device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/bluetooth/proximity/LEProximityReceiver;->sendConnectionStatusMsg(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 114
    .end local v4           #disconnDevAddr:Ljava/lang/String;
    .end local v10           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_5
    const-string v13, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 115
    const-string v13, "LEProximityReceiver"

    const-string v14, "Received ACTION_ACL_CONNECTED intent"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/bluetooth/proximity/LEProximityReceiver;->sendDisconnectMsg:Z

    .line 117
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 120
    .restart local v10       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, connDevAddr:Ljava/lang/String;
    const-string v13, "LEProximityReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received ACTION_ACL_CONNECTED, bt device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/bluetooth/proximity/LEProximityReceiver;->sendConnectionStatusMsg(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 126
    .end local v3           #connDevAddr:Ljava/lang/String;
    .end local v10           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_6
    const-string v13, "android.bluetooth.device.action.RSSI_UPDATE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 128
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 131
    .restart local v10       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v13, "LEProximityReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "!!!! Received ACTION_RSSI_UPDATE, bt device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v13, "android.bluetooth.device.extra.RSSI"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, rssiValue:Ljava/lang/String;
    const-string v13, "LEProximityReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received BT device rssi value: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v11}, Lcom/android/bluetooth/proximity/LEProximityReceiver;->sendRssiUpdateMsg(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1
.end method
