.class public Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
.super Landroid/os/Handler;
.source "UsimDataDownloadHandler.java"


# static fields
.field private static final BER_SMS_PP_DOWNLOAD_TAG:I = 0xd1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_UICC:I = 0x81

.field private static final EVENT_SEND_ENVELOPE_RESPONSE:I = 0x2

.field private static final EVENT_START_DATA_DOWNLOAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsimDataDownloadHandler"


# instance fields
.field private final mCI:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "commandsInterface"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    .line 57
    return-void
.end method

.method private acknowledgeSmsWithError(I)V
    .locals 3
    .parameter "cause"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 217
    return-void
.end method

.method private static getEnvelopeBodyLength(II)I
    .locals 2
    .parameter "scAddressLength"
    .parameter "tpduLength"

    .prologue
    .line 142
    add-int/lit8 v0, p1, 0x5

    .line 144
    .local v0, length:I
    const/16 v1, 0x7f

    if-le p1, v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    .line 146
    if-eqz p0, :cond_0

    .line 147
    add-int/lit8 v1, v0, 0x2

    add-int v0, v1, p0

    .line 149
    :cond_0
    return v0

    .line 144
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V
    .locals 13
    .parameter "smsMessage"

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v1

    .line 77
    .local v1, dcs:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v6

    .line 78
    .local v6, pid:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v5

    .line 80
    .local v5, pdu:[B
    const/4 v11, 0x0

    aget-byte v11, v5, v11

    and-int/lit16 v7, v11, 0xff

    .line 81
    .local v7, scAddressLength:I
    add-int/lit8 v9, v7, 0x1

    .line 82
    .local v9, tpduIndex:I
    array-length v11, v5

    sub-int v10, v11, v9

    .line 84
    .local v10, tpduLength:I
    invoke-static {v7, v10}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getEnvelopeBodyLength(II)I

    move-result v0

    .line 88
    .local v0, bodyLength:I
    add-int/lit8 v12, v0, 0x1

    const/16 v11, 0x7f

    if-le v0, v11, :cond_1

    const/4 v11, 0x2

    :goto_0
    add-int v8, v12, v11

    .line 90
    .local v8, totalLength:I
    new-array v2, v8, [B

    .line 91
    .local v2, envelope:[B
    const/4 v3, 0x0

    .line 94
    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    const/16 v11, -0x2f

    aput-byte v11, v2, v3

    .line 95
    const/16 v11, 0x7f

    if-le v0, v11, :cond_4

    .line 96
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v11, -0x7f

    aput-byte v11, v2, v4

    .line 98
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    int-to-byte v11, v0

    aput-byte v11, v2, v3

    .line 101
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v11

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v4

    .line 102
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/4 v11, 0x2

    aput-byte v11, v2, v3

    .line 103
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v11, -0x7d

    aput-byte v11, v2, v4

    .line 104
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v11, -0x7f

    aput-byte v11, v2, v3

    .line 107
    if-eqz v7, :cond_3

    .line 108
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v2, v4

    .line 109
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    int-to-byte v11, v7

    aput-byte v11, v2, v3

    .line 110
    const/4 v11, 0x1

    invoke-static {v5, v11, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    add-int v3, v4, v7

    .line 115
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v11

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    .line 116
    const/16 v11, 0x7f

    if-le v10, v11, :cond_2

    .line 117
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v11, -0x7f

    aput-byte v11, v2, v4

    .line 119
    :goto_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    int-to-byte v11, v10

    aput-byte v11, v2, v3

    .line 120
    invoke-static {v5, v9, v2, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int v3, v4, v10

    .line 124
    .end local v4           #index:I
    .restart local v3       #index:I
    array-length v11, v2

    if-eq v3, v11, :cond_0

    .line 125
    const-string v11, "UsimDataDownloadHandler"

    const-string/jumbo v12, "startDataDownload() calculated incorrect envelope length, aborting."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v11, 0xff

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    .line 129
    :cond_0
    return-void

    .line 88
    .end local v2           #envelope:[B
    .end local v3           #index:I
    .end local v8           #totalLength:I
    :cond_1
    const/4 v11, 0x1

    goto/16 :goto_0

    .restart local v2       #envelope:[B
    .restart local v4       #index:I
    .restart local v8       #totalLength:I
    :cond_2
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_3

    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_3
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_4
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_1
.end method

.method private static is7bitDcs(I)Z
    .locals 2
    .parameter "dcs"

    .prologue
    .line 227
    and-int/lit16 v0, p0, 0x8c

    if-eqz v0, :cond_0

    and-int/lit16 v0, p0, 0xf4

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/IccIoResult;II)V
    .locals 12
    .parameter "response"
    .parameter "dcs"
    .parameter "pid"

    .prologue
    .line 158
    iget v6, p1, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    .line 159
    .local v6, sw1:I
    iget v7, p1, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    .line 162
    .local v7, sw2:I
    const/16 v8, 0x90

    if-ne v6, v8, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    const/16 v8, 0x91

    if-ne v6, v8, :cond_3

    .line 163
    :cond_1
    const-string v8, "UsimDataDownloadHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USIM data download succeeded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v5, 0x1

    .line 177
    .local v5, success:Z
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    .line 178
    .local v2, responseBytes:[B
    if-eqz v2, :cond_2

    array-length v8, v2

    if-nez v8, :cond_8

    .line 179
    :cond_2
    if-eqz v5, :cond_7

    .line 180
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 213
    .end local v2           #responseBytes:[B
    .end local v5           #success:Z
    :goto_1
    return-void

    .line 165
    :cond_3
    const/16 v8, 0x93

    if-ne v6, v8, :cond_4

    if-nez v7, :cond_4

    .line 166
    const-string v8, "UsimDataDownloadHandler"

    const-string v9, "USIM data download failed: Toolkit busy"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v8, 0xd4

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    goto :goto_1

    .line 169
    :cond_4
    const/16 v8, 0x62

    if-eq v6, v8, :cond_5

    const/16 v8, 0x63

    if-ne v6, v8, :cond_6

    .line 170
    :cond_5
    const-string v8, "UsimDataDownloadHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USIM data download failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v5, 0x0

    .restart local v5       #success:Z
    goto :goto_0

    .line 173
    .end local v5           #success:Z
    :cond_6
    const-string v8, "UsimDataDownloadHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected SW1/SW2 response from UICC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v5, 0x0

    .restart local v5       #success:Z
    goto :goto_0

    .line 182
    .restart local v2       #responseBytes:[B
    :cond_7
    const/16 v8, 0xd5

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    goto :goto_1

    .line 189
    :cond_8
    const/4 v0, 0x0

    .line 190
    .local v0, index:I
    if-eqz v5, :cond_9

    .line 191
    array-length v8, v2

    add-int/lit8 v8, v8, 0x5

    new-array v4, v8, [B

    .line 192
    .local v4, smsAckPdu:[B
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    const/4 v8, 0x0

    aput-byte v8, v4, v0

    .line 193
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    const/4 v8, 0x7

    aput-byte v8, v4, v1

    .line 202
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    int-to-byte v8, p3

    aput-byte v8, v4, v0

    .line 203
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    int-to-byte v8, p2

    aput-byte v8, v4, v1

    .line 205
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->is7bitDcs(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 206
    array-length v8, v2

    mul-int/lit8 v8, v8, 0x8

    div-int/lit8 v3, v8, 0x7

    .line 207
    .local v3, septetCount:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    int-to-byte v8, v3

    aput-byte v8, v4, v0

    move v0, v1

    .line 212
    .end local v1           #index:I
    .end local v3           #septetCount:I
    .restart local v0       #index:I
    :goto_3
    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v8, v4, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 195
    .end local v4           #smsAckPdu:[B
    :cond_9
    array-length v8, v2

    add-int/lit8 v8, v8, 0x6

    new-array v4, v8, [B

    .line 196
    .restart local v4       #smsAckPdu:[B
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const/4 v8, 0x0

    aput-byte v8, v4, v0

    .line 197
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    const/16 v8, -0x2b

    aput-byte v8, v4, v1

    .line 199
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const/4 v8, 0x7

    aput-byte v8, v4, v0

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_2

    .line 209
    :cond_a
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    array-length v8, v2

    int-to-byte v8, v8

    aput-byte v8, v4, v0

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 237
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 257
    const-string v2, "UsimDataDownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unexpected message, what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 245
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 246
    const-string v2, "UsimDataDownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UICC Send Envelope failure, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v2, 0xd5

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 253
    .local v1, dcsPid:[I
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccIoResult;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/IccIoResult;II)V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, -0x1

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string v0, "UsimDataDownloadHandler"

    const-string/jumbo v1, "startDataDownload failed to send message to start data download."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x2

    goto :goto_0
.end method
