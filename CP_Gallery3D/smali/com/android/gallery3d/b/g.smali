.class Lcom/android/gallery3d/b/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic hE:Lcom/android/gallery3d/b/f;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/b/f;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/b/g;->hE:Lcom/android/gallery3d/b/f;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/b/g;->hE:Lcom/android/gallery3d/b/f;

    invoke-static {v0}, Lcom/android/gallery3d/b/f;->a(Lcom/android/gallery3d/b/f;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 43
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 44
    return-void
.end method
