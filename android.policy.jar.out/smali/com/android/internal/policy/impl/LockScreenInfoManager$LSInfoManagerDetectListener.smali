.class Lcom/android/internal/policy/impl/LockScreenInfoManager$LSInfoManagerDetectListener;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LSInfoManagerDetectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LSInfoManagerDetectListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1359
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 1366
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LSInfoManagerDetectListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->showDialog()V

    .line 1377
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LSInfoManagerDetectListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LSInfoManagerDetectListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchOntouchEvent(I)V

    .line 1378
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 1384
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1391
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1396
    const/4 v0, 0x0

    return v0
.end method
