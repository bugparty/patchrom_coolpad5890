.class public Lcom/yulong/android/internal/telephony/SlotCardInfo;
.super Ljava/lang/Object;
.source "SlotCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/internal/telephony/SlotCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR_MGR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/internal/telephony/SlotCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActive:I

.field public mCardCarrierName:Ljava/lang/String;

.field public mCardType:I

.field public mCdmaApplicationState:I

.field public mCdmaImsi:Ljava/lang/String;

.field public mDualGAppState:I

.field public mGsmApplicationState:I

.field public mGsmImsi:Ljava/lang/String;

.field public mGsmOperId:Ljava/lang/String;

.field public mIccId:Ljava/lang/String;

.field public mIs3GUimCard:I

.field public mMCCMNC:Ljava/lang/String;

.field public mModemId:I

.field public mPin1:Ljava/lang/String;

.field public mPinNumLeft:B

.field public mPukNumLeft:B

.field public mScanned:I

.field public mUniversalPinState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yulong/android/internal/telephony/SlotCardInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SlotCardInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    new-instance v0, Lcom/yulong/android/internal/telephony/SlotCardInfo$2;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SlotCardInfo$2;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR_MGR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public constructor <init>(IIIIBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "mActive"
    .parameter "mModemId"
    .parameter "mCardType"
    .parameter "mUniversalPinState"
    .parameter "mPinNumLeft"
    .parameter "mPukNumLeft"
    .parameter "mIccId"
    .parameter "mCardCarrierName"
    .parameter "mMCCMNC"
    .parameter "mGsmOperId"
    .parameter "mPin1"
    .parameter "flag"

    .prologue
    .line 272
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 274
    iput p2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    .line 275
    iput p3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 276
    iput p4, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 277
    iput-byte p5, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 278
    iput-byte p6, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 279
    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 280
    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    .line 281
    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 282
    iput-object p10, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 283
    iput-object p11, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public constructor <init>(IIIIBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "mActive"
    .parameter "mModemId"
    .parameter "mCardType"
    .parameter "mUniversalPinState"
    .parameter "mPinNumLeft"
    .parameter "mPukNumLeft"
    .parameter "mIccId"
    .parameter "mCardCarrierName"
    .parameter "mMCCMNC"
    .parameter "mGsmOperId"
    .parameter "mPin1"
    .parameter "mCdmaApplicationState"
    .parameter "mGsmApplicationState"
    .parameter "mDualGAppState"
    .parameter "mGsmImsi"
    .parameter "mCdmaImsi"
    .parameter "mIs3GUimCard"

    .prologue
    .line 247
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 249
    iput p2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    .line 250
    iput p3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 251
    iput p4, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 252
    iput-byte p5, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 253
    iput-byte p6, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 254
    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 255
    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    .line 256
    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 257
    iput-object p10, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 258
    iput-object p11, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 259
    iput p12, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    .line 260
    iput p13, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    .line 261
    iput p14, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    .line 262
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 263
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 264
    move/from16 v0, p17

    iput v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    .line 267
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mActive"
    .parameter "mScanned"
    .parameter "mModemId"
    .parameter "mCardType"
    .parameter "mUniversalPinState"
    .parameter "mIccId"
    .parameter "mCdmaImsi"
    .parameter "mGsmImsi"
    .parameter "mMCCMNC"
    .parameter "mGsmOperId"
    .parameter "mPin1"

    .prologue
    .line 229
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 231
    iput p2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    .line 232
    iput p3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    .line 233
    iput p4, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 234
    iput p5, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 235
    iput-object p6, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 236
    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 237
    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 238
    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 239
    iput-object p10, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 240
    iput-object p11, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public static createFromParcelForFwkCheckCard(Landroid/os/Parcel;)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 18
    .parameter "source"

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, mActive:I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, mModemId:I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, mCardType:I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 77
    .local v4, mUniversalPinState:I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 78
    .local v5, mPinNumLeft:B
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 80
    .local v6, mPukNumLeft:B
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, mIccId:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, mCardCarrierName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, mMCCMNC:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, mGsmOperId:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, mPin1:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 86
    .local v12, mCdmaApplicationState:I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 87
    .local v13, mGsmApplicationState:I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 88
    .local v14, mDualGAppState:I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 89
    .local v15, mGsmImsi:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, mCdmaImsi:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 93
    .local v17, mIs3GUimCard:I
    new-instance v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct/range {v0 .. v17}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>(IIIIBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createFromParcelForSerivceCheckCard(Landroid/os/Parcel;)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 13
    .parameter "source"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, mActive:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .local v2, mModemId:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .local v3, mCardType:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .local v4, mUniversalPinState:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 107
    .local v5, mPinNumLeft:B
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 109
    .local v6, mPukNumLeft:B
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, mIccId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, mCardCarrierName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, mMCCMNC:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, mGsmOperId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, mPin1:Ljava/lang/String;
    new-instance v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>(IIIIBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public MemSetSlotCardInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 181
    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 182
    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    .line 183
    iput v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 184
    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 185
    iput-byte v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 186
    iput-byte v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 192
    iput v3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    .line 193
    iput v3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    .line 194
    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 197
    iput v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    .line 198
    return-void
.end method

.method public SlotCardInfoCdmaImsi(Ljava/lang/String;)V
    .locals 0
    .parameter "CdmaImsi"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public SlotCardInfoGsmImsi(Ljava/lang/String;)V
    .locals 0
    .parameter "GsmImsi"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCardType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mUniversalPinState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mIccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mMCCMNC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mGsmOperId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mCardCarrierName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mCdmaImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mGsmImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, cardInfo:Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 324
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget-byte v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 329
    iget-byte v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 331
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    :cond_0
    return-void
.end method
