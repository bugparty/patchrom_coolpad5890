.class Lcom/android/internal/policy/impl/LockScreenWidgetManager$7;
.super Ljava/lang/Object;
.source "LockScreenWidgetManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustCanFlipper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1404
    sget-object v0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1405
    const/4 v0, 0x1

    return v0
.end method