.class public Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppIncomingFileConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final D:Z = true

.field private static final DISMISS_TIMEOUT_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x7d0

.field private static final PREFERENCE_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field private static final TAG:Ljava/lang/String; = "BluetoothIncomingFileConfirmActivity"

.field private static final V:Z = true


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlwaysAllowed:Landroid/widget/CheckBox;

.field private mAlwaysAllowedValue:Z

.field private mContentView:Landroid/widget/TextView;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

.field private mUpdateValues:Landroid/content/ContentValues;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlwaysAllowedValue:Z

    .line 94
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$6;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$6;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlwaysAllowedValue:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 142
    .local v3, view:Landroid/view/View;
    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    .line 145
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 146
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 149
    .local v1, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_0

    .line 150
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v0, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    .line 151
    .local v0, deviceName:Ljava/lang/String;
    const-string v4, "BluetoothIncomingFileConfirmActivity"

    const-string v5, "remoteDevice is null."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    const v4, 0x7f060011

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v7, v7, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v7, v7, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v7, v7

    invoke-static {p0, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    .line 163
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;

    invoke-direct {v5, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    return-object v3

    .line 153
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0       #deviceName:Ljava/lang/String;
    const-string v4, "BluetoothIncomingFileConfirmActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onTimeout()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 278
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    const v1, 0x7f060015

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 287
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    .line 179
    packed-switch p2, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-nez v4, :cond_1

    .line 188
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$3;

    const-string v4, "Update database thread"

    invoke-direct {v3, p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Ljava/lang/String;)V

    .line 196
    .local v3, updateThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 198
    const v4, 0x7f06003f

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 200
    .end local v3           #updateThread:Ljava/lang/Thread;
    :cond_1
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlwaysAllowedValue:Z

    if-ne v4, v7, :cond_0

    .line 201
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 202
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 203
    .local v1, mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "SHUZHAO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRemoteDevice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    move-result v2

    .line 205
    .local v2, result:Z
    const-string v4, "SHUZHAO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTrust() result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #result:Z
    :pswitch_1
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$4;

    const-string v4, "Update database thread"

    invoke-direct {v3, p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$4;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Ljava/lang/String;)V

    .line 225
    .restart local v3       #updateThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    .line 110
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 111
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 112
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v2, :cond_0

    .line 113
    const-string v2, "BluetoothIncomingFileConfirmActivity"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 137
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 120
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 121
    const v2, 0x7f060010

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 122
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 123
    const v2, 0x7f060013

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 124
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 125
    const v2, 0x7f060012

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 126
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->setupAlert()V

    .line 128
    const-string v2, "BluetoothIncomingFileConfirmActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v2, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    .line 133
    :cond_1
    const-string v2, "BluetoothIncomingFileConfirmActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothIncomingFileConfirmActivity: Got uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 232
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 233
    const-string v2, "BluetoothIncomingFileConfirmActivity"

    const-string v3, "onKeyDown() called; Key: back key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$5;

    const-string v2, "Update database thread"

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$5;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Ljava/lang/String;)V

    .line 245
    .local v0, updateThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    const v2, 0x7f060040

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 248
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 249
    const/4 v1, 0x1

    .line 251
    .end local v0           #updateThread:Ljava/lang/Thread;
    :cond_0
    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 263
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 264
    const-string v0, "BluetoothIncomingFileConfirmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    .line 268
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 273
    const-string v0, "BluetoothIncomingFileConfirmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    return-void
.end method
