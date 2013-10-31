.class Lcom/android/gallery3d/photoeditor/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lV:Lcom/android/gallery3d/photoeditor/ap;

.field final synthetic lW:Lcom/android/gallery3d/photoeditor/be;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/m;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/m;->lW:Lcom/android/gallery3d/photoeditor/be;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/m;->lW:Lcom/android/gallery3d/photoeditor/be;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/be;->dc()V

    .line 141
    return-void
.end method
