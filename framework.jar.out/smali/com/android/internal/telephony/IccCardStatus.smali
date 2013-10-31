.class public Lcom/android/internal/telephony/IccCardStatus;
.super Ljava/lang/Object;
.source "IccCardStatus.java"


# static fields
.field static final CARD_MAX_APPS:I = 0x8


# instance fields
.field private mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field private mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

.field private mCdmaSubscriptionAppIndex:I

.field private mGsmUmtsSubscriptionAppIndex:I

.field public mImsSubscriptionAppIndex:I

.field protected mLogTag:Ljava/lang/String;

.field private mNumApplications:I

.field private mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "IccCardStatus"

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V
    .locals 5
    .parameter "newCardStatus"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v2, "IccCardStatus"

    iput-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, i:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 76
    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getPinState()Lcom/android/internal/telephony/UiccConstants$PinState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 77
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getSubscription3gppAppIndex(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 78
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getSubscription3gpp2AppIndex(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    .line 80
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IccCardStatus mNumApplications = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    if-ge v0, v2, :cond_0

    .line 83
    new-instance v1, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 84
    .local v1, iccCardApplication:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v2, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 85
    iget-object v2, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    iput-object v2, v1, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 86
    iget-object v2, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iput-object v2, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 87
    iget-object v2, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 88
    iget-object v2, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v2, v1, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 89
    iget-object v2, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    iput v2, v1, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 90
    iget-object v2, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v2, v1, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 91
    iget-object v2, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iput-object v2, v1, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1           #iccCardApplication:Lcom/android/internal/telephony/IccCardApplication;
    :cond_0
    return-void
.end method


# virtual methods
.method public addApplication(Lcom/android/internal/telephony/IccCardApplication;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/IccCardApplication;
    .locals 1
    .parameter "index"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardApplication;

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    return-object v0
.end method

.method public getCdmaSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    return v0
.end method

.method public getGsmUmtsSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    return v0
.end method

.method public getNumApplications()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    return v0
.end method

.method public getPinState()Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method

.method public printf(Ljava/lang/String;)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":CardStatus  CardState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PinState =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mNumApplications = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, j:I
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    if-ge v0, v1, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applications["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].app_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applications["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].app_state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication;->getAppState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applications["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].perso_substate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applications["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].aid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication;->getaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applications["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].app_label: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication;->getAppLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applications["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].pin1_replaced : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication;->getPin1Replaced()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applications["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].PinState1 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication;->getPin1Type()Lcom/android/internal/telephony/UiccConstants$PinState;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applications["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].PinState2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication;->getPin2Type()Lcom/android/internal/telephony/UiccConstants$PinState;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method public setCardState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 111
    packed-switch p1, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_CardState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 124
    :goto_0
    return-void

    .line 116
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    goto :goto_0

    .line 119
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCdmaSubscriptionAppIndex(I)V
    .locals 0
    .parameter "cdmaSubscriptionAppIndex"

    .prologue
    .line 164
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 165
    return-void
.end method

.method public setGsmUmtsSubscriptionAppIndex(I)V
    .locals 0
    .parameter "gsmUmtsSubscriptionAppIndex"

    .prologue
    .line 156
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 157
    return-void
.end method

.method public setNumApplications(I)V
    .locals 0
    .parameter "numApplications"

    .prologue
    .line 172
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    .line 173
    return-void
.end method

.method public setUniversalPinState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_PinState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 149
    :goto_0
    return-void

    .line 132
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    goto :goto_0

    .line 135
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    goto :goto_0

    .line 138
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    goto :goto_0

    .line 141
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    goto :goto_0

    .line 144
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    goto :goto_0

    .line 127
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
