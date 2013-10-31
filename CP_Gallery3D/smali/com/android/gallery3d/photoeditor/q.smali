.class Lcom/android/gallery3d/photoeditor/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lV:Lcom/android/gallery3d/photoeditor/ap;

.field final synthetic nt:Z

.field final synthetic nu:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ap;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/q;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iput-boolean p2, p0, Lcom/android/gallery3d/photoeditor/q;->nt:Z

    iput-boolean p3, p0, Lcom/android/gallery3d/photoeditor/q;->nu:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/q;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->b(Lcom/android/gallery3d/photoeditor/ap;)Lcom/android/gallery3d/photoeditor/bd;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/q;->nt:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/q;->nu:Z

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/bd;->d(ZZ)V

    .line 154
    return-void
.end method
