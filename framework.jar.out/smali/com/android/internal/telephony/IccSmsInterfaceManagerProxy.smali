.class public Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "IccSmsInterfaceManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IccSmsInterfaceManagerProxy"

.field private static mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private static mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private static priority:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 2
    .parameter "iccSmsInterfaceManager"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 52
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    .line 53
    .local v0, mPhoneId:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 54
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 59
    :goto_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 60
    const-string/jumbo v1, "isms"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    :cond_0
    return-void

    .line 56
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)V
    .locals 1
    .parameter "iccSmsInterfaceManager"
    .parameter "mPhoneId"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 134
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 135
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 140
    :goto_0
    const-string/jumbo v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "isms"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 147
    :cond_0
    return-void

    .line 137
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public static addIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)V
    .locals 1
    .parameter "iccSmsInterfaceManager"
    .parameter "mPhoneId"

    .prologue
    .line 164
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 165
    sput-object p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    sput-object p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method private getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 124
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public static getpriority()I
    .locals 3

    .prologue
    .line 381
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shixiaogang: priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    return v0
.end method


# virtual methods
.method public changeCardUnreadState(II)V
    .locals 3
    .parameter "index"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 387
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: changeCardUnreadState, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 389
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->changeCardUnreadState(II)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 391
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->changeCardUnreadState(II)V

    goto :goto_0
.end method

.method public copyDualMessageToIccEf(I[B[BI)Z
    .locals 1
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 190
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(I[B[B)Z

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 192
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 193
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(I[B[B)Z

    move-result v0

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyMessageToIccEf(I[B[B)Z
    .locals 1
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(I[B[B)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    const-string v0, "IccSmsInterfaceManagerProxy"

    const-string v1, "CP_COMM: disableCellBroadcastRange, "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public disableDualCellBroadcast(II)V
    .locals 3
    .parameter "messageIdentifier"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter disableDualCellBroadcast, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 282
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcast(I)Z

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 284
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcast(I)Z

    goto :goto_0
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 402
    const-string v0, "IccSmsInterfaceManagerProxy"

    const-string v1, "CP_COMM: enableCellBroadcastRange,  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public enableDualCellBroadcast(II)V
    .locals 3
    .parameter "messageIdentifier"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualCellBroadcast, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 269
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcast(I)Z

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 271
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcast(I)Z

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDualAllMessagesFromIccEf(I)Ljava/util/List;
    .locals 1
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 204
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 205
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 206
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSmsTotalParam(I)I
    .locals 3
    .parameter "mPhoneId"

    .prologue
    .line 306
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: getDualSmsTotalParam, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 309
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getDualSmsTotalParam()I

    move-result v0

    .line 313
    :goto_0
    return v0

    .line 310
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 311
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getDualSmsTotalParam()I

    move-result v0

    goto :goto_0

    .line 313
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSmsTotalParam1(I)I
    .locals 3
    .parameter "mPhoneId"

    .prologue
    .line 293
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: getDualSmsTotalParam, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 296
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsTotalParam()I

    move-result v0

    .line 300
    :goto_0
    return v0

    .line 297
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 298
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsTotalParam()I

    move-result v0

    goto :goto_0

    .line 300
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSMSCAddr(I)Ljava/lang/String;
    .locals 6
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 342
    const-string v2, "IccSmsInterfaceManagerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: getSMSCAddr, mPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeByPhoneId(I)I

    move-result v0

    .line 344
    .local v0, phonetype:I
    if-ne p1, v5, :cond_2

    .line 345
    if-ne v0, v5, :cond_1

    .line 346
    const-string v2, "IccSmsInterfaceManagerProxy"

    const-string v3, "CP_COMM: getSMSCAddr, cdma not support "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    :goto_0
    return-object v1

    .line 349
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSCAddr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 351
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 352
    if-ne v0, v5, :cond_3

    .line 353
    const-string v2, "IccSmsInterfaceManagerProxy"

    const-string v3, "CP_COMM: getSMSCAddr, cdma not support "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSCAddr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSmsTotalParam()I
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsTotalParam()I

    move-result v0

    return v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 85
    return-void
.end method

.method public sendDualData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "mPhoneId"

    .prologue
    .line 216
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualData, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x2

    if-ne p7, v0, :cond_1

    .line 219
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 222
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendDualMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    .local p3, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualMultipartText, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    div-int/lit8 v0, p6, 0xa

    sput v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    .line 251
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shixiaogang: priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    rem-int/lit8 v0, p6, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 254
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    rem-int/lit8 v0, p6, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public sendDualText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "mPhoneId"

    .prologue
    .line 230
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualText, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    div-int/lit8 v0, p6, 0xa

    sput v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    .line 232
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shixiaogang: priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    rem-int/lit8 v0, p6, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 235
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    rem-int/lit8 v0, p6, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    .local p3, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 99
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 91
    return-void
.end method

.method public setCnmiMode(II)I
    .locals 4
    .parameter "mPhoneId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 366
    const-string v1, "IccSmsInterfaceManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: setCnmiMode, mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 370
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCnmiMode(II)I

    .line 376
    :goto_0
    return v0

    .line 372
    :cond_0
    if-ne p1, v0, :cond_1

    .line 373
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCnmiMode(II)I

    move-result v0

    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)V
    .locals 1
    .parameter "iccSmsInterfaceManager"
    .parameter "mPhoneId"

    .prologue
    .line 154
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 155
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public updateDualMessageOnIccEf(II[BI)Z
    .locals 1
    .parameter "index"
    .parameter "status"
    .parameter "pdu"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 175
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(II[B)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 177
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 178
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(II[B)Z

    move-result v0

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 1
    .parameter "index"
    .parameter "status"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(II[B)Z

    move-result v0

    return v0
.end method

.method public writeDualSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter "status"
    .parameter "destAddr"
    .parameter "message"
    .parameter "dateTime"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: writeDualSmsToCard, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 331
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 337
    :goto_0
    return v0

    .line 333
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 334
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "status"
    .parameter "destAddr"
    .parameter "message"
    .parameter "dateTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    const-string v0, "IccSmsInterfaceManagerProxy"

    const-string v1, "CP_COMM: writeDualSmsToCard "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
