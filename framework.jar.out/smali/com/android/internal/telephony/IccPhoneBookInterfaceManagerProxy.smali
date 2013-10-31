.class public Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManagerProxy.java"


# static fields
.field private static mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private static mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 2
    .parameter "iccPhoneBookInterfaceManager"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 39
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 40
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 45
    :goto_0
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    :cond_0
    return-void

    .line 42
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V
    .locals 1
    .parameter "iccPhoneBookInterfaceManager"
    .parameter "mPhoneId"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 99
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 100
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 106
    :cond_0
    :goto_0
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v0, :cond_1

    .line 108
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 111
    :cond_1
    return-void

    .line 102
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 103
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method

.method private getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 91
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method


# virtual methods
.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDualAdditionalNumbersSize(I)I
    .locals 1
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 291
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdditionalNumbersSize()I

    move-result v0

    .line 295
    :goto_0
    return v0

    .line 292
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 293
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdditionalNumbersSize()I

    move-result v0

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAdnGrpName(II)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 280
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpName(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 281
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 282
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAdnGrpNames(I)Ljava/util/List;
    .locals 1
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 269
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpNames()Ljava/util/List;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 270
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 271
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpNames()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAdnRecordsInEf(II)Ljava/util/List;
    .locals 1
    .parameter "efid"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 186
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    .line 187
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 188
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAdnRecordsSize(II)[I
    .locals 1
    .parameter "efid"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 173
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 175
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualGroupIndexSize(II)I
    .locals 1
    .parameter "index"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 302
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupIndexSize(I)I

    move-result v0

    .line 306
    :goto_0
    return v0

    .line 303
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 304
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupIndexSize(I)I

    move-result v0

    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualGroupTagLength(I)I
    .locals 1
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 313
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupTagLength()I

    move-result v0

    .line 317
    :goto_0
    return v0

    .line 314
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 315
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupTagLength()I

    move-result v0

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 2
    .parameter "iccPhoneBookInterfaceManager"

    .prologue
    .line 126
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method

.method public setIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V
    .locals 1
    .parameter "iccPhoneBookInterfaceManager"
    .parameter "mPhoneId"

    .prologue
    .line 116
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 117
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 120
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateDualAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .parameter "newAdditionalNumbers"
    .parameter "indexInAdn"
    .parameter "pin2"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 235
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 241
    :goto_0
    return v0

    .line 237
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 238
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdditionalNumbersName(ILjava/lang/String;I)Z
    .locals 1
    .parameter "index"
    .parameter "newName"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 248
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersName(ILjava/lang/String;)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    .line 249
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 250
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersName(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdditionalNumbersNameIndex(IIII)Z
    .locals 1
    .parameter "indexInAdn"
    .parameter "indexInAddNum"
    .parameter "indexInAddNumName"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 211
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersNameIndex(III)Z

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 213
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 214
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersNameIndex(III)Z

    move-result v0

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdnGrpName(ILjava/lang/String;I)Z
    .locals 1
    .parameter "index"
    .parameter "newName"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 259
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnGrpName(ILjava/lang/String;)Z

    move-result v0

    .line 263
    :goto_0
    return v0

    .line 260
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 261
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnGrpName(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 263
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 6
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    .line 159
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 161
    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    .line 162
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x2

    if-ne p7, v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 145
    :cond_0
    const/4 v0, 0x1

    if-ne p7, v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualEmail([Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .parameter "email"
    .parameter "indexInAdn"
    .parameter "pin2"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 224
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmail([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 226
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmail([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualGroupIndex(I[II)Z
    .locals 1
    .parameter "indexInAdn"
    .parameter "newGroupIndex"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 199
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateGroupIndex(I[I)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 200
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 201
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateGroupIndex(I[I)Z

    move-result v0

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
