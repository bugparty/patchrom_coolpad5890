.class public Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;
.super Ljava/lang/Object;
.source "LockScreenWidgetManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V
    .locals 2
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    const-string v0, "LockScreenWidgetManager"

    const-string v1, "run GestureListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 1026
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->goDistanceUnLockScreen(I)V

    .line 1029
    :cond_0
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/16 v4, 0x8

    const/high16 v6, 0x4248

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1039
    sget v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mChildCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 1040
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1041
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1043
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1044
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1054
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1055
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->goDistanceUnLockScreen(I)V

    .line 1057
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_6

    :cond_3
    move v0, v1

    .line 1096
    :goto_1
    return v0

    .line 1047
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1048
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1050
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1051
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1060
    :cond_6
    const-string v2, "LockScreenWidgetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "distans=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-lez v2, :cond_9

    .line 1062
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_7

    .line 1064
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->inFromLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1065
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1066
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1067
    sget v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    if-lez v1, :cond_8

    .line 1068
    sget v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    .line 1093
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #calls: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->refreshSlidingView()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    goto/16 :goto_1

    .line 1069
    :cond_8
    sget v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    if-gtz v1, :cond_7

    .line 1070
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    goto :goto_2

    .line 1073
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-lez v2, :cond_7

    .line 1074
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_7

    .line 1076
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1077
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1078
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1079
    sget v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_a

    .line 1080
    sget v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    goto :goto_2

    .line 1081
    :cond_a
    sget v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_7

    .line 1082
    sput v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    goto/16 :goto_2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1103
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1109
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1116
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1121
    const/4 v0, 0x0

    return v0
.end method
