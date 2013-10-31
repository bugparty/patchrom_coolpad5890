.class Lcom/android/internal/policy/impl/LockScreenWidgetManager$10;
.super Landroid/os/Handler;
.source "LockScreenWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenWidgetManager;
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
    .line 1641
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$10;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1644
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$10;->removeMessages(I)V

    .line 1646
    return-void
.end method
