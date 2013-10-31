.class Lcom/android/gallery3d/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;


# instance fields
.field final synthetic ec:Lcom/android/gallery3d/app/dw;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/gallery3d/app/m;->ec:Lcom/android/gallery3d/app/dw;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 2
    .parameter

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/gallery3d/app/m;->ec:Lcom/android/gallery3d/app/dw;

    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ck;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/dw;->a(Lcom/android/gallery3d/app/dw;Lcom/android/gallery3d/app/ck;)Lcom/android/gallery3d/app/ck;

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/app/m;->ec:Lcom/android/gallery3d/app/dw;

    invoke-static {v0}, Lcom/android/gallery3d/app/dw;->d(Lcom/android/gallery3d/app/dw;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    return-void
.end method
