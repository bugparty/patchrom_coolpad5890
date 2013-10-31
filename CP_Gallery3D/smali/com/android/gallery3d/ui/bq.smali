.class Lcom/android/gallery3d/ui/bq;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic sF:Lcom/android/gallery3d/ui/dc;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/dc;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/gallery3d/ui/bq;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/eg;

    invoke-static {v0}, Lcom/android/gallery3d/ui/eg;->a(Lcom/android/gallery3d/ui/eg;)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/bq;->sF:Lcom/android/gallery3d/ui/dc;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/dc;->a(Lcom/android/gallery3d/ui/dc;I)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
