.class Lcom/android/gallery3d/app/ds;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic EA:Lcom/android/gallery3d/app/dd;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/dd;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/gallery3d/app/ds;->EA:Lcom/android/gallery3d/app/dd;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ds;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0}, Lcom/android/gallery3d/app/dd;->i(Lcom/android/gallery3d/app/dd;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ds;->EA:Lcom/android/gallery3d/app/dd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/dd;->a(Lcom/android/gallery3d/app/dd;Z)Z

    .line 221
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/ds;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/app/ds;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0}, Lcom/android/gallery3d/app/dd;->j(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/ui/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->requestLayout()V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
