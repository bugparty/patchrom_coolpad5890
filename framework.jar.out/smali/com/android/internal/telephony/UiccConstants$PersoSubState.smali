.class public final enum Lcom/android/internal/telephony/UiccConstants$PersoSubState;
.super Ljava/lang/Enum;
.source "UiccConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersoSubState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/UiccConstants$PersoSubState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_READY:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public static final enum PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_READY"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NETWORK"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NETWORK_SUBSET"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_CORPORATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SERVICE_PROVIDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 126
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SIM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NETWORK_PUK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 128
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 129
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_CORPORATE_PUK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 130
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SIM_PUK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 132
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_NETWORK1"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 133
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_NETWORK2"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 134
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_HRPD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 135
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_CORPORATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_SERVICE_PROVIDER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_RUIM"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 138
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_NETWORK1_PUK"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_NETWORK2_PUK"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 140
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_HRPD_PUK"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 141
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_CORPORATE_PUK"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_RUIM_PUK"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 118
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$PersoSubState;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    .locals 1
    .parameter "name"

    .prologue
    .line 118
    const-class v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/UiccConstants$PersoSubState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    return-object v0
.end method


# virtual methods
.method isPersoSubStateRuimCorporate()Z
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateRuimHrpd()Z
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateRuimInProcessOrReady()Z
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateRuimNetwork1()Z
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateRuimNetwork2()Z
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateRuimRuim()Z
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateRuimServiceProvider()Z
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateSimCorporate()Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateSimNetwork()Z
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateSimNetworkSubset()Z
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateSimServiceProvider()Z
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateSimSim()Z
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersoSubStateUnknown()Z
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
