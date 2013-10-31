.class Lcom/android/gallery3d/app/v;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic o:Lcom/android/gallery3d/app/c;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/gallery3d/app/v;->o:Lcom/android/gallery3d/app/c;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/v;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/app/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/v;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/app/cx;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/cx;->H()V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/v;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/app/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/v;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/app/cx;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/cx;->I()V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
