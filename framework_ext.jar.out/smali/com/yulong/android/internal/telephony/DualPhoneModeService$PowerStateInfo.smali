.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;
.super Ljava/lang/Object;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerStateInfo"
.end annotation


# instance fields
.field public mCurPowerState:I

.field public mLowBatterClosedNet:Z

.field private mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

.field public mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

.field private preLevel:I

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4250
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4245
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->preLevel:I

    .line 4251
    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 4252
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 4253
    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;IIII)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    .line 4254
    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;IIII)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    .line 4255
    return-void
.end method

.method static synthetic access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4232
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    return-object v0
.end method


# virtual methods
.method isCharging(I)Z
    .locals 2
    .parameter "iLevel"

    .prologue
    const/4 v0, 0x0

    .line 4258
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->preLevel:I

    if-gez v1, :cond_1

    .line 4265
    :cond_0
    :goto_0
    return v0

    .line 4262
    :cond_1
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->preLevel:I

    if-le p1, v1, :cond_0

    .line 4263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setLevel(I)V
    .locals 0
    .parameter "iLevel"

    .prologue
    .line 4270
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->preLevel:I

    .line 4271
    return-void
.end method
