.class Lcom/android/gallery3d/app/au;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic nR:Lcom/android/gallery3d/app/GifView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GifView;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/gallery3d/app/au;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 286
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 287
    iget-object v1, p0, Lcom/android/gallery3d/app/au;->nR:Lcom/android/gallery3d/app/GifView;

    iget-object v1, v1, Lcom/android/gallery3d/app/GifView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void
.end method
