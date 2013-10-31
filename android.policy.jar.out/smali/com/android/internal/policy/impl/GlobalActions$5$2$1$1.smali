.class Lcom/android/internal/policy/impl/GlobalActions$5$2$1$1;
.super Ljava/lang/Thread;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$5$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/internal/policy/impl/GlobalActions$5$2$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$5$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$2$1$1;->this$3:Lcom/android/internal/policy/impl/GlobalActions$5$2$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 726
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 728
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 729
    return-void
.end method
