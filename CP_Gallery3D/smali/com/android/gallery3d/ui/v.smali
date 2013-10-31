.class Lcom/android/gallery3d/ui/v;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic gM:Lcom/android/gallery3d/ui/bk;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/bk;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/ui/v;->gM:Lcom/android/gallery3d/ui/bk;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/v;->gM:Lcom/android/gallery3d/ui/bk;

    invoke-static {v0}, Lcom/android/gallery3d/ui/bk;->a(Lcom/android/gallery3d/ui/bk;)V

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/cg;

    .line 108
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/cg;->ay(I)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/v;->gM:Lcom/android/gallery3d/ui/bk;

    invoke-static {v0}, Lcom/android/gallery3d/ui/bk;->b(Lcom/android/gallery3d/ui/bk;)Lcom/android/gallery3d/ui/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gr()V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/v;->gM:Lcom/android/gallery3d/ui/bk;

    invoke-static {v0}, Lcom/android/gallery3d/ui/bk;->c(Lcom/android/gallery3d/ui/bk;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/v;->gM:Lcom/android/gallery3d/ui/bk;

    invoke-static {v0}, Lcom/android/gallery3d/ui/bk;->c(Lcom/android/gallery3d/ui/bk;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 115
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/cg;

    .line 117
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/cg;->ax(I)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/v;->gM:Lcom/android/gallery3d/ui/bk;

    invoke-static {v0}, Lcom/android/gallery3d/ui/bk;->d(Lcom/android/gallery3d/ui/bk;)Lcom/android/gallery3d/app/bm;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
