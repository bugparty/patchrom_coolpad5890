.class Lcom/android/gallery3d/ui/er;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic BN:Lcom/android/gallery3d/ui/ap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/gallery3d/ui/er;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/er;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/ap;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/er;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->b(Lcom/android/gallery3d/ui/ap;)I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/er;->BN:Lcom/android/gallery3d/ui/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
