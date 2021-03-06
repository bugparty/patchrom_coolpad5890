.class public Lcom/yulong/android/telephony/CouColCalInfo;
.super Ljava/lang/Object;
.source "CouColCalInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# instance fields
.field private CdmaCouColCal:I

.field private EvdoCouColCal:I

.field private GsmCouColCal:I

.field private KEEP_ONE:I

.field private KEEP_THREE:I

.field private KEEP_TWO:I

.field private LTEFDDCouColCal:I

.field private LTETDDCouColCal:I

.field private TDscdmaCouColCal:I

.field private WcdmaCouColCal:I

.field private coucolcal:[I

.field private coucolcalname:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/yulong/android/telephony/CouColCalInfo;->CdmaCouColCal:I

    .line 23
    iput v3, p0, Lcom/yulong/android/telephony/CouColCalInfo;->EvdoCouColCal:I

    .line 24
    iput v4, p0, Lcom/yulong/android/telephony/CouColCalInfo;->GsmCouColCal:I

    .line 25
    iput v5, p0, Lcom/yulong/android/telephony/CouColCalInfo;->WcdmaCouColCal:I

    .line 26
    iput v6, p0, Lcom/yulong/android/telephony/CouColCalInfo;->TDscdmaCouColCal:I

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->LTEFDDCouColCal:I

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->LTETDDCouColCal:I

    .line 29
    const/4 v0, 0x7

    iput v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->KEEP_ONE:I

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->KEEP_TWO:I

    .line 31
    const/16 v0, 0x9

    iput v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->KEEP_THREE:I

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CdmaCouColCal"

    aput-object v1, v0, v2

    const-string v1, "EvdoCouColCal"

    aput-object v1, v0, v3

    const-string v1, "GsmCouColCal"

    aput-object v1, v0, v4

    const-string v1, "WcdmaCouColCal"

    aput-object v1, v0, v5

    const-string v1, "TDscdmaCouColCal"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "LTEFDDCouColCal"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LTETDDCouColCal"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KEEP_ONE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "KEEP_TWO"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KEEP_THREE"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcalname:[Ljava/lang/String;

    .line 47
    return-void

    .line 41
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private contrlToView(I)V
    .locals 6
    .parameter "phoneid"

    .prologue
    const/4 v5, -0x1

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, i:I
    const/4 v1, -0x2

    .line 138
    .local v1, value:I
    invoke-static {p1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRfView(I)I

    move-result v1

    .line 139
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "phone["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v2, -0x2

    if-ne v2, v1, :cond_1

    .line 151
    :cond_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcalname:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 144
    shr-int v2, v1, v0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    aput v5, v2, v0

    .line 149
    :cond_2
    :goto_1
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CouColCalInfo;->showCouColCal(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    aget v2, v2, v0

    if-ne v5, v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    goto :goto_1
.end method


# virtual methods
.method public getCdmaCouColCal()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->CdmaCouColCal:I

    aget v0, v0, v1

    return v0
.end method

.method public getEvdoCouColCal()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->EvdoCouColCal:I

    aget v0, v0, v1

    return v0
.end method

.method public getGsmCouColCal()I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->GsmCouColCal:I

    aget v0, v0, v1

    return v0
.end method

.method public getKeepOneCouColCal()I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->KEEP_ONE:I

    aget v0, v0, v1

    return v0
.end method

.method public getKeepThreeCouColCal()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->KEEP_THREE:I

    aget v0, v0, v1

    return v0
.end method

.method public getKeepTwoCouColCal()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->KEEP_TWO:I

    aget v0, v0, v1

    return v0
.end method

.method public getLTEFDDCouColCal()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->LTEFDDCouColCal:I

    aget v0, v0, v1

    return v0
.end method

.method public getLTETDDCouColCal()I
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->LTETDDCouColCal:I

    aget v0, v0, v1

    return v0
.end method

.method public getTDscdmaCouColCal()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->TDscdmaCouColCal:I

    aget v0, v0, v1

    return v0
.end method

.method public getWcdmaCouColCal()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    iget v1, p0, Lcom/yulong/android/telephony/CouColCalInfo;->WcdmaCouColCal:I

    aget v0, v0, v1

    return v0
.end method

.method public setCouColCal(II)V
    .locals 1
    .parameter "idx"
    .parameter "value"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    aput p2, v0, p1

    .line 157
    return-void
.end method

.method public showCouColCal(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcalname:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public toIntArray(I)[I
    .locals 1
    .parameter "phoneid"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/yulong/android/telephony/CouColCalInfo;->contrlToView(I)V

    .line 166
    iget-object v0, p0, Lcom/yulong/android/telephony/CouColCalInfo;->coucolcal:[I

    return-object v0
.end method
