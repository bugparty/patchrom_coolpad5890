.class Lcom/android/gallery3d/photoeditor/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic hn:Lcom/android/gallery3d/photoeditor/g;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/g;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/d;->hn:Lcom/android/gallery3d/photoeditor/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/d;->hn:Lcom/android/gallery3d/photoeditor/g;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/g;->a(Lcom/android/gallery3d/photoeditor/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/d;->hn:Lcom/android/gallery3d/photoeditor/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/g;->a(Lcom/android/gallery3d/photoeditor/g;Z)Z

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/d;->hn:Lcom/android/gallery3d/photoeditor/g;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/g;->b(Lcom/android/gallery3d/photoeditor/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 76
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/d;->hn:Lcom/android/gallery3d/photoeditor/g;

    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/g;->c(Lcom/android/gallery3d/photoeditor/g;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
