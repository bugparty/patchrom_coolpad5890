.class public Lcom/android/gallery3d/ui/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/cg;


# instance fields
.field private et:Lcom/android/gallery3d/app/bm;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/gallery3d/ui/ee;->et:Lcom/android/gallery3d/app/bm;

    .line 34
    return-void
.end method

.method private fV()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/all/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/b/e;->gw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/ee;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/da;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 55
    return-void
.end method


# virtual methods
.method public ax(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    return-void
.end method

.method public ay(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 38
    if-ne p1, v2, :cond_0

    .line 39
    const v0, 0x7f0d0098

    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ee;->fV()V

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/ee;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    return-void

    .line 42
    :cond_0
    const v0, 0x7f0d0099

    goto :goto_0
.end method
