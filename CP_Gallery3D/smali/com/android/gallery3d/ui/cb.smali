.class Lcom/android/gallery3d/ui/cb;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic en:Lcom/android/gallery3d/ui/dw;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/dw;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/gallery3d/ui/cb;->en:Lcom/android/gallery3d/ui/dw;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/dv;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dv;->a(Lcom/android/gallery3d/ui/dv;)V

    .line 97
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
