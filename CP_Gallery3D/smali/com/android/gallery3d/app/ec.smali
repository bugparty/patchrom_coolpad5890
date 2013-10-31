.class Lcom/android/gallery3d/app/ec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;


# instance fields
.field final synthetic He:Lcom/android/gallery3d/app/cd;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/app/ec;->He:Lcom/android/gallery3d/app/cd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/app/ec;->He:Lcom/android/gallery3d/app/cd;

    invoke-static {v0}, Lcom/android/gallery3d/app/cd;->b(Lcom/android/gallery3d/app/cd;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ec;->He:Lcom/android/gallery3d/app/cd;

    invoke-static {v1}, Lcom/android/gallery3d/app/cd;->b(Lcom/android/gallery3d/app/cd;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method
