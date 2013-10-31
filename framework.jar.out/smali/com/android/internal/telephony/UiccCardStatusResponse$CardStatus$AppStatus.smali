.class public Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;
.super Ljava/lang/Object;
.source "UiccCardStatusResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppStatus"
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

.field public app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

.field public perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

.field final synthetic this$1:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->this$1:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppState()Lcom/android/internal/telephony/UiccConstants$AppState;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    return-object v0
.end method

.method public getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    return-object v0
.end method

.method public iscdma()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v0

    return v0
.end method

.method public isgsm2g()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isgsm3g()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " aid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " app_label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin1_replaced: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
