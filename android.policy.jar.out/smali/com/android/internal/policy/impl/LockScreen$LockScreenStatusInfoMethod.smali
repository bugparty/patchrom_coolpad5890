.class Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LockScreenStatusInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockScreenStatusInfoMethod"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goDistanceUnLockScreen(I)V
    .locals 2
    .parameter "touchEvent"

    .prologue
    .line 353
    packed-switch p1, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 355
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 363
    :cond_1
    const-string v0, "LockScreen"

    const-string v1, "action move callback null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public goTargetUnLockScreen(I)V
    .locals 5
    .parameter "target"

    .prologue
    .line 264
    const-string v1, "persist.sys.fangdaomode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, beiDaoFlag:Ljava/lang/String;
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "................beiDaoFlag =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-nez v0, :cond_0

    .line 267
    const-string v0, "6"

    .line 269
    :cond_0
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    packed-switch p1, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 272
    :pswitch_0
    const-string v1, "LockScreen"

    const-string v2, "MultiWaveView goToUnlockScreen() about target == 1 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 277
    :pswitch_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    const-string v1, "LockScreen"

    const-string v2, "MultiWaveView mCameraDisabled goToUnlockScreen() about target == 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doTaskAfterUnlock(Ljava/lang/Runnable;)V

    .line 283
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 281
    :cond_1
    const-string v1, "LockScreen"

    const-string v2, "............it is beidao mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 287
    const-string v1, "LockScreen"

    const-string v2, "MultiWaveView mCameraDisabled goToUnlockScreen() about target == 4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doTaskAfterUnlock(Ljava/lang/Runnable;)V

    .line 293
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 291
    :cond_2
    const-string v1, "LockScreen"

    const-string v2, "............it is beidao mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 296
    :pswitch_3
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 297
    const-string v1, "LockScreen"

    const-string v2, "MultiWaveView mCameraDisabled goToUnlockScreen() about target == 5"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doTaskAfterUnlock(Ljava/lang/Runnable;)V

    .line 303
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 301
    :cond_3
    const-string v1, "LockScreen"

    const-string v2, "............it is beidao mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 306
    :pswitch_4
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 307
    const-string v1, "LockScreen"

    const-string v2, "MultiWaveView mCameraDisabled goToUnlockScreen() about target == 6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doTaskAfterUnlock(Ljava/lang/Runnable;)V

    .line 313
    :goto_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 311
    :cond_4
    const-string v1, "LockScreen"

    const-string v2, "............it is beidao mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 316
    :pswitch_5
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 317
    const-string v1, "LockScreen"

    const-string v2, "MultiWaveView mCameraDisabled goToUnlockScreen() about target == 7"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doTaskAfterUnlock(Ljava/lang/Runnable;)V

    .line 323
    :goto_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 321
    :cond_5
    const-string v1, "LockScreen"

    const-string v2, "............it is beidao mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 326
    :pswitch_6
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 327
    const-string v1, "LockScreen"

    const-string v2, "MultiWaveView mCameraDisabled goToUnlockScreen() about target == 8"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doTaskAfterUnlock(Ljava/lang/Runnable;)V

    .line 333
    :goto_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 331
    :cond_6
    const-string v1, "LockScreen"

    const-string v2, "............it is beidao mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 336
    :pswitch_7
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 337
    const-string v1, "LockScreen"

    const-string v2, "MultiWaveView mCameraDisabled goToUnlockScreen() about target == 9"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$1000(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doTaskAfterUnlock(Ljava/lang/Runnable;)V

    .line 343
    :goto_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 341
    :cond_7
    const-string v1, "LockScreen"

    const-string v2, "............it is beidao mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 270
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public pokeWake()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 381
    return-void
.end method

.method public pokeWake(I)V
    .locals 1
    .parameter "mills"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 387
    return-void
.end method

.method public sendBroadCastStatuBar(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreen;->sendBroadCastToStatuBar(Z)V

    .line 375
    return-void
.end method
