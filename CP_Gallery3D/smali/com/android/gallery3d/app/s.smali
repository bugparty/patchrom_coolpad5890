.class Lcom/android/gallery3d/app/s;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic ec:Lcom/android/gallery3d/app/dw;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/dw;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/gallery3d/app/s;->ec:Lcom/android/gallery3d/app/dw;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/s;->ec:Lcom/android/gallery3d/app/dw;

    invoke-static {v0}, Lcom/android/gallery3d/app/dw;->b(Lcom/android/gallery3d/app/dw;)V

    .line 168
    :goto_0
    return-void

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/s;->ec:Lcom/android/gallery3d/app/dw;

    invoke-static {v0}, Lcom/android/gallery3d/app/dw;->c(Lcom/android/gallery3d/app/dw;)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
