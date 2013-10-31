.class public final enum Lcom/android/internal/telephony/UiccConstants$AppState;
.super Ljava/lang/Enum;
.source "UiccConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/UiccConstants$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/UiccConstants$AppState;

.field public static final enum APPSTATE_DETECTED:Lcom/android/internal/telephony/UiccConstants$AppState;

.field public static final enum APPSTATE_ILLEGAL:Lcom/android/internal/telephony/UiccConstants$AppState;

.field public static final enum APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

.field public static final enum APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

.field public static final enum APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

.field public static final enum APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

.field public static final enum APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppState;

    const-string v1, "APPSTATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/UiccConstants$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 23
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppState;

    const-string v1, "APPSTATE_DETECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/UiccConstants$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 24
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppState;

    const-string v1, "APPSTATE_PIN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/UiccConstants$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 25
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppState;

    const-string v1, "APPSTATE_PUK"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/UiccConstants$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 26
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppState;

    const-string v1, "APPSTATE_SUBSCRIPTION_PERSO"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/UiccConstants$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppState;

    const-string v1, "APPSTATE_READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$AppState;

    const-string v1, "APPSTATE_ILLEGAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_ILLEGAL:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/UiccConstants$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_ILLEGAL:Lcom/android/internal/telephony/UiccConstants$AppState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$AppState;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/UiccConstants$AppState;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/UiccConstants$AppState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/UiccConstants$AppState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/UiccConstants$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/UiccConstants$AppState;

    return-object v0
.end method


# virtual methods
.method public getintvalue()I
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    const/4 v0, 0x6

    :goto_0
    return v0

    .line 53
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 59
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 61
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 63
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method isAppNotReady()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAppReady()Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPinRequired()Z
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPukRequired()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSubscriptionPersoEnabled()Z
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
