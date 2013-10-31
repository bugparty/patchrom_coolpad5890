.class public Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;
.super Ljava/lang/Object;
.source "UiccCardStatusResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCardStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CardStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;
    }
.end annotation


# instance fields
.field applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

.field card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

.field public islot:I

.field subscription_3gpp2_app_index:[I

.field subscription_3gpp_app_index:[I

.field final synthetic this$0:Lcom/android/internal/telephony/UiccCardStatusResponse;

.field universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardStatusResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->this$0:Lcom/android/internal/telephony/UiccCardStatusResponse;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method AppStateFromRILInt(I)Lcom/android/internal/telephony/UiccConstants$AppState;
    .locals 4
    .parameter "state"

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 131
    .local v0, newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :goto_0
    return-object v0

    .line 122
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 123
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 124
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 125
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 126
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method AppTypeFromRILInt(I)Lcom/android/internal/telephony/UiccConstants$AppType;
    .locals 4
    .parameter "type"

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 114
    .local v0, newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :goto_0
    return-object v0

    .line 105
    .end local v0           #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    goto :goto_0

    .line 106
    .end local v0           #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    goto :goto_0

    .line 107
    .end local v0           #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    goto :goto_0

    .line 108
    .end local v0           #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    goto :goto_0

    .line 109
    .end local v0           #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    .locals 4
    .parameter "substate"

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 164
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PersoSubstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 167
    .local v0, newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :goto_0
    return-object v0

    .line 139
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 140
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 141
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 142
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 143
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 144
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 145
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 146
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 147
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 148
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 149
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 150
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 151
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 152
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 153
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 154
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 155
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_11
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 156
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 157
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 158
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_14
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 159
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 160
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_16
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 161
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_17
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 162
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method PinStateFromRILInt(I)Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 4
    .parameter "state"

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 192
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PinState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 194
    .local v0, newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    :goto_0
    return-object v0

    .line 177
    .end local v0           #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 178
    .restart local v0       #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    goto :goto_0

    .line 180
    .end local v0           #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 181
    .restart local v0       #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    goto :goto_0

    .line 183
    .end local v0           #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 184
    .restart local v0       #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    goto :goto_0

    .line 186
    .end local v0           #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 187
    .restart local v0       #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    goto :goto_0

    .line 189
    .end local v0           #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 190
    .restart local v0       #newPinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;
    .locals 1
    .parameter "index"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v0, v0, p1

    .line 228
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

    return-object v0
.end method

.method public getNumApplications()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v0, v0

    return v0
.end method

.method public getPinState()Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->islot:I

    return v0
.end method

.method public getSubscription3gpp2AppIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    aget v0, v0, p1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSubscription3gppAppIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    aget v0, v0, p1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
