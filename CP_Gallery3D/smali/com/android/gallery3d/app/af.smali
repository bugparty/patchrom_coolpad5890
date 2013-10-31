.class Lcom/android/gallery3d/app/af;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic bT:Lcom/android/gallery3d/app/dq;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/dq;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/app/af;->bT:Lcom/android/gallery3d/app/dq;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/af;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->a(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/app/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/af;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->a(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/app/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ad;->H()V

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/af;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->a(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/app/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/af;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->a(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/app/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ad;->I()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
