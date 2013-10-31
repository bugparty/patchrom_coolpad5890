.class Lcom/android/internal/policy/impl/GlobalActions$5$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$5;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$5;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$5;)V
    .locals 0
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 717
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 718
    .local v0, mShuthandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$5$2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$5$2$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$5$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    const-string v1, "GlobalActions"

    const-string v2, "aaaaaa onPress/onClick/goto reboot"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return-void
.end method
