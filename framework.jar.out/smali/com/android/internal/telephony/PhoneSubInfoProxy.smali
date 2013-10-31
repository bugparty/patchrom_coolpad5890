.class public Lcom/android/internal/telephony/PhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoProxy.java"


# static fields
.field private static mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

.field private static mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 2
    .parameter "phoneSubInfo"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 33
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 34
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 39
    :goto_0
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 42
    :cond_0
    return-void

    .line 36
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 1
    .parameter "phoneSubInfo"
    .parameter "mPhoneId"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 179
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 180
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 186
    :cond_0
    :goto_0
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    if-eqz v0, :cond_1

    .line 188
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 191
    :cond_1
    return-void

    .line 182
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 183
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method private getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 172
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 146
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "address"
    .parameter "phoneId"

    .prologue
    .line 398
    move-object v0, p1

    .line 399
    .local v0, retAddress:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 400
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 404
    :cond_0
    :goto_0
    return-object v0

    .line 401
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 402
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "address"
    .parameter "phoneId"

    .prologue
    .line 383
    move-object v0, p1

    .line 384
    .local v0, retAddress:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 385
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 387
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAudioRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualAudioRevision(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 319
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 320
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 321
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 322
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 448
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getBackCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 295
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 296
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 297
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 298
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 214
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 215
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 216
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 217
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualDeviceSvn(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 230
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 232
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 233
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualEriVersion(I)I
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 430
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 431
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaEriVersion()I

    move-result v0

    .line 435
    :goto_0
    return v0

    .line 432
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 433
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaEriVersion()I

    move-result v0

    goto :goto_0

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualEsn(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 369
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 370
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    .line 371
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 372
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualIccSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 248
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 249
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 250
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 251
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 278
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 279
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 280
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 281
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 257
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 258
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 259
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 260
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualMin(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 439
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 440
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    .line 441
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 442
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualPrlVersion(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 345
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 346
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 348
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualRFCalibration(I)[I
    .locals 2
    .parameter "mPhoneId"

    .prologue
    .line 332
    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 333
    .local v0, defaultDualRFCalibration:[I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 334
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    .line 338
    .end local v0           #defaultDualRFCalibration:[I
    :cond_0
    :goto_0
    return-object v0

    .line 335
    .restart local v0       #defaultDualRFCalibration:[I
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 336
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    goto :goto_0

    .line 332
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDualSnId(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 222
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 223
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 224
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 225
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 239
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 240
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 241
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 242
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualUimId(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 357
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 358
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    .line 359
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 360
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 305
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 306
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 308
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 287
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 288
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 289
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 290
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFCalibration()[I
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    return-object v0
.end method

.method public getRegIdd(I)Ljava/lang/String;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 413
    const-string v0, ""

    .line 414
    .local v0, retIddStr:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 415
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRegIdd(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_0
    :goto_0
    return-object v0

    .line 416
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 417
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRegIdd(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 452
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "phoneId"

    .prologue
    .line 270
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 271
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 273
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 2
    .parameter "phoneSubInfo"

    .prologue
    .line 194
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 195
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 201
    :goto_0
    return-void

    .line 197
    :cond_0
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public setPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 1
    .parameter "phoneSubInfo"
    .parameter "mPhoneId"

    .prologue
    .line 206
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 207
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 209
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .parameter "phoneSubInfo"

    .prologue
    .line 46
    return-void
.end method
