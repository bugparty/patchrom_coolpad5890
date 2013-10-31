.class public Lcom/android/internal/telephony/UiccCardStatusResponse;
.super Ljava/lang/Object;
.source "UiccCardStatusResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UiccCardStatusResponse"


# instance fields
.field cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/UiccCardStatusResponse;)Lcom/android/internal/telephony/UiccCardStatusResponse;
    .locals 5
    .parameter "from"

    .prologue
    .line 239
    const-string v3, "UiccCardStatusResponse"

    const-string v4, "UiccCardStatusResponse:copyFrom "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .line 241
    .local v2, j:I
    if-nez p1, :cond_1

    .line 243
    const-string v3, "UiccCardStatusResponse"

    const-string v4, "UiccCardStatusResponse:copyFrom from = null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 p0, 0x0

    .line 282
    .end local p0
    :cond_0
    return-object p0

    .line 246
    .restart local p0
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    array-length v3, v3

    new-array v3, v3, [Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    .line 247
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    new-instance v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse;)V

    aput-object v4, v3, v1

    .line 250
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->islot:I

    iput v4, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->islot:I

    .line 251
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v4, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 252
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v4, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 254
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    .line 255
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 257
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 259
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    .line 260
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 262
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 264
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v4, v4

    new-array v4, v4, [Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    iput-object v4, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    .line 265
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 268
    new-instance v0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    .line 269
    .local v0, ca:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iput-object v3, v0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 270
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    iput-object v3, v0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 271
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iput-object v3, v0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 272
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    iput v3, v0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    .line 273
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v3, v0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 274
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v3, v0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 275
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 276
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    .line 277
    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 278
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    .line 279
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aput-object v0, v3, v2

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 247
    .end local v0           #ca:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public printf(Ljava/lang/String;)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 287
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":CardStatus.len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .line 289
    .local v1, j:I
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 291
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] CardState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "universal_pin_state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->islot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 295
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "subscription_3gpp2_app_index["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 299
    :cond_0
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 301
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "subscription_3gpp_app_index["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    :cond_1
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 307
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applications["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].app_type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applications["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].app_state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applications["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].perso_substate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applications["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].aid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applications["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].app_label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applications["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].pin1_replaced : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applications["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].PinState1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v2, "UiccCardStatusResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cards[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applications["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].PinState2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 289
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 317
    :cond_3
    return-void
.end method
