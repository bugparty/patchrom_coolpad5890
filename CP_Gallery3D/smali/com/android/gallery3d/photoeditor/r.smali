.class Lcom/android/gallery3d/photoeditor/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic jn:I

.field final synthetic nJ:Lcom/android/gallery3d/photoeditor/v;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/v;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/r;->nJ:Lcom/android/gallery3d/photoeditor/v;

    iput p2, p0, Lcom/android/gallery3d/photoeditor/r;->jn:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/r;->nJ:Lcom/android/gallery3d/photoeditor/v;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/v;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/r;->jn:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->a(Lcom/android/gallery3d/photoeditor/EffectsBar;I)V

    .line 65
    return-void
.end method
