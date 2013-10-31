.class Lcom/android/gallery3d/gadget/e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic Cg:Lcom/android/gallery3d/gadget/a;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/gadget/a;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/gadget/e;->Cg:Lcom/android/gallery3d/gadget/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/gadget/e;->Cg:Lcom/android/gallery3d/gadget/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/gadget/a;->a(Lcom/android/gallery3d/gadget/a;Z)Z

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/gadget/e;->Cg:Lcom/android/gallery3d/gadget/a;

    invoke-static {v0}, Lcom/android/gallery3d/gadget/a;->a(Lcom/android/gallery3d/gadget/a;)Lcom/android/gallery3d/a/an;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/gadget/e;->Cg:Lcom/android/gallery3d/gadget/a;

    invoke-static {v0}, Lcom/android/gallery3d/gadget/a;->a(Lcom/android/gallery3d/gadget/a;)Lcom/android/gallery3d/a/an;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/a/an;->aW()V

    .line 75
    :cond_0
    return-void
.end method
