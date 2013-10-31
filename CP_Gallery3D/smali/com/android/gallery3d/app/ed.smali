.class Lcom/android/gallery3d/app/ed;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic He:Lcom/android/gallery3d/app/cd;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/cd;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/gallery3d/app/ed;->He:Lcom/android/gallery3d/app/cd;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/ed;->He:Lcom/android/gallery3d/app/cd;

    invoke-static {v0}, Lcom/android/gallery3d/app/cd;->a(Lcom/android/gallery3d/app/cd;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/gallery3d/app/ed;->He:Lcom/android/gallery3d/app/cd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/app/bu;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/cd;->a(Lcom/android/gallery3d/app/cd;Lcom/android/gallery3d/app/bu;)V

    .line 70
    :goto_1
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ed;->He:Lcom/android/gallery3d/app/cd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/b/l;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/cd;->a(Lcom/android/gallery3d/app/cd;Lcom/android/gallery3d/b/l;)V

    goto :goto_1
.end method
