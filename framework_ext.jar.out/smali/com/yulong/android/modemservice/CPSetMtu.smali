.class public Lcom/yulong/android/modemservice/CPSetMtu;
.super Ljava/lang/Object;
.source "CPSetMtu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;
    }
.end annotation


# static fields
.field static LOG_TAG:Ljava/lang/String;

.field static mtu_operator1:Ljava/lang/String;

.field static mtu_operator2:Ljava/lang/String;

.field static mtu_value1:[Ljava/lang/String;

.field static mtu_value2:[Ljava/lang/String;

.field static mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 59
    const-string v0, "CPSetMtu"

    sput-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->LOG_TAG:Ljava/lang/String;

    .line 65
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    .line 66
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "phoneid"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static GetMtu(Lcom/android/internal/telephony/PhoneBase;)Ljava/lang/String;
    .locals 5
    .parameter "phone"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 78
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator1:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator1:Ljava/lang/String;

    const-string v3, "cdma.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_loadXmlFileToMem(Lcom/android/internal/telephony/PhoneBase;)V

    .line 81
    :cond_1
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkType(I)I

    move-result v1

    .line 82
    .local v1, num:I
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 83
    .local v0, mtu:Ljava/lang/String;
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mtu_operator1= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mtu= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    if-nez v0, :cond_2

    .line 94
    const-string v0, "1460"

    .line 96
    :cond_2
    return-object v0

    .line 86
    .end local v0           #mtu:Ljava/lang/String;
    .end local v1           #num:I
    :cond_3
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator2:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator2:Ljava/lang/String;

    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 87
    :cond_4
    invoke-static {p0}, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_loadXmlFileToMem(Lcom/android/internal/telephony/PhoneBase;)V

    .line 89
    :cond_5
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkType(I)I

    move-result v1

    .line 90
    .restart local v1       #num:I
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 91
    .restart local v0       #mtu:Ljava/lang/String;
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mtu_operator2= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mtu= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static mtu_loadXmlFileToMem(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 99
    new-instance v0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v1, "etc/mtu-conf.xml"

    invoke-direct {v0, v1}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    .line 100
    sget-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    invoke-virtual {v0, p0}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->Find_OperatorByProperties(Lcom/android/internal/telephony/PhoneBase;)V

    .line 101
    return-void
.end method
