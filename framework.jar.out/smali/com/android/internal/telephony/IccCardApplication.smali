.class public Lcom/android/internal/telephony/IccCardApplication;
.super Ljava/lang/Object;
.source "IccCardApplication.java"


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

.field public app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

.field public perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/UiccConstants$PinState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method AppStateFromRILInt(I)Lcom/android/internal/telephony/UiccConstants$AppState;
    .locals 4
    .parameter "state"

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_0

    .line 182
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

    .line 175
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 185
    .local v0, newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :goto_0
    return-object v0

    .line 176
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 177
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 178
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 179
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 180
    .end local v0           #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/UiccConstants$AppState;
    goto :goto_0

    .line 174
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
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 165
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

    .line 159
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 168
    .local v0, newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :goto_0
    return-object v0

    .line 160
    .end local v0           #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    goto :goto_0

    .line 161
    .end local v0           #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    goto :goto_0

    .line 162
    .end local v0           #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    goto :goto_0

    .line 163
    .end local v0           #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/UiccConstants$AppType;
    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    .locals 4
    .parameter "substate"

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_0

    .line 218
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

    .line 192
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 221
    .local v0, newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :goto_0
    return-object v0

    .line 193
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 194
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 195
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 196
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 197
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 198
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 199
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 200
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 201
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 202
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 203
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 204
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 205
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 206
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 207
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 208
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 209
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_11
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 210
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 211
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 212
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_14
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 213
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 214
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_16
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 215
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_17
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 216
    .end local v0           #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    goto :goto_0

    .line 191
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

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    return-object v0
.end method

.method public getAppState()Lcom/android/internal/telephony/UiccConstants$AppState;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    return-object v0
.end method

.method public getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    return-object v0
.end method

.method public getPersoSubState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    return-object v0
.end method

.method public getPin1Replaced()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    return v0
.end method

.method public getPin1Type()Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method

.method public getPin2Type()Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method

.method public getaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public is3gAppType()I
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "IccCardApplication"

    const-string v1, "IccCardApplication aid != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
