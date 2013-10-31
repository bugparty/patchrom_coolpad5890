.class Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowPadViewMethods"
.end annotation


# instance fields
.field flag:I

.field private mCameraDisabled:Z

.field private final mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field resId:I

.field resIdsDouble:[I

.field resIdsSingle:[I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

.field unLockIconId1:I

.field unLockIconId2:I

.field unReadInfoNum1:I

.field unReadInfoNum2:I

.field unReadInfoNums:[I

.field unReadInforDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field unReadInforNumsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field unlockIconIds:[I

.field unlockInfoIconIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field unreadDataDoubleStr:[Ljava/lang/String;

.field unreadInfoName:[Ljava/lang/String;

.field unreadInforNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field whichTriggerRes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 10
    .parameter
    .parameter "glowPadView"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 538
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resId:I

    .line 495
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->flag:I

    .line 496
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    .line 497
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    .line 498
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    .line 499
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId2:I

    .line 501
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "unreadPhone"

    aput-object v3, v2, v5

    const-string v3, "unreadSms"

    aput-object v3, v2, v6

    const-string v3, "unreadEmail"

    aput-object v3, v2, v9

    const-string v3, "unreadCalendar"

    aput-object v3, v2, v8

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInfoName:[Ljava/lang/String;

    .line 505
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resIdsSingle:[I

    .line 512
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resIdsDouble:[I

    .line 517
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "unreadPhoneunreadSms"

    aput-object v3, v2, v5

    const-string v3, "unreadPhoneunreadEmail"

    aput-object v3, v2, v6

    const-string v3, "unreadPhoneunreadCalendar"

    aput-object v3, v2, v9

    const-string v3, "unreadSmsunreadEmail"

    aput-object v3, v2, v8

    const-string v3, "unreadSmsunreadCalendar"

    aput-object v3, v2, v7

    const/4 v3, 0x5

    const-string v4, "unreadEmailunreadCalendar"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadDataDoubleStr:[Ljava/lang/String;

    .line 522
    new-array v2, v7, [I

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadphone:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadsms:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    aput v3, v2, v6

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreademail:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    aput v3, v2, v9

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadcalendar:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$600(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    aput v3, v2, v8

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNums:[I

    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforNumsList:Ljava/util/ArrayList;

    .line 527
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforDataList:Ljava/util/ArrayList;

    .line 528
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInforNameList:Ljava/util/ArrayList;

    .line 529
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unlockInfoIconIdList:Ljava/util/ArrayList;

    .line 530
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    .line 531
    new-array v2, v7, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unlockIconIds:[I

    .line 539
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 540
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforNumsList:Ljava/util/ArrayList;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadphone:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforNumsList:Ljava/util/ArrayList;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadsms:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforNumsList:Ljava/util/ArrayList;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreademail:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforNumsList:Ljava/util/ArrayList;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadcalendar:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$600(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 547
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforNumsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->flag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->flag:I

    .line 549
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforDataList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNums:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInforNameList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInfoName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unlockInfoIconIdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unlockIconIds:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->flag:I

    if-lez v2, :cond_6

    .line 555
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->flag:I

    packed-switch v2, :pswitch_data_0

    .line 572
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 573
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    .line 574
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    .line 576
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unlockInfoIconIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    .line 577
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unlockInfoIconIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId2:I

    .line 578
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    const v3, 0x1080696

    if-ne v2, v3, :cond_5

    .line 580
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInforNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInforNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 589
    .local v1, str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInforNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInforNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_7

    .line 591
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadDataDoubleStr:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 592
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resIdsDouble:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resId:I

    .line 590
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 557
    .end local v1           #str:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 558
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_7

    .line 559
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforNumsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInforNumsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    .line 561
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resIdsSingle:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resId:I

    .line 562
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unlockIconIds:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    .line 563
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    const v3, 0x1080696

    if-ne v2, v3, :cond_4

    .line 564
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInfoName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 566
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInfoName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 584
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInforNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unreadInforNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 600
    :cond_6
    const v2, 0x107000e

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resId:I

    .line 602
    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    if-lez v2, :cond_8

    .line 603
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getFirstUnReadNum(I)V

    .line 604
    const-string v2, "LockScreenInfoManager"

    const-string v3, "MultiWaveViewMethods creat hanshu is done for phoneNum"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_8
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    if-lez v2, :cond_9

    .line 607
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSecondUnReadNum(I)V

    .line 608
    const-string v2, "LockScreenInfoManager"

    const-string v3, "MultiWaveViewMethods creat hanshu is done for smsNum"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_9
    return-void

    .line 505
    nop

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x7t 0x1t
        0x35t 0x0t 0x7t 0x1t
        0x36t 0x0t 0x7t 0x1t
        0x37t 0x0t 0x7t 0x1t
    .end array-data

    .line 512
    :array_1
    .array-data 0x4
        0x38t 0x0t 0x7t 0x1t
        0x39t 0x0t 0x7t 0x1t
        0x3at 0x0t 0x7t 0x1t
        0x3bt 0x0t 0x7t 0x1t
        0x3ct 0x0t 0x7t 0x1t
        0x3dt 0x0t 0x7t 0x1t
    .end array-data

    .line 531
    :array_2
    .array-data 0x4
        0x97t 0x6t 0x8t 0x1t
        0x96t 0x6t 0x8t 0x1t
        0x8ct 0x6t 0x8t 0x1t
        0x8bt 0x6t 0x8t 0x1t
    .end array-data

    .line 555
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 841
    const/high16 v1, 0x3400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 846
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 855
    :goto_1
    return-void

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LockScreenInfoManager"

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 853
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "LockScreenInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 889
    return-void
.end method

.method public getTargetPosition(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method public isTargetPresent(I)Z
    .locals 2
    .parameter "resId"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 893
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 674
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 861
    if-eqz p2, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->pokeWake()V

    .line 865
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 678
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 7
    .parameter "v"
    .parameter "target"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 712
    if-nez p2, :cond_1

    .line 713
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to ONTRIGGER_NORMAL_UNCLOC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    if-ne p2, v6, :cond_2

    .line 719
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mCameraDisabled:Z

    if-nez v0, :cond_0

    .line 721
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to ONTRIGGER_CAMERA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 724
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto :goto_0

    .line 727
    :cond_2
    if-ne p2, v3, :cond_7

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mCreationOrientation:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1600(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 733
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mCameraDisabled:Z

    if-nez v0, :cond_0

    .line 735
    const-string v0, "lockScreenInfoManager"

    const-string v1, "ORIENTATION_LANDSCAPE you ontrigger to ONTRIGGER_CAMERA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 738
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto :goto_0

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unreadPhone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 750
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to unreadPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 756
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unreadSms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 757
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to unreadSms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 760
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 763
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unreadEmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 764
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to unreadEmail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 767
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 770
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unreadCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to unreadCalendar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 774
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 779
    :cond_7
    if-ne p2, v5, :cond_8

    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 782
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 784
    :cond_8
    if-ne p2, v4, :cond_d

    .line 789
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mCreationOrientation:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1600(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 791
    const-string v0, "lockScreenInfoManager"

    const-string v1, "ORIENTATION_LANDSCAPE you ontrigger to ONTRIGGER_NORMAL_UNCLOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 794
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 799
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unreadPhone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 805
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to unreadPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 811
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unreadSms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 812
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to unreadSms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 818
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unreadEmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 819
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to unreadEmail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 822
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 825
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->whichTriggerRes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unreadCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    const-string v0, "lockScreenInfoManager"

    const-string v1, "you ontrigger to unreadCalendar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchTriggerEvent(I)V

    .line 829
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    goto/16 :goto_0

    .line 834
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #calls: Lcom/android/internal/policy/impl/LockScreenInfoManager;->toggleRingMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->updateResources()V

    .line 836
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->pokeWake()V

    goto/16 :goto_0
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 877
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 873
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 1
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 881
    return-void
.end method

.method public updateResources()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 629
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    if-nez v0, :cond_0

    .line 630
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    packed-switch v0, :pswitch_data_0

    .line 639
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdFirst(I)V

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId2:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdSecond(I)V

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getFirstUnReadNum(I)V

    .line 642
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSecondUnReadNum(I)V

    .line 643
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 668
    :goto_0
    const v3, 0x10802dd

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mCameraDisabled:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->setEnabled(IZ)V

    .line 669
    const v0, 0x1080294

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSearchDisabled:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->setEnabled(IZ)V

    .line 670
    return-void

    .line 632
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdFirst(I)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdSecond(I)V

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getFirstUnReadNum(I)V

    .line 635
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSecondUnReadNum(I)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    goto :goto_0

    .line 646
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    if-eqz v0, :cond_2

    .line 647
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    const v3, 0x1080696

    if-ne v0, v3, :cond_1

    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId2:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdFirst(I)V

    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdSecond(I)V

    .line 650
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getFirstUnReadNum(I)V

    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSecondUnReadNum(I)V

    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdFirst(I)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId2:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdSecond(I)V

    .line 656
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getFirstUnReadNum(I)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSecondUnReadNum(I)V

    .line 658
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    goto/16 :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdFirst(I)V

    .line 663
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unLockIconId2:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setUnlockBitmapIdSecond(I)V

    .line 664
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum1:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getFirstUnReadNum(I)V

    .line 665
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->unReadInfoNum2:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSecondUnReadNum(I)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->resId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 668
    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 669
    goto/16 :goto_2

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x1080696
        :pswitch_0
    .end packed-switch
.end method
