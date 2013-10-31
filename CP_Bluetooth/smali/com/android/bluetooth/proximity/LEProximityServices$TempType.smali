.class public final enum Lcom/android/bluetooth/proximity/LEProximityServices$TempType;
.super Ljava/lang/Enum;
.source "LEProximityServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/proximity/LEProximityServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TempType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/proximity/LEProximityServices$TempType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

.field public static final enum ARMPIT:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

.field public static final enum BODY:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

.field public static final enum EAR:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

.field public static final enum FINGER:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

.field public static final enum GASTRO:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

.field public static final enum MOUTH:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

.field public static final enum RECT:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

.field public static final enum TOE:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

.field public static final enum TYMPHANUM:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    const-string v1, "ARMPIT"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->ARMPIT:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->BODY:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    const-string v1, "EAR"

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->EAR:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    const-string v1, "FINGER"

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->FINGER:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    const-string v1, "GASTRO"

    invoke-direct {v0, v1, v7}, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->GASTRO:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    const-string v1, "MOUTH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->MOUTH:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    const-string v1, "RECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->RECT:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    const-string v1, "TOE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->TOE:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    const-string v1, "TYMPHANUM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->TYMPHANUM:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    .line 220
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->ARMPIT:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->BODY:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->EAR:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->FINGER:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->GASTRO:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->MOUTH:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->RECT:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->TOE:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->TYMPHANUM:Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->$VALUES:[Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/proximity/LEProximityServices$TempType;
    .locals 1
    .parameter "name"

    .prologue
    .line 220
    const-class v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/proximity/LEProximityServices$TempType;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->$VALUES:[Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    invoke-virtual {v0}, [Lcom/android/bluetooth/proximity/LEProximityServices$TempType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/proximity/LEProximityServices$TempType;

    return-object v0
.end method
