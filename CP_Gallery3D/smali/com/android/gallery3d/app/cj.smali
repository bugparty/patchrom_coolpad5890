.class Lcom/android/gallery3d/app/cj;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic yw:Lcom/android/gallery3d/app/w;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/w;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/app/cj;->yw:Lcom/android/gallery3d/app/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "plugged"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/cj;->yw:Lcom/android/gallery3d/app/w;

    invoke-static {v1}, Lcom/android/gallery3d/app/w;->b(Lcom/android/gallery3d/app/w;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/app/cj;->yw:Lcom/android/gallery3d/app/w;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/w;->a(Lcom/android/gallery3d/app/w;Z)Z

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/cj;->yw:Lcom/android/gallery3d/app/w;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/android/gallery3d/app/cj;->yw:Lcom/android/gallery3d/app/w;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/w;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 125
    :cond_1
    return-void
.end method
