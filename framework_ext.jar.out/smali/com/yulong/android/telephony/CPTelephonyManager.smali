.class public Lcom/yulong/android/telephony/CPTelephonyManager;
.super Ljava/lang/Object;
.source "CPTelephonyManager.java"


# static fields
.field public static final ACTION_DUAL_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.DUAL_PHONE_STATE"

.field private static final LOG_TAG:Ljava/lang/String; = "CPTelephonyManager"

.field private static sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/yulong/android/telephony/CPTelephonyManager;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CPTelephonyManager;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPTelephonyManager;->sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    .line 66
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 68
    return-void
.end method

.method public static getCardInfoBySlot(I)Lcom/yulong/android/telephony/CardInfo;
    .locals 1
    .parameter "slot"

    .prologue
    .line 740
    new-instance v0, Lcom/yulong/android/telephony/CardInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CardInfo;-><init>()V

    .line 741
    .local v0, cardInfo:Lcom/yulong/android/telephony/CardInfo;
    return-object v0
.end method

.method public static getCurrentCardNum()I
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyManager;->sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 705
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneTypeByPhoneId(I)I
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 818
    invoke-static {p0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 256
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 258
    const/4 v1, 0x0

    .line 259
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 245
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 249
    .local v0, type:I
    return v0
.end method

.method public static getPreferredCardInfo()Lcom/yulong/android/telephony/CardInfo;
    .locals 1

    .prologue
    .line 753
    new-instance v0, Lcom/yulong/android/telephony/CardInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CardInfo;-><init>()V

    .line 754
    .local v0, cardInfo:Lcom/yulong/android/telephony/CardInfo;
    return-object v0
.end method

.method public static getPreferredCardSlot()I
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x1

    .line 807
    .local v0, cardSlot:I
    return v0
.end method

.method public static getPreferredPhoneId()I
    .locals 3

    .prologue
    .line 791
    const-string v1, "gsm.current.modem-type"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 795
    .local v0, phoneId:I
    return v0
.end method

.method public static getSecondCardInfo()Lcom/yulong/android/telephony/CardInfo;
    .locals 2

    .prologue
    .line 767
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: delete interface!error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 711
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableDualLocationUpdates(I)V
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableDualLocationUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableDualLocationUpdates(I)V
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableDualLocationUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "address"
    .parameter "phoneId"

    .prologue
    .line 949
    move-object v1, p1

    .line 951
    .local v1, retAddress:Ljava/lang/String;
    :try_start_0
    const-string v2, "CPTelephonyManager"

    const-string v3, "CP_COMM: enter filterSmsAddress."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 958
    :goto_0
    return-object v1

    .line 953
    :catch_0
    move-exception v0

    .line 955
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "address"
    .parameter "phoneId"

    .prologue
    .line 931
    move-object v1, p1

    .line 933
    .local v1, retAddress:Ljava/lang/String;
    :try_start_0
    const-string v2, "CPTelephonyManager"

    const-string v3, "CP_COMM: dont has fuction filterSmsAddress."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 940
    :goto_0
    return-object v1

    .line 935
    :catch_0
    move-exception v0

    .line 937
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllG2NeighborCellInfo(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "phoneId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G2NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1110
    .local p2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yulong/android/telephony/G2NeighborCellInfo;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1111
    .local v3, inData:Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1113
    .local v4, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/16 v7, 0x80

    invoke-interface {v6, v7, v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :goto_0
    const-string v6, "g2neighborcellinfolist_size"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1119
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 1120
    new-instance v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;

    invoke-direct {v2}, Lcom/yulong/android/telephony/G2NeighborCellInfo;-><init>()V

    .line 1121
    .local v2, in:Lcom/yulong/android/telephony/G2NeighborCellInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_arfcn"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    .line 1122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_rxlevMin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    .line 1123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_gprsSupp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    .line 1124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_band"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    .line 1125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_bsic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    .line 1126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    .line 1127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_rxlev"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    .line 1128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    .line 1129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c31"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    .line 1130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c32"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    .line 1131
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1115
    .end local v1           #i:I
    .end local v2           #in:Lcom/yulong/android/telephony/G2NeighborCellInfo;
    .end local v5           #size:I
    :catch_0
    move-exception v0

    .line 1116
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1133
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public getAllG3NeighborCellInfo(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "phoneId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G3NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1161
    .local p2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yulong/android/telephony/G3NeighborCellInfo;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .local v3, inData:Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1164
    .local v4, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/16 v7, 0x82

    invoke-interface {v6, v7, v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :goto_0
    const-string v6, "g3neighborcellinfolist_size"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1170
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 1171
    new-instance v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;

    invoke-direct {v2}, Lcom/yulong/android/telephony/G3NeighborCellInfo;-><init>()V

    .line 1172
    .local v2, in:Lcom/yulong/android/telephony/G3NeighborCellInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g3neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_cellParaId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellParaId:I

    .line 1173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g3neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_cellArfcn"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellArfcn:I

    .line 1174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g3neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_cellRscp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellRscp:I

    .line 1175
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1166
    .end local v1           #i:I
    .end local v2           #in:Lcom/yulong/android/telephony/G3NeighborCellInfo;
    .end local v5           #size:I
    :catch_0
    move-exception v0

    .line 1167
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1177
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public getDualAudioRevision(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 844
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualAudioRevision(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 848
    :goto_0
    return-object v1

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 847
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 848
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1024
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1029
    :goto_0
    return-object v1

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1027
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1029
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCallState(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 671
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 677
    :goto_0
    return v1

    .line 672
    :catch_0
    move-exception v0

    .line 674
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 675
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 677
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCellLocation(I)Landroid/telephony/CellLocation;
    .locals 6
    .parameter "phoneId"

    .prologue
    const/4 v2, 0x0

    .line 144
    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: getDualCellLocation, phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCellLocation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0, p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 151
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 150
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 550
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 555
    :goto_0
    return-object v1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 553
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 555
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataActivity(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 683
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataActivity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 689
    :goto_0
    return v1

    .line 684
    :catch_0
    move-exception v0

    .line 686
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 687
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 689
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataState(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 695
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 700
    :goto_0
    return v1

    .line 696
    :catch_0
    move-exception v0

    .line 698
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 699
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 700
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 122
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceSvn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 104
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualEriVersion(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 1002
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualEriVersion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1006
    :goto_0
    return v1

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1005
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1006
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 521
    :goto_0
    return-object v1

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 519
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 521
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 483
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 488
    :goto_0
    return-object v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 486
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 488
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualMcc(I)Ljava/lang/String;
    .locals 5
    .parameter "phoneId"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, imsi:Ljava/lang/String;
    const/4 v1, 0x0

    .line 466
    .local v1, mcc:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 467
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 469
    :cond_0
    const-string v2, "CPTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDualMcc phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-object v1
.end method

.method public getDualMin(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 1013
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMin(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1017
    :goto_0
    return-object v1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1016
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1017
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNeighboringCellInfo(I)Ljava/util/List;
    .locals 3
    .parameter "phoneId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNeighboringCellInfo(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 211
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 321
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 322
    const-string v0, "cdma.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 324
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 325
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 282
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 283
    const-string v0, "cdma.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 285
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 286
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 263
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 264
    const-string v0, "cdma.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    .line 266
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 267
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkType(I)I
    .locals 6
    .parameter "mPhoneId"

    .prologue
    const/4 v2, 0x0

    .line 616
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 617
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 619
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNetworkType(I)I

    move-result v2

    .line 630
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 622
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDualNetworkType: telephony == null, mphoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 625
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 627
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 628
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 630
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 665
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 645
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 647
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 649
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 651
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 653
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 655
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 657
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 659
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 661
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 663
    :pswitch_9
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getDualPhoneType(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 226
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualActivePhoneType(I)I

    move-result v2

    .line 239
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 230
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 232
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 235
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 236
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 239
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDualPrlVersion(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 859
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualPrlVersion(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 863
    :goto_0
    return-object v1

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 862
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 863
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualRFCalibration(I)[I
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 827
    const/4 v2, 0x6

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 829
    .local v0, defaultDualRFCalibration:[I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualRFCalibration(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 833
    .end local v0           #defaultDualRFCalibration:[I
    :goto_0
    return-object v0

    .line 830
    .restart local v0       #defaultDualRFCalibration:[I
    :catch_0
    move-exception v1

    .line 831
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 832
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 833
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 827
    nop

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

.method public getDualSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 424
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 425
    const-string v0, "cdma.ruim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    :goto_0
    return-object v0

    .line 427
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 428
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 391
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 392
    const-string v0, "cdma.ruim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    .line 394
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 395
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 409
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 410
    const-string v0, "cdma.ruim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 412
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 413
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 443
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 448
    :goto_0
    return-object v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 446
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 448
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSimState(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x2

    .line 359
    if-ne p1, v1, :cond_1

    .line 360
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, prop:Ljava/lang/String;
    :goto_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    const/4 v1, 0x1

    .line 377
    :cond_0
    :goto_1
    return v1

    .line 362
    .end local v0           #prop:Ljava/lang/String;
    :cond_1
    const-string v2, "cdma.ruim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_0

    .line 368
    :cond_2
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    const/4 v1, 0x3

    goto :goto_1

    .line 372
    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    const/4 v1, 0x4

    goto :goto_1

    .line 374
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 375
    const/4 v1, 0x5

    goto :goto_1

    .line 377
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDualSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 459
    :goto_0
    return-object v1

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 457
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 459
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUimId(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 874
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualUimId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 878
    :goto_0
    return-object v1

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 877
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 878
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 587
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 592
    :goto_0
    return-object v1

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 590
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 592
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 533
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 538
    :goto_0
    return-object v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 536
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 538
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMessageCount(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 569
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 574
    :goto_0
    return v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 572
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 574
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getG2ServiceCellInfo(ILcom/yulong/android/telephony/G2ServiceCellInfo;)Z
    .locals 5
    .parameter "phoneId"
    .parameter "info"

    .prologue
    .line 1073
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1074
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1076
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_0
    const-string v3, "g2servicecellinfo_mMcc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    .line 1083
    const-string v3, "g2servicecellinfo_mMnc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    .line 1084
    const-string v3, "g2servicecellinfo_mLac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    .line 1085
    const-string v3, "g2servicecellinfo_mT3212"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    .line 1086
    const-string v3, "g2servicecellinfo_mRac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    .line 1087
    const-string v3, "g2servicecellinfo_mNmo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    .line 1088
    const-string v3, "g2servicecellinfo_mServCELLBcchArfcn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    .line 1089
    const-string v3, "g2servicecellinfo_mServCellCi"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    .line 1090
    const-string v3, "g2servicecellinfo_mServCellGprsSupp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    .line 1091
    const-string v3, "g2servicecellinfo_mServSysInfoRxlexMin"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    .line 1092
    const-string v3, "g2servicecellinfo_mServCellBand"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    .line 1093
    const-string v3, "g2servicecellinfo_mServCellDscMax"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    .line 1094
    const-string v3, "g2servicecellinfo_mEdgeSupport"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    .line 1095
    const-string v3, "g2servicecellinfo_mGprsSupport"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    .line 1096
    const-string v3, "g2servicecellinfo_mServSysInfoDtxInd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    .line 1097
    const-string v3, "g2servicecellinfo_mServCellRxlev"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    .line 1098
    const-string v3, "g2servicecellinfo_mServCellBsic"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    .line 1099
    const-string v3, "g2servicecellinfo_mServCellC1"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    .line 1100
    const-string v3, "g2servicecellinfo_mServCellC2"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    .line 1101
    const-string v3, "g2servicecellinfo_mServCellC31"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    .line 1102
    const-string v3, "g2servicecellinfo_mServCellC32"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    .line 1103
    const-string v3, "g2servicecellinfo_mSCellDsc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    .line 1105
    const/4 v3, 0x1

    return v3

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getG3ServiceCellInfo(ILcom/yulong/android/telephony/G3ServiceCellInfo;)Z
    .locals 5
    .parameter "phoneId"
    .parameter "info"

    .prologue
    .line 1138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1139
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1141
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x81

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    :goto_0
    const-string v3, "g3servicecellinfo_rscp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    .line 1147
    const-string v3, "g3servicecellinfo_pathLoss"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    .line 1148
    const-string v3, "g3servicecellinfo_arfcn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    .line 1149
    const-string v3, "g3servicecellinfo_rssi"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    .line 1150
    const-string v3, "g3servicecellinfo_mMcc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    .line 1151
    const-string v3, "g3servicecellinfo_mMnc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    .line 1152
    const-string v3, "g3servicecellinfo_mLac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    .line 1153
    const-string v3, "g3servicecellinfo_mT3212"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    .line 1154
    const-string v3, "g3servicecellinfo_mRac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    .line 1155
    const-string v3, "g3servicecellinfo_mNmo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    .line 1156
    const/4 v3, 0x1

    return v3

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getModemVersion(I)Ljava/lang/String;
    .locals 7
    .parameter "phoneId"

    .prologue
    .line 1182
    const-string v2, ""

    .line 1183
    .local v2, modemVersion:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1184
    .local v1, inData:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1186
    .local v3, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x85

    invoke-interface {v4, v5, v1, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    const-string/jumbo v4, "modemversion"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xl modemVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    return-object v2

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRegIdd(I)Ljava/lang/String;
    .locals 4
    .parameter "iPhoneId"

    .prologue
    .line 987
    const-string v1, ""

    .line 989
    .local v1, regIdd:Ljava/lang/String;
    :try_start_0
    const-string v2, "CPTelephonyManager"

    const-string v3, "CP_COMM: enter getRegIdd."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRegIdd(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 996
    :goto_0
    return-object v1

    .line 991
    :catch_0
    move-exception v0

    .line 993
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSnId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualSnId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 137
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasDualIccCard(I)Z
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 336
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasDualIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 342
    :goto_0
    return v1

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 340
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 342
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDualNetworkRoaming(I)Z
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 301
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 302
    const-string/jumbo v0, "true"

    const-string v1, "cdma.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 308
    :goto_0
    return v0

    .line 304
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 305
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenDual(Lcom/yulong/android/telephony/CPPhoneStateListener;I)V
    .locals 6
    .parameter "listenerDual"
    .parameter "events"

    .prologue
    .line 716
    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 720
    .local v1, notifyNow:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p1, Lcom/yulong/android/telephony/CPPhoneStateListener;->callback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v4, p2, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenDual(Ljava/lang/String;Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 729
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 716
    .end local v2           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v2, "<unknown>"

    goto :goto_0

    .line 719
    .restart local v2       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 722
    :catch_0
    move-exception v0

    .line 724
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: listenDual func have RemoteException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 725
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 727
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: listenDual func have null pointer."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public sendCommandToRil(ILjava/lang/String;)V
    .locals 2
    .parameter "PhoneId"
    .parameter "strcmd"

    .prologue
    .line 966
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCommandToRil(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    return-void

    .line 968
    :catch_0
    move-exception v0

    .line 970
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1036
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1043
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1039
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1041
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "phoneId"

    .prologue
    .line 498
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setGpsOne(I)V
    .locals 2
    .parameter "icmd"

    .prologue
    .line 907
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: dont has fuction setGpsOne."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return-void
.end method

.method public startModemCellTest(I)Z
    .locals 5
    .parameter "phoneId"

    .prologue
    .line 1047
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1048
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1050
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopModemCellTest(I)Z
    .locals 5
    .parameter "phoneId"

    .prologue
    .line 1060
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1061
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1063
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x7e

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 2
    .parameter "ioCode"
    .parameter "inData"
    .parameter "outData"
    .parameter "phoneId"

    .prologue
    .line 896
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 903
    :goto_0
    return v1

    .line 898
    :catch_0
    move-exception v0

    .line 900
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 903
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public telephonyIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "ioCode"
    .parameter "inData"
    .parameter "outData"

    .prologue
    .line 884
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->telephonyIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 890
    :goto_0
    return v1

    .line 885
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 890
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSignalStrength(I)V
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 1196
    const/16 v1, 0x1a

    .line 1197
    .local v1, ioCode:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1198
    .local v0, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1200
    .local v2, outData:Landroid/os/Bundle;
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    .line 1201
    return-void
.end method
